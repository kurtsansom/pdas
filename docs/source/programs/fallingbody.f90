! PROGRAM FallingBody
! PURPOSE - Calculate the vertical trajectory of a sphere with air drag.
! AUTHOR - Ralph L. Carmichael, Public Domain Aeronautical Software


! Falling object in Earth atmosphere

!     REVISION HISTORY
!   DATE  VERS PERSON  STATEMENT OF CHANGES
! 08Feb10  1.0   RLC   Copied from the old baseball routine
! 01Aug12  1.1   RLC   Reorganized into modules. Changed 2D to 1D
! 09Aug12  1.2   RLC   Added plotting subroutines
! 30Sep12  1.3   RLC   Made separate program without plotting

!!!INCLUDE 'figmods3.f90'

!+
MODULE GlobalConstantsAndProcedures
! ------------------------------------------------------------------------------
! PURPOSE - Hold the global constants for the program
IMPLICIT NONE

  INTEGER,PRIVATE,PARAMETER:: SP = SELECTED_REAL_KIND(6)
  INTEGER,PRIVATE,PARAMETER:: DP = SELECTED_REAL_KIND(14)
  INTEGER,PUBLIC,PARAMETER:: WP = DP


!... Mathematical constants...
  REAL(WP),PARAMETER:: ZERO=0.0_WP, ONE=1.0_WP, TWO=2.0_WP, HALF=ONE/TWO
  REAL(WP),PARAMETER:: THREE=3.0_WP, FOUR=4.0_WP

  REAL(WP),PARAMETER:: PI = 3.141592653589793238462643383279502884197_WP
  REAL(WP),PARAMETER:: HALFPI=PI/TWO, TWOPI=TWO*PI, PI4=PI/FOUR
  REAL(WP),PARAMETER:: DEG2RAD=PI/180
  REAL(WP),PARAMETER:: RAD2DEG=180/PI

! The standard assumes a spherical earth. From the actual dimensions of the
! ellipsoidal approximation of the earth, one may choose various values for the
! single value of REARTH. Here, the value of POLAR_RADIUS is chosen because 
! that is what was used for the tables in the big yellow book.
  REAL(WP),PARAMETER,PRIVATE:: POLAR_RADIUS = 6356.766  ! also have seen 6356.7523
  REAL(WP),PARAMETER,PRIVATE:: EQUATORIAL_RADIUS = 6378.1370
  REAL(WP),PARAMETER,PRIVATE:: RADIUS_AT_45DEG_LAT = 6367.4895
  REAL(WP),PARAMETER,PRIVATE:: AUTHALIC_RADIUS = 6371.0012    ! same surface area
  REAL(WP),PARAMETER,PRIVATE:: VOLUMETRIC_RADIUS = 6371.0008  ! same volume
! the next line is where you decide what value to use for the radius of the earth
  REAL(WP),PARAMETER:: REARTH = POLAR_RADIUS          ! radius of the Earth (km)
  REAL(WP),PARAMETER:: REARTH_METERS = 1000*REARTH


  REAL(WP),PARAMETER:: GZERO = 9.80665             !  accel. of gravity, m/sec^2
  REAL(WP),PARAMETER:: TZERO = 288.15               ! temperature at sealevel, K
  REAL(WP),PARAMETER:: PZERO = 101325.0           ! pressure at sealevel, N/sq.m
  REAL(WP),PARAMETER:: RHOZERO = 1.2250           ! density at sealevel, kg/cu.m
  REAL(WP),PARAMETER:: RSTAR = 8314.32      ! perfect gas constant, N-m/(kmol-K)
  REAL(WP),PARAMETER:: ASOUNDZERO = 340.294    ! speed of sound at sealevel, m/s
  REAL(WP),PARAMETER:: MZERO = 28.9644     ! molecular weight of air at sealevel

! The constant GMR (gravity times molecular weight divided by gas constant) has
!  units of kelvins per meter. Since I have coded the atmosphere routines to
!  use altitude in kilometers rather than meters, the factor of 1000 is needed
!  so that GMR will have units of kelvins per kilometer.
  REAL(WP),PARAMETER:: GMR = 1000*GZERO*MZERO/RSTAR
!  REAL(WP),PARAMETER:: GMR = 34.163195                   ! hydrostatic constant

  PUBLIC:: FillArray, GetDateTimeStr
!-------------------------------------------------------------------------------
CONTAINS

!+
SUBROUTINE FillArray(startValue,endValue, array, spacingCode)
! ---------------------------------------------------------------------------
! PURPOSE - fill an array from start to end. The intermediate points are
!    computed according to various spacing rules. Single Precision Version.

  REAL(WP),INTENT(IN):: startValue,endValue
  REAL(WP),INTENT(OUT),DIMENSION(:):: array
  INTEGER,INTENT(IN),OPTIONAL:: spacingCode
                              ! =2 full cosine
                              ! =3 half cosine
                              ! =4 half sine
                              ! anything else (or nothing)= uniform spacing
  INTEGER:: k,n
!  REAL(WP),PARAMETER:: HALF = 0.5, ONE = 1.0
!  REAL(WP),PARAMETER:: PI=3.14159265, HALFPI=HALF*PI
  REAL(WP),ALLOCATABLE,DIMENSION(:):: temp
!----------------------------------------------------------------------------
  n=SIZE(array)
  IF (n <= 0) RETURN

  array(n)=endValue
  array(1)=startValue
  IF (n <= 2) RETURN

  ALLOCATE(temp(n-2))
  temp= (/ (REAL(k), k=1,n-2) /)         ! implied do-loop on right-hand side
  temp=temp/REAL(n-1)                                 ! very little round-off

  IF (Present(spacingCode)) THEN
    SELECT CASE(spacingCode)
      CASE (2)
        temp=HALF*(ONE-COS(PI*temp))       ! full cosine, dense near both ends
      CASE (3)
        temp=ONE-COS(HALFPI*temp)             ! half cosine, dense near start
      CASE (4)
        temp=SIN(HALFPI*temp)                     ! half sine, dense near end
    END SELECT
  END IF

  array(2:n-1)=startValue + (endValue-startValue)*temp

  DEALLOCATE(temp)
  RETURN
END Subroutine FillArray   ! ---------------------------------------------------


!+
FUNCTION GetDateTimeStr() RESULT(s)
! ------------------------------------------------------------------------------
! PURPOSE - Return a 15 character string with the current date and time.
!   You can change the first I2.2 below to I2 if you don't like a leading
!   zero on early morning times, i.e., 6:45 instead of 06:45
  IMPLICIT NONE
  CHARACTER(LEN=*),PARAMETER:: MONTH='JanFebMarAprMayJunJulAugSepOctNovDec'
  CHARACTER(LEN=*),PARAMETER:: FMT = '(I2.2,A1,I2.2,I3,A3,I4)'
  CHARACTER(LEN=15):: s
  INTEGER,DIMENSION(8):: v
  INTRINSIC:: DATE_AND_TIME
!-------------------------------------------------------------------------------
  CALL DATE_AND_TIME(VALUES=v)

  WRITE(s,FMT) v(5), ':', v(6), v(3), MONTH(3*v(2)-2:3*v(2)), v(1)
  RETURN
END FUNCTION GetDateTimeStr   ! ------------------------------------------------




END Module GlobalConstantsAndProcedures   ! ====================================

!+
MODULE Atmosphere1976
! ------------------------------------------------------------------------------
! PURPOSE - Compute properties of the U.S. Standard Atmosphere 1976
! AUTHORS - Steven S. Pietrobon, Small World
!           Ralph L. Carmichael, Public Domain Aeronautical Software

! NOTES - The procedures for the lower atmosphere (Z<86km) are coded from
! the hydrostatic equations and the temperature function defined by the
! standard. The upper atmosphere (Z>86km) properties are
!
!     REVISION HISTORY
!   DATE  VERS PERSON  STATEMENT OF CHANGES
! 28Feb95  0.1   RLC   Assembled several old codes
!  1Aug00  0.2   RLC   Copied from old Tables76
! 23Aug00  0.3   RLC   Added NitrogenNumber using QUANC8 (later removed)
! 24Aug00  0.4   RLC   Added KineticTemperatureGradient
! 30Aug00  0.5   RLC   Corrected numerous errors
! 30Dec00  0.6   RLC   Adapted UpperAtmosphere from Pietrobon's Unofficial
!                        Australian Standard Atmosphere
! 31Oct11  0.7   RLC   Added SP,DP,WP to check precision
!-------------------------------------------------------------------------------
USE GlobalConstantsAndProcedures
IMPLICIT NONE
  CHARACTER(LEN=*),PUBLIC,PARAMETER:: ATM76_VERSION = "0.7 (31 October 2011)"



CONTAINS

!+
PURE FUNCTION EvaluateCubic(a,fa,fpa, b,fb,fpb, u) RESULT(fu)
! ---------------------------------------------------------------------------
! PURPOSE - Evaluate a cubic polynomial defined by the function and the
!   1st derivative at two points
  REAL(WP),INTENT(IN):: u   ! point where function is to be evaluated
  REAL(WP),INTENT(IN):: a,fa,fpa   ! a, f(a), f'(a)  at first point
  REAL(WP),INTENT(IN):: b,fb,fpb   ! b, f(b), f'(b)  at second point
  REAL(WP):: fu                    ! computed value of f(u)

  REAL:: d,t,p
!----------------------------------------------------------------------------
  d=(fb-fa)/(b-a)
  t=(u-a)/(b-a)
  p=ONE-t

  fu = p*fa + t*fb - p*t*(b-a)*(p*(d-fpa)-t*(d-fpb))
  RETURN
END Function EvaluateCubic   ! ----------------------------------------------

!+
PURE FUNCTION KineticTemperature(z) RESULT(t)
!   -------------------------------------------------------------------------
! PURPOSE - Compute kinetic temperature above 86 km. The equations are from
!  Section 2.2.4 on p.29. The elliptic segment from 91 to 110 km is coded
!  from the equations in Appendix B, page 223.

  REAL(WP),INTENT(IN)::  z     ! geometric altitude, km.                        
  REAL(WP):: t     ! kinetic temperature, K

  REAL(WP),PARAMETER:: ONE = 1.0_WP
  REAL(WP),PARAMETER:: C1 = -76.3232  ! uppercase A in document
  REAL(WP),PARAMETER:: C2 = 19.9429   ! lowercase a in document
  REAL(WP),PARAMETER:: C3 = 12.0
  REAL(WP),PARAMETER:: C4 = 0.01875   ! lambda in document
  REAL(WP),PARAMETER:: TC = 263.1905

! TABLE 5 - DEFINITION OF KINETIC TEMPERATURE FROM 86 km to 1000 km
  REAL(WP),PARAMETER:: Z7 =  86.0,  T7=186.8673
  REAL(WP),PARAMETER:: z8 =  91.0,  T8=T7
  REAL(WP),PARAMETER:: Z9 = 110.0,  T9=240.0
  REAL(WP),PARAMETER:: Z10= 120.0, T10=360.0
!  REAL(WP),PARAMETER:: Z11= 500.0, T11=999.2356   ! not used
  REAL(WP),PARAMETER:: Z12=1000.0, T12=1000.0


  REAL(WP):: xx,yy
!----------------------------------------------------------------------------
  IF (z <= Z8) THEN
    t=T7
  ELSE IF (z < Z9) THEN  
    xx=(z-Z8)/C2                        ! from Appendix B, p.223
    yy=SQRT(ONE-xx*xx)
    t=TC+C1*yy
  ELSE IF (z <= Z10) THEN
    t=T9+C3*(z-Z9)
  ELSE IF (z <= Z12) THEN
    xx=(REARTH+Z10)/(REARTH+z)
    yy=(T12-T10)*EXP(-C4*(z-Z10)*xx)
    t=T12-yy
  ELSE
    t=T12
  END IF

  RETURN
END Function KineticTemperature   ! --------------------------------------------


!+
SUBROUTINE UpperAtmosphere(alt, sigma, delta, theta)
!   ----------------------------------------------------------------------------
! PURPOSE - Compute the properties of the 1976 standard atmosphere from
!   86 km. to 1000 km.
! NOTE - The results for pressure and density are approximate and are
!   computed from a curve fit of selected points from the more precise
!   program ussa1976.

IMPLICIT NONE
  REAL(WP),INTENT(IN)::  alt    ! geometric altitude, km.                        
  REAL(WP),INTENT(OUT):: sigma  ! density/sea-level standard density              
  REAL(WP),INTENT(OUT):: delta  ! pressure/sea-level standard pressure           
  REAL(WP),INTENT(OUT):: theta  ! temperature/sea-level standard temperature

  INTEGER,PARAMETER:: NTABLE = 25

! altitude table (km)
  REAL(WP),PARAMETER,DIMENSION(NTABLE):: Z = (/      &
     86.0,  93.0, 100.0, 107.0, 114.0, &
    121.0, 128.0, 135.0, 142.0, 150.0, &
    160.0, 170.0, 180.0, 190.0, 200.0, &
    220.0, 260.0, 300.0, 400.0, 500.0, &
    600.0, 700.0, 800.0, 900.0,1000.0 /)

! pressure table  (DELTA = P/P0)
  REAL(WP),PARAMETER,DIMENSION(SIZE(Z)):: DELTA_TABLE = (/       &
    3.6850E-6,  1.0660E-6,  3.1593E-7,  1.0611E-7,  4.3892E-8,   &
    2.3095E-8,  1.3997E-8,  9.2345E-9,  6.4440E-9,  4.4828E-9,   &
    2.9997E-9,  2.0933E-9,  1.5072E-9,  1.1118E-9,  8.3628E-10,  &
    4.9494E-10, 1.9634E-10, 8.6557E-11, 1.4328E-11, 2.9840E-12,  &
    8.1056E-13, 3.1491E-13, 1.6813E-13, 1.0731E-13, 7.4155E-14 /)
    

! density table  (SIGMA = RHO/RHO0)
  REAL(WP),PARAMETER,DIMENSION(SIZE(Z)):: SIGMA_TABLE = (/   &
    5.680E-6,  1.632E-6,  4.575E-7,  1.341E-7,  4.061E-8,    &
    1.614E-8,  7.932E-9,  4.461E-9,  2.741E-9,  1.694E-9,    &
    1.007E-9,  6.380E-10, 4.240E-10, 2.923E-10, 2.074E-10,   &
    1.116E-10, 3.871E-11, 1.564E-11, 2.288E-12, 4.257E-13,   &
    9.279E-14, 2.506E-14, 9.272E-15, 4.701E-15, 2.907E-15 /)
    
! some older Fortran compilers will not accept the following 2 lines    
  REAL(WP),PARAMETER,DIMENSION(SIZE(Z)):: LOGDELTA = LOG(DELTA_TABLE)
  REAL(WP),PARAMETER,DIMENSION(SIZE(Z)):: LOGSIGMA = LOG(SIGMA_TABLE)

  REAL(WP),PARAMETER,DIMENSION(SIZE(Z)):: DLOGDELTA = (/     & 
    -0.174061, -0.177924, -0.167029, -0.142755, -0.107859,   &
    -0.079322, -0.064664, -0.054879, -0.048260, -0.042767,   &
    -0.037854, -0.034270, -0.031543, -0.029384, -0.027632,   &
    -0.024980, -0.021559, -0.019557, -0.016735, -0.014530,   &
    -0.011314, -0.007677, -0.005169, -0.003944, -0.003612 /)
  REAL(WP),PARAMETER,DIMENSION(SIZE(Z)):: DLOGSIGMA = (/     & 
    -0.172421, -0.182258, -0.178090, -0.176372, -0.154322,   &
    -0.113750, -0.090582, -0.075033, -0.064679, -0.056067,   &
    -0.048461, -0.043042, -0.038869, -0.035648, -0.033063,   &
    -0.029164, -0.024220, -0.021336, -0.017686, -0.016035,   &
    -0.014327, -0.011631, -0.008248, -0.005580, -0.004227 /)

  INTEGER:: i,j,k                                                  ! counters

!-------------------------------------------------------------------------------

  IF (alt >= Z(SIZE(Z))) THEN          ! trap altitudes greater than 1000 km.
    delta=7.42E-14                     ! ~value at 1000 km
    sigma=2.907E-15                    ! ~value at 1000 km
    theta=1000.0/TZERO                 ! value at 1000 km
    RETURN
  END IF

  i=1 
  j=SIZE(Z)                                    ! setting up for binary search
  DO
    k=(i+j)/2                                              ! integer division
    IF (alt < Z(k)) THEN
      j=k
    ELSE
      i=k
    END IF   
    IF (j <= i+1) EXIT
  END DO

  delta=EXP(EvaluateCubic(Z(i), LOGDELTA(i),   DLOGDELTA(i),          &
                        Z(i+1), LOGDELTA(i+1), DLOGDELTA(i+1), alt))

  sigma=EXP(EvaluateCubic(Z(i), LOGSIGMA(i),   DLOGSIGMA(i),          &
                        Z(i+1), LOGSIGMA(i+1), DLOGSIGMA(i+1), alt))

  theta=KineticTemperature(alt)/TZERO
  RETURN
END Subroutine UpperAtmosphere   ! ---------------------------------------------


!+
SUBROUTINE LowerAtmosphere(alt, sigma, delta, theta)
!   ----------------------------------------------------------------------------
! PURPOSE - Compute the properties of the 1976 standard atmosphere to 86 km.

  REAL(WP),INTENT(IN)::  alt    ! geometric altitude, km.                        
  REAL(WP),INTENT(OUT):: sigma  ! density/sea-level standard density              
  REAL(WP),INTENT(OUT):: delta  ! pressure/sea-level standard pressure           
  REAL(WP),INTENT(OUT):: theta  ! temperature/sea-level standard temperature

  INTEGER,PARAMETER:: NTAB=8          ! number of entries in the defining tables
  INTEGER:: i,j,k                                                     ! counters
  REAL(WP):: h                                      ! geopotential altitude (km)
  REAL(WP):: tgrad, tbase     ! temperature gradient and base temp of this layer
  REAL(WP):: tlocal                                          ! local temperature
  REAL(WP):: deltah                            ! height above base of this layer

  REAL(WP),DIMENSION(NTAB),PARAMETER:: htab= &
                          (/0.0, 11.0, 20.0, 32.0, 47.0, 51.0, 71.0, 84.852/)
  REAL(WP),DIMENSION(NTAB),PARAMETER:: ttab= &
          (/288.15, 216.65, 216.65, 228.65, 270.65, 270.65, 214.65, 186.946/)
  REAL(WP),DIMENSION(NTAB),PARAMETER:: ptab= &
               (/1.0, 2.233611E-1, 5.403295E-2, 8.5666784E-3, 1.0945601E-3, &
                                     6.6063531E-4, 3.9046834E-5, 3.68501E-6/)
  REAL(WP),DIMENSION(NTAB),PARAMETER:: gtab= &
                                (/-6.5, 0.0, 1.0, 2.8, 0.0, -2.8, -2.0, 0.0/)
!-------------------------------------------------------------------------------
  h=alt*REARTH/(alt+REARTH)      ! convert geometric to geopotential altitude

  i=1 
  j=NTAB                                  ! setting up for binary search
  DO
    k=(i+j)/2                                              ! integer division
    IF (h < htab(k)) THEN
      j=k
    ELSE
      i=k
    END IF   
    IF (j <= i+1) EXIT
  END DO

  tgrad=gtab(i)                                     ! i will be in 1...NTAB-1
  tbase=ttab(i)
  deltah=h-htab(i)
  tlocal=tbase+tgrad*deltah
  theta=tlocal/ttab(1)                                    ! temperature ratio

  IF (tgrad == 0.0) THEN                                     ! pressure ratio
    delta=ptab(i)*EXP(-GMR*deltah/tbase)
  ELSE
    delta=ptab(i)*(tbase/tlocal)**(GMR/tgrad)
  END IF

  sigma=delta/theta                                           ! density ratio
  RETURN
END Subroutine LowerAtmosphere   ! ---------------------------------------------


!+
PURE FUNCTION Viscosity(theta) RESULT(visc)
! ------------------------------------------------------------------------------
! PURPOSE - Compute dynamic viscosity using Sutherland's formula.
!        Returns viscosity in kg/(meter-sec)

  REAL(WP),INTENT(IN) :: theta               ! temperature/sea-level temperature
  REAL(WP):: visc
  REAL(WP):: temp                                       ! temperature in kelvins
  REAL(WP),PARAMETER:: BETAVISC = 1.458E-6   ! viscosity term, N s/(sq.m sqrt(K)
  REAL(WP),PARAMETER:: SUTH = 110.4                   ! Sutherland's constant, K
!-------------------------------------------------------------------------------
  temp=TZERO*theta
  visc=BETAVISC*Sqrt(temp*temp*temp)/(temp+SUTH)
  RETURN
END Function Viscosity   ! -----------------------------------------------------

!+
SUBROUTINE Atmosphere(alt,sigma,delta,theta)
! ------------------------------------------------------------------------------
! PURPOSE - Compute the characteristics of the U.S. Standard Atmosphere 1976

  IMPLICIT NONE
  REAL(WP),INTENT(IN)::  alt    ! geometric altitude, km.
  REAL(WP),INTENT(OUT):: sigma  ! density/sea-level standard density             
  REAL(WP),INTENT(OUT):: delta  ! pressure/sea-level standard pressure            
  REAL(WP),INTENT(OUT):: theta  ! temperature/sea-level standard temperature   
!-------------------------------------------------------------------------------
  IF (alt > 86.0) THEN
    CALL UpperAtmosphere(alt,sigma,delta,theta)
  ELSE
    CALL LowerAtmosphere(alt,sigma,delta,theta)
  END IF
  RETURN
END Subroutine Atmosphere   ! --------------------------------------------------

END Module Atmosphere1976   ! ==================================================

!+
MODULE AerodynamicProcedures
! ------------------------------------------------------------------------------
! PURPOSE - Contain procedures for computing aerodynamic forces on various
!  bodies.
USE GlobalConstantsAndProcedures
! USE Atmosphere1976
IMPLICIT NONE

  PUBLIC:: CdSphere, CdSearsHaack
!-------------------------------------------------------------------------------
CONTAINS


!+
PURE FUNCTION CdSphere(reynolds,mach) RESULT(d)
! ------------------------------------------------------------------------------
! PURPOSE - Compute the drag coefficient of a sphere as a function of
!   Reynolds number and Mach number.
!   Taken from Chow, "Computational Aerodynamics"
  REAL(WP),INTENT(IN):: reynolds   ! Reynolds number
  REAL(WP),INTENT(IN):: mach       ! Mach number
  REAL(WP):: d              ! drag coefficient based on cross-section area
!-------------------------------------------------------------------------------
! first, the incompressible drag
  IF (reynolds <= 0) THEN
    d=0
  ELSE IF (reynolds <= 1.0) THEN
    d=24.0/reynolds
  ELSE IF (reynolds <= 400.0) THEN
    d=24*reynolds**(-0.646)
  ELSE IF (reynolds <= 3E5) THEN
    d=0.5
  ELSE IF (reynolds <= 2E6) THEN
    d=3.66E-4*reynolds**0.4275
  ELSE
    d=0.18
  END IF

! add in some wave drag if needed...
  IF (mach >= ONE) THEN
    d=d+ONE
  ELSE IF (mach > 0.6_WP) THEN
    d=d + HALF*(SIN(HALFPI*(mach-0.8_WP)/0.2_WP)+ONE)
  END IF  ! note that mach <= 0.6 implies zero wave drag

  RETURN
END Function CdSphere   ! ------------------------------------------------------

!+
FUNCTION CDSearsHaack(ld,reynolds,mach) RESULT(cd)
! ------------------------------------------------------------------------------
! PURPOSE - Compute the combined skin friction drag and wave drag for a
!  Sears-Haack (L-V) body
  REAL(WP),INTENT(IN):: ld  ! ratio of length to diameter
  REAL(WP),INTENT(IN):: reynolds   ! Reynolds number
  REAL(WP),INTENT(IN):: mach   ! Mach number
  
  REAL(WP):: cd
!-------------------------------------------------------------------------------
  cd=ZERO   ! I will get to this real soon now...
  RETURN
END Function CDSearsHaack   ! --------------------------------------------------  


END Module AerodynamicProcedures   ! ===========================================

!+
MODULE FallingObjectAuxiliary
! ------------------------------------------------------------------------------
! PURPOSE - Perform the trajectory calculations for a body falling under the
! influence of gravity with air resistance in the standard atmosphere.
! NOTES - All dimensions are in SI units, altitude being in meters.
!   Remember to divide altitude by 1000 before calling subroutine Atmosphere
!   because it expects altitude in kilometers.
USE Atmosphere1976
USE AerodynamicProcedures
IMPLICIT NONE

  TYPE:: TrajectoryPoint
    REAL(WP):: time, altitude, velocity, acceleration
  END TYPE TrajectoryPoint




! GLOBAL VARIABLES: (these will probably be set by the main program, but some
! default values are given, just in case
  CHARACTER (LEN=15) :: dateTimeStr = '               '  ! current date and time
  REAL(WP):: sref=ONE   ! reference area, square meters
  REAL(WP):: lref=ONE   ! reference length, meters
  REAL(WP):: mass=ONE  ! mass in kg




  PRIVATE:: Accel
  PRIVATE:: RungeKutta 
  PUBLIC :: Trajectory

CONTAINS

!+
FUNCTION Accel(time, altitude, velocity) RESULT(acceleration)      ! not PURE
! ---------------------------------------------------------------------------
! PURPOSE - Compute the acceleration for an object moving vertically through 
!  the Earth's atmosphere.  Ignore added mass term.
! NOTE - altitude has units of meters, but first argument to LowerAtmosphere
!   is in kilometers. Be sure to remember to multiply by 0.001
! NOTE - Be careful; velocity and acceleration are positive upwards and
!   negative downwards. Falling body has negative velocity and drag is
!   positive because it is upwards; gravity force is negative.

  REAL(WP),INTENT(IN):: time
  REAL(WP),INTENT(IN):: altitude   ! meters
  REAL(WP),INTENT(IN):: velocity   ! if object is falling, velocity is negative

  REAL:: acceleration    ! positive upwards, negative downwards

  CHARACTER(LEN=*),PARAMETER:: FMT = &
    '(F7.1, F9.1, F9.2, F9.0, ES9.1E1, F6.3, F7.4, F9.1, F9.3, F9.4)'

  REAL(WP):: asound
  REAL(WP):: cd
  REAL(WP):: density
  REAL(WP):: drag
  REAL(WP):: dragMagnitude
  REAL(WP):: mach
  REAL(WP):: q      ! dynamic pressure
  REAL(WP):: reynolds
  REAL(WP):: sigma,delta,theta
!-------------------------------------------------------------------------------
  CALL Atmosphere(0.001_WP*altitude, sigma,delta,theta )
                                        ! first arg is altitude in kilometers
  density=sigma*RHOZERO
  q=HALF*density*(velocity**2)
  reynolds=density*ABS(velocity)*LREF/Viscosity(theta)
  asound=ASOUNDZERO*SQRT(theta)
  mach=ABS(velocity)/asound
  cd=CdSphere(reynolds,mach)
  drag=-cd*q*SREF*SIGN(ONE,velocity) ! downward V gives positive drag
  acceleration=drag/MASS - GZERO*(REARTH_METERS/(altitude+REARTH_METERS))**2
!  acceleration=drag/mass - GZERO   ! try it b
!    WRITE(DBG, FMT) time, altitude, &
!     velocity, q, reynolds, mach, cd, drag, acceleration/GZERO, mass
  RETURN
END Function Accel   ! ---------------------------------------------------------

!+
SUBROUTINE AdjustFinalPoint(a,b)
! ------------------------------------------------------------------------------
! PURPOSE - Adjust the final point so that it corresponds to altitude==0
  TYPE(TrajectoryPoint),INTENT(IN):: a  ! the next-to-last point
  TYPE(TrajectoryPoint),INTENT(IN OUT):: b  ! the last point

  REAL(WP):: frac
!-------------------------------------------------------------------------------
  frac=a%altitude / (a%altitude - b%altitude)

  b%time = a%time + frac*(b%time-a%time)
  b%altitude = ZERO
  b%velocity = a%velocity + frac*(b%velocity - a%velocity)
  b%acceleration = a%acceleration + frac*(b%acceleration - a%acceleration)

  RETURN
END Subroutine AdjustFinalPoint   ! --------------------------------------------

!+
SUBROUTINE SetObjectCharacteristics(objectCode, newMass, newLref, newSref)
! ------------------------------------------------------------------------------
! PURPOSE - Set the object characteristics. Several sample object are coded.
!  In addition to the sports balls, there is a sphere with the same mass and
!  density as a large human. Also, two famous meteors if you should want to 
!  make some estimates of truly large items falling to earth.
  INTEGER,INTENT(IN):: objectCode   ! =1 for baseball
                                    ! =2 for golf ball
                                    ! =3 for bowling ball
                                    ! =4 for ping-pong ball
                                    ! =5 for BB
                                    ! =6 for human sphere
                                    ! =7 for Tunguska meteor
                                    ! =8 for Chicxulub meteor
                                    ! = anything else for custom 
  REAL(WP),OPTIONAL:: newMass, newLref, newSref
  

!-------------------------------------------------------------------------------
  SELECT CASE(objectCode)
    CASE(1)   ! baseball  circumference 9.125 in; weight 5.25 oz
      mass =  0.149   ! kilograms     
      lref =  0.0738  ! meters
    CASE(2)   ! golf ball:  45.93 g   diameter 1.680 in 
      mass = 0.04593   ! kilograms
      lref = 0.0427  ! meters
    CASE(3)   ! bowling ball   16 pounds
      mass = 7.26  ! kg
      lref = 0.21  ! meters
    CASE(4)   ! ping-pong ball, 2.7 g, 40 mm.
      mass = 0.0027  ! kg
      lref = 0.04  ! meters
    CASE(5)   ! BB  4.35mm  0.2 g
      mass = 0.0002  ! kg
      lref = 0.00435  ! meters
    CASE(6)   ! sphere with same mass and density as a human with flight gear
              ! assume density same as water
      mass = 118.0   ! kilograms  (from Red Bull)
      lref = 0.609   ! meters
    CASE(7)   ! estimated size of the Russian 1906 Tunguska meteor
      mass = 3E9   ! kilograms
      lref= 100.0  ! meters
    CASE(8)   ! estimated size of the Yucutan Chicxulub meteor 
      mass = 2E15   ! kilograms
      lref= 10000.0 ! meters
  END SELECT
  
  sref=(PI/4)*lref**2  

  IF (PRESENT(newMass)) mass=newMass
  IF (PRESENT(newLref)) lref=newLref
  IF (PRESENT(newSref)) sref=NewSref

  RETURN
END Subroutine SetObjectCharacteristics   ! -----------------------------------    
      
!+
SUBROUTINE SetTrajectoryParameters(altZero, vZero, timeStep)
! ------------------------------------------------------------------------------
! PURPOSE - Enter new values of the initial conditions and time step
  REAL(WP),INTENT(IN),OPTIONAL:: altZero, vZero, timeStep
  
!-------------------------------------------------------------------------------
!  IF (PRESENT(altZero)) initialAltitude = altZero
!  IF (PRESENT(vZero)) initialVelocity = vZero
!  IF (PRESENT(timeStep)) dt = timeStep
  
  RETURN
END Subroutine SetTrajectoryParameters   ! -------------------------------------    

!+
SUBROUTINE RungeKutta(p1, h, p2)
! ---------------------------------------------------------------------------
! PURPOSE - Advance one time-like step in a trajectory. This is a system
!  of two first order ordinary differential equations with variables altitude
!  and velocity. The variable of type TrajectoryPoint also includes
!  acceleration, so there is an extra call to function Accel after the 
!  calculation of the altitude and velocity at the new trajectory point.
!  These values of p2%acceleration are never used in the calculation. They
!  are only there so that we may have a history of the variation of net
!  acceleration during the trajectory computation.
!  Use fourth-order Runge-Kutta equations to advance one time step.

  TYPE(TrajectoryPoint),INTENT(IN):: p1   ! current position
  REAL(WP),INTENT(IN):: h                 ! step to be taken in time
  TYPE(TrajectoryPoint),INTENT(OUT):: p2  ! next position

  REAL(WP),PARAMETER:: HALF=0.5_WP, SIXTH=ONE/6.0_WP

  REAL(WP):: t
  REAL(WP):: x,v,a
  REAL(WP):: dx1,dx2,dx3,dx4
  REAL(WP):: dv1,dv2,dv3,dv4
!----------------------------------------------------------------------------
  t=p1%time
  x=p1%altitude
  v=p1%velocity

  a=Accel(t, x, v)
  dx1 = h*v
  dv1 = h*a 

  a=Accel(t+HALF*h, x+HALF*dx1, v+HALF*dv1)
  dx2 = h*(v + HALF*dv1)
  dv2 = h*a
  
  a=Accel(t+HALF*h, x+HALF*dx2, v+HALF*dv2)
  dx3 = h*(v + HALF*dv2)
  dv3 = h*a 

  a=Accel(t+h, x+dx3, v+dv3)
  dx4 = h*(v + dx3)
  dv4 = h*a

  p2%time = t + h
  p2%altitude = p1%altitude + SIXTH*(dx1+dx2+dx2+dx3+dx3+dx4)
  p2%velocity = p1%velocity + SIXTH*(dv1+dv2+dv2+dv3+dv3+dv4)

  p2%acceleration=Accel(p2%time, p2%altitude, p2%velocity)

  RETURN
END SUBROUTINE RungeKutta   ! --------------------------------------------

!+
SUBROUTINE Trajectory(initialAltitude, initialVelocity,  &
  dt, npts, history)
! ------------------------------------------------------------------------------
! PURPOSE - Compute a trajectory, performing numerical solution of a set of
!   ordinary differential equations with a fixed time step. Halt the
!   calculation when the altitude goes negative.

  REAL(WP),INTENT(IN):: initialAltitude
  REAL(WP),INTENT(IN):: initialVelocity   ! up is positive; down is negative
  REAL(WP),INTENT(IN):: dt   ! computational time interval (constant)
  INTEGER,INTENT(OUT):: npts  ! number of points in the trajectory
  TYPE(TrajectoryPoint),INTENT(OUT),DIMENSION(:):: history

  INTEGER:: k
!-------------------------------------------------------------------------------
  history(1)%time=ZERO
  history(1)%altitude=initialAltitude
  history(1)%velocity=initialVelocity
  history(1)%acceleration=Accel(ZERO, initialAltitude, initialVelocity)  

  DO k=2,SIZE(history)
    CALL RungeKutta(history(k-1), dt, history(k))
    IF (history(k)%altitude < 0.0) EXIT
  END DO
  npts=k

! Make an adjustment to the final point so that the altitude does not go negative
  CALL AdjustFinalPoint(history(npts-1), history(npts))

  RETURN
END Subroutine Trajectory   ! --------------------------------------------------

!+
SUBROUTINE TrajectoryOutput(efu, history)
! ------------------------------------------------------------------------------
! PURPOSE - Print the trajectory defined by the array history
  INTEGER,INTENT(IN):: efu   ! the unit number of the file for output. Assumed open.
  TYPE(TrajectoryPoint),INTENT(IN),DIMENSION(:):: history

  
  CHARACTER(LEN=*),PARAMETER:: HEADER1 = &
    '    t     alt      V        a     mach   Ts    Tt        q          R'
  CHARACTER(LEN=*),PARAMETER:: HEADER2 = &
    '    s      m      m/s     m/s^2    -      K     K        Pa          - '
  CHARACTER(LEN=*),PARAMETER:: FMT1 = '(" mass=", F9.5, " kg,    sref=", F9.5, &
    " m**2,   lref=", F9.5, " m      on ", A)'
  CHARACTER(LEN=*),PARAMETER:: FMT = '(F7.1,F8.0,F9.1,F9.2,F7.3,2F6.0,3ES12.3E1,F9.3)'
  INTEGER:: k, npts
  REAL(WP):: sigma,delta,theta
  REAL(WP):: asound, mach, tstatic, ttotal
  REAL(WP):: q,q1,q2   ! dynamic pressure, Pascals
  REAL(WP):: reynolds
  
!-------------------------------------------------------------------------------
  npts=SIZE(history)
  WRITE(efu,FMT1) mass, sref, lref, dateTimeStr
  WRITE(efu,*) HEADER1
  WRITE(efu,*) HEADER2

  DO k=1,npts
    CALL Atmosphere(0.001_WP*history(k)%altitude, sigma,delta,theta)
    asound=ASOUNDZERO*SQRT(theta)
    mach=ABS(history(k)%velocity)/asound
    tstatic=TZERO*theta
    ttotal=tstatic*(ONE+0.2_WP*mach*mach)
!    q1=0.7_WP*PZERO*delta*mach*mach
    q2=HALF*RHOZERO*sigma*(history(k)%velocity**2)
    reynolds=RHOZERO*sigma*ABS(history(k)%velocity)*LREF/Viscosity(theta)
    WRITE(efu,FMT) history(k)%time, history(k)%altitude, history(k)%velocity, &
      history(k)%acceleration, mach,tstatic,ttotal,q2,reynolds
  END DO

  RETURN
END Subroutine TrajectoryOutput   ! --------------------------------------------

END Module FallingObjectAuxiliary   ! ==========================================



!+
PROGRAM FallingBody                             ! \atmos\descent\fallingbody.f90
! ------------------------------------------------------------------------------
! PURPOSE - Calculate the vertical trajectory of a sphere with air drag.
! AUTHOR - Ralph L. Carmichael, Public Domain Aeronautical Software

USE FallingObjectAuxiliary
IMPLICIT NONE
  CHARACTER(LEN=*),PARAMETER:: VERSION = '(1.4 2 October 2012)'
!... Input/Output unit numbers
  INTEGER,PARAMETER:: IN=1, OUT=2, DBG=3, FIG=7, PS=8, SVG=9, TEMPFIG=10

  REAL(WP):: dt  ! time step, seconds
  TYPE(TrajectoryPoint),DIMENSION(100000):: history
  TYPE(TrajectoryPoint),ALLOCATABLE,DIMENSION(:):: vacuum
  REAL(WP):: initialAltitude  ! meters
  REAL(WP):: initialVelocity  ! meters per second; positive up; negative down 
  INTEGER:: n
  INTEGER:: errCode

!-------------------------------------------------------------------------------
  WRITE(*,*) 'FallingBody'
  dateTimeStr=GetDateTimeStr()
! variable OUT is defined in module FallingObjectAuxiliary
  OPEN(UNIT=OUT,FILE='fallingbody.out',STATUS='REPLACE',ACTION='WRITE')
 
! Set the mass, reference area, and reference length.
! 1 = baseball; 2 = golf ball; 3 = bowling ball; 4 = ping-pong ball
! 5 = BB; 6 = human sphere
! Also set initial altitude and velocity and the time step
  CALL SetObjectCharacteristics(6)   ! bowling ball
  initialAltitude=36000  ! meters
  initialVelocity=0      ! meters per second
  dt=1.0  ! seconds
  CALL Trajectory(initialAltitude, initialVelocity, DT, n, history)
  CALL TrajectoryOutput(OUT, history(1:n))

  WRITE(*,*) "End of FallingBody"
  STOP
End Program FallingBody   ! ====================================================
