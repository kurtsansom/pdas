==================================
Description of USAF Digital Datcom
==================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Datcom <datcom>` > Description

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Description of Digital Datcom
      :name: description-of-digital-datcom

On this page there are references to section 3.5 and Appendix B. These
are not on-line yet, but they are in the manual supplied with the
CD-ROM.

1 INTRODUCTION
==============

In preliminary design operations, rapid and economical estimations of
aerodynamic stability and control characteristics are frequently
required. The extensive application of complex automated estimation
procedures is often prohibitive in terms of time and computer cost in
such an environment. Similar inefficiencies accompany hand-calculation
procedures, which can require expenditures of significant man-hours,
particularly if configuration trade studies are involved, or if
estimates are desired over a range of flight conditions. The fundamental
purpose of the USAF Stability and Control Datcom is to provide a
systematic summary of methods for estimating stability and control
characteristics in preliminary design applications. Consistent with this
philosophy, the development of the Digital Datcom computer program is an
approach to provide rapid and economical estimation of aerodynamic
stability and control characteristics.

Digital Datcom calculates static stability, high-lift and control
device, and dynamic derivative characteristics using the methods
contained in Sections 4 through 7 of the printed Datcom. The computer
program also offer a trim option that computes control deflections and
aerodynamic data for vehicle trim at subsonic Mach numbers.

The program has been developed an a modular basis. These
:doc:`modules <datcomc>` correspond to the primary building blocks
referenced in the program executive. The modular approach was used
because it simplified program development, testing, and modification or
expansion.

2 PROGRAM CAPABILITIES
======================

This section has been prepared to assist the potential user in his
decision process concerning the applicability of the USAF Stability and
Control Digital Datcom to his particular requirements. For specific
questions dealing with method validity and limitations, the user is
strongly encouraged to refer to the USAF Stability and Control Datcom
document. Much of the flexibility inherent in the Datcom methods has
been retained by allowing the user to substitute experimental or refined
analytical data at intermediate computation levels. Extrapolations
beyond the normal range of the Datcom methods are provided by the
program; however, each time an extrapolation is employed, a message is
printed which identifies the point at which the extrapolation is made
and the results of the extrapolation. Supplemental output is available
via the \"dump\" and \"partial output\" options which give the user
access to key intermediate parameters to aid verification or adjustment
of computations. The following paragraphs discuss primary program
capabilities as well as selected qualifiers and limitations.

2.1 ADDRESSABLE CONFIGURATIONS
------------------------------

In general, Datcom treats the traditional body-wing-tail geometries
including control effectiveness for a variety of high-lift /control
devices. High-lift/control output is generally in terms of the
incremental effects due to deflection. The user must integrate these
incremental effects with the \"basic\" configuration output. Certain
Datcom methods applicable to reentry type vehicles are also available.
Therefore, the Digital Datcom addressable geometries include the
\"basic\" traditional aircraft concepts (including canard
configurations), and unique geometries which are identified as
\"special\" configurations. :doc:`Table 1 <datcomTable1>` summarizes
the addressable configurations accommodated by the program.

2.2 BASIC CONFIGURATION DATA
----------------------------

The capabilities discussed below apply to basic configurations, i.e.,
traditional body-wing-tail concepts. A detailed summary of output as a
function of configuration and speed regime is presented in :doc:`Table
2 <datcomTable2>`. Note that transonic output can be expanded
through the use of data substitution (Sections 3.2 and 4.5 of the report
on CDROM). Typical output for these configurations are presented in
section 6 of the report.

2.2.1 Static Stability Characteristics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The longitudinal and lateral-directional stability characteristics
provided by the Datcom and the Digital Datcom are in the stability-axis
system. Body-axis normal-force and axial-force coefficients are also
included in the output for convenience of the user. For those speed
regimes and configurations where Datcom methods are available, the
Digital Datcom output provides the longitudinal coefficients
C\ :sub:`D`, C\ :sub:`L`, C\ :sub:`m`, C\ :sub:`N`, and C\ :sub:`A`, and
the derivatives dC\ :sub:`L`/d(alpha), dC\ :sub:`m`/d(alpha),
dC\ :sub:`Y`/d(beta), dC\ :sub:`n`/d(beta), and dC\ :sub:`l`/d(beta).
Output for configurations with a wing and horizontal tail also includes
downwash and the local dynamic-pressure ratio in the region of the tail.
Subsonic data that include propeller power, jet power, or ground effects
are also available. Power and ground effects are limited to the
longitudinal aerodynamic characteristics.

Users are cautioned that the Datcom does not rigorously treat
aerodynamics in the transonic speed regime, and a fairing between
subsonic and supersonic solutions is often the recommended procedure.
Digital Datcom uses linear and nonlinear fairings through specific
points; however, the user may find another fairing more acceptable. The
details of these fairing techniques are discussed in Volume II, Section
4. The partial output option, discussed in Section 3.5, permits the user
to obtain the information necessary for transonic fairings. The
experimental data input option allows the user to revise the transonic
fairings on configuration components, perform parametric analyses on
test configurations, and apply better method results (or data) for
configuration build-up.

Datcom body aerodynamic characteristics can be obtained at all Mach
numbers only for bodies of revolution. Digital Datcom can also provide
subsonic longitudinal data for cambered bodies of arbitrary cross
section as shown in Figure 6. The cambered body capability is restricted
to subsonic longitudinal-stability solutions.

Straight-tapered and nonstraight-tapered wings including effects of
sweep, taper, and incidence can be treated by the program. The effect of
linear twist can be treated at subsonic Mach numbers. Dihedral
influences are included in lateral-directional stability derivatives and
wing wake location used in the calculation of longitudinal data. Airfoil
section characteristics are a required input, although most of these
characteristics may be generated using the Airfoil Section Module
(Appendix B). Users are advised to be mindful of section characteristics
which are sensitive to Reynolds number, particularly in cases where very
low Reynolds number estimates are of interest. A typical example would
be pretest estimates for small, laminar flow wind tunnels where Reynolds
numbers on the order of 100,000 are common.

Users should be aware that the Datcom and Digital Datcom employ
turbulent skin friction methods in the computation of friction drag
values. Estimates for cases involving significant wetted areas in
laminar flow will require adjustment by the user.

Computations of wing-body longitudinal characteristics assume, in many
cases, that the configuration is of the mid-wing type.
Lateral-directional analyses do account for other wing locations. Users
should consult the Datcom for specific details.

Wing-body-tail configurations which may be addressed are shown in :doc:`Table
2 <datcomTable2>`. These capabilities permit the user to analyze
complete configurations, including canard and conventional aircraft
arrangements. Component aerodynamic contributions and configuration
build-up data are available through the use of the \"BUILD\" option
described in Section 3.5. Using this option, the user can isolate
component aerodynamic contributions in a similar fashion to break down
data from a wind tunnel where such information in of value in obtaining
an overall understanding of a specific configuration.

Twin vertical panels can be placed either on the wing or horizontal
tail. Analysis can be performed with both twin vertical tail panels and
a conventional vertical tail specified though interference effects
between the three panels is not computed. The influence of twin vertical
tails is included only in the lateral-directional stability
characteristics at subsonic speeds.

2.2.2 Dynamic Stability Characteristics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The pitch, acceleration, roll and yaw derivatives of dC\ :sub:`L`/dq,
dC\ :sub:`m`/dq, dC\ :sub:`L`/d(alpha-dot), dC\ :sub:`m`/d(alpha-dot),
dC\ :sub:`l`/dp, dC\ :sub:`Y`/dp, dC\ :sub:`n`/dp, dC\ :sub:`n`/dr,
dC\ :sub:`l`/dr are computed for each component and the build-up
configurations shown in :doc:`Table 2 <datcomTable2>`. All limitations
discussed in Section 7 of the USAF Stability and Control Datcom are
applicable to digital Datcom as well. The experimental data option of
the program (Section 4.5) permits the user to substitute experimental
data for key parameters involved in dynamic derivative solutions, such
as body dC\ :sub:`L`/d(alpha) and wing-body dC\ :sub:`L`/d(alpha-dot).
Any improvement in the accuracy of these key parameters will produce
significant improvement in the dynamic stability estimates. Use of
experimental data substitution for this purpose is strongly recommended.

2.2.3 High-Lift and Control Characteristics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

High-lift devices that can be analyzed by the Datcom methods include jet
flaps, split, plain, single-slotted, double-slotted, fowler, and leading
edge flaps and slats. Control devices, such as trailing-edge flap-type
controls and spoilers, can also be treated. In general terms, the
program provides the incremental effects of high lift or control device
deflections at zero angle of attack.

The majority of the high-lift-device methods deal with subsonic lift,
drag, and pitching-moment effects with flap deflection. General
capabilities for jet flaps, symmetrically deflected high-lift devices,
or trailing-edge control devices include lift, moment, and maximum-lift
increments along with drag-polar increments and hinge-moment
derivatives. For translating devices the lift-curve slope is also
computed. Asymmetrical deflection of wing control devices can be
analyzed for rolling and yawing effectiveness. Rolling effectiveness may
be obtained for all-movable differentially-deflected horizontal
stabilizers. The speed regimes where these capabilities exist are shown
in :doc:`Table 3 <datcomTable3>`.

Control modes employing all-moving wing or tail surfaces can also be
addressed with the program. This is accomplished by executing multiple
cases with a variety of panel incidence angles.

2.2.4 Trim Option
~~~~~~~~~~~~~~~~~

Trim data can be calculated at subsonic speeds. Digital Datcom
manipulates computed stability and control characteristics to provide
trim output (static C\ :sub:`m`\ = 0.0). The trim option is available in
two modes. One mode treats configurations with a trim control device on
the wing or horizontal tail. Output is presented as a function of angle
of attack and consists of control deflection angles required to trim and
the associated longitudinal aerodynamic characteristics shown in :doc:`Table
3 <datcomTable3>`. The second mode treats conventional
wing-body-tail configurations where the horizontal-tail is all-movable
or \"flying.\" In this case, output as a function of angle of attack
consists of horizontal-stabilizer deflection (or incidence) angle
required to trim; untrimmed stabilizer C\ :sub:`L`, C\ :sub:`D`,
C\ :sub:`m`, and hinge-moment coefficients; trimmed stabilizer
C\ :sub:`L`, C\ :sub:`D`, and hinge moment coefficients; and total
wing-body-tail C\ :sub:`L` and C\ :sub:`D`. Body-canard-tail
configurations may be trimmed by calculating the stability
characteristics at a variety of canard incidence angles and manually
calculating the trim data. Treatment of a canard configuration is
addressed in :doc:`Table 1 <datcomTable1>`.

2.3 SPECIAL CONFIGURATION DATA
------------------------------

The capabilities discussed below apply to the three special
configurations illustrated in Figure 2.

2.3.1 Low-Aspect-Ratio Wings and Wing-Body Combinations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Datcom provides methods which apply to lifting reentry vehicles at
subsonic speeds. Digital Datcom output provides longitudinal
coefficients C\ :sub:`D`, C\ :sub:`L`, C\ :sub:`m`, C\ :sub:`N`, and
C\ :sub:`A` and the derivatives dC\ :sub:`L`/d(alpha),
dC\ :sub:`m`/d(alpha), dC\ :sub:`Y`/d(beta), dC\ :sub:`n`/d(beta),
dC\ :sub:`l`/d(beta).

2.3.2 Aerodynamic Control at Hypersonic Speeds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The USAF Stability and Control Datcom contains some special control
methods for high-speed vehicles. These include hypersonic flap methods
which are incorporated into Digital Datcom. The flap methods are
restricted to Mach numbers greater than 5, angles of attack between zero
and 20 degrees and deflections into the wind. A two-dimensional flow
field is determined and oblique shock relations are used to describe the
flow field.

Data output from the hypersonic control-flap methods are incremental
normal- and axial-force coefficients, associated hinge moments, and
center-of-pressure location. These data are found from the local
pressure distributions on the flap and in regions forward of the flap.
The analysis includes the effects of flow separation due to windward
flap deflection by providing estimates for separation induced-pressures
forward of the flap and reattachment on the flap. Users may specify
laminar or turbulent boundary layers.

2.3.3 Transverse-jet Control Effectiveness
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Datcom provides a procedure for preliminary sizing of a two-dimensional
transverse-jet control system in hypersonic flow, assuming that the
nozzle is located at the aft end of the surface. The method evaluates
the interaction of the transverse jet with the local flow field. A
favorable interaction will produce amplification forces that increase
control effectiveness.

The Datcom method is restricted to control jets located on windward
surfaces in a Mach number range of 2 to 20. In addition, the method is
invalid for altitudes where mean free paths approach the jet-width
dimension.

The transverse control jet method requires a user-specified time history
of local flow parameters and control force required to trim or maneuver.
With these data, the minimum jet plenum pressure is then employed to
calculate the nozzle throat diameter and the jet plenum pressure and
propellant weight requirements to trim or maneuver the vehicle.

2.4 OPERATIONAL CONSIDERATIONS
------------------------------

There are several operational considerations the user needs to
understand in order to take maximum advantage of Digital Datcom.

2.4.1 Flight Condition Control
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Digital Datcom requires Mach number and Reynolds number to define the
flight conditions. This requirement can be satisfied by defining
combinations of Mach number, velocity, Reynolds number, altitude, and
pressure and temperature. The input options for speed reference and
atmospheric conditions that satisfy the requirement are given in Figure
3. The speed reference is input as either Mach number or velocity, and
the atmospheric conditions as either altitude or freestream pressure and
temperature. The specific reference and atmospheric conditions are then
used to calculate Reynolds number.

The program may loop on speed reference and atmospheric conditions three
different ways, as given by the variable LOOP in Figure 3. In this
discussion, and in Figure 3, the speed reference is referred to as Mach
number, and atmospheric conditions as altitude. The three options for
program looping on Mach number and altitude are listed and discussed
below.

-  LOOP = 1 - Vary Mach and altitude together. The program executes at
   the first Mach number and first altitude, the second Mach number and
   second altitude, and continues for all the flight conditions. In the
   input data, NMACH must equal NALT and NMACH flight conditions are
   executed. This option should be selected when the Reynolds number is
   input, and must be selected when atmospheric conditions are not
   input.
-  LOOP = 2 - Vary Mach number at fixed altitude. The program executes
   using the first altitude and cycles through each Mach number in the
   input list, the second altitude and cycles through each Mach number,
   and continues until each altitude has been selected. Atmospheric
   conditions oust be input for this option and NMACH times NALT flight
   conditions are executed.
-  LOOP = 3 - Vary altitude at fixed Mach number. The program executes
   using the first Mach number and cycles through each altitude in the
   input list, the second Mach number and cycles through each altitude,
   and continues until each Mach number has been selected. Atmospheric
   conditions must be input for this option and NMACH times NALT flight
   conditions are executed.

2.4.2 Mach Regimes
~~~~~~~~~~~~~~~~~~

Aerodynamic stability methods are defined in Datcom as a function of
vehicle configuration and Mach regime. Digital Datcom logic determines
the configuration being analyzed by identifying the particular input
namelists that are present within a case (see Section 3). The Mach
regime is normally determined according to the following criteria:

+-----------------------+-----------------------+-----------------------+
| Mach Number (M)       |                       | Mach Regime           |
+-----------------------+-----------------------+-----------------------+
| M <= 0.6              |                       | Subsonic              |
+-----------------------+-----------------------+-----------------------+
| 0.6 < M < 1.4         |                       | Transonic             |
+-----------------------+-----------------------+-----------------------+
| M >= 1.4              |                       | Supersonic            |
+-----------------------+-----------------------+-----------------------+
| M >= 1.4 and          |                       | Hypersonic            |
| the hypersonic flag   |                       |                       |
| is set                |                       |                       |
+-----------------------+-----------------------+-----------------------+

These limits were selected to conform with most Datcom methods. However,
some methods are valid for a larger Mach number range. Some subsonic
methods are valid up to a Mach number of 0.7 or 0.8. The user has the
option to increase the subsonic Mach number limit using the variable
STMACH described In Section 3.2. The program will permit this variable
to be in the range: 0.6<= STMACH <= 0.99. In the same fashion, the
supersonic Mach limit can be reduced using the variable TSMACH. The
program will permit this value be in the range: 1.01 <= TSMACH <= 1.40.
The program will default to the limits of each variable if the range is
exceeded. The Mach regimes are then defined as follows:

+-----------------------+-----------------------+-----------------------+
| Mach Number (M)       |                       | Mach Regime           |
+=======================+=======================+=======================+
| M <= STMACH           |                       | Subsonic              |
+-----------------------+-----------------------+-----------------------+
| STMACH < M < TSMACH   |                       | Transonic             |
+-----------------------+-----------------------+-----------------------+
| M >= TSMACH           |                       | Supersonic            |
+-----------------------+-----------------------+-----------------------+
| M >= TSMACH and       |                       | Hypersonic            |
| the hypersonic flag   |                       |                       |
| is set                |                       |                       |
+-----------------------+-----------------------+-----------------------+

2.4.3 Input Diagnostics
~~~~~~~~~~~~~~~~~~~~~~~

There to an input diagnostic analysis module in Digital Datcom which
scans all of the input data cards prior to program execution. A listing
of all input data is given and any errors are flagged. It checks all
namelist cards for correct namelist name and variable name spelling,
checks the numerical inputs for syntax errors, and checks for legal
control cards. The namelist and control cards are described in Section
3.

This module does not \"fix up\" input errors. It will, however, insert a
namelist termination if it is not found. Digital Datcom will attempt to
execute all cases as input by the user even if errors are detected.

2.4.4 Airfoil Section Module
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The airfoil section module can be used to calculate the required
geometric and aerodynamic input parameters for virtually any user
defined airfoil section. This module substantially simplifies the
user\'s input preparation.

An airfoil section is defined by one of the following methods:

#. An airfoil section designation (for NACA, double wedge, circular arc,
   or hexagonal airfoils)
#. Section upper and lower Cartesian coordinates, or
#. Section mean line and thickness distribution.

The airfoil section module uses Weber\'s method (References 2 to 4) to
calculate the inviscid aerodynamic characteristics. A viscous correction
is applied to the section lift curve slope, c\ :sub:`l\ alpha`. In
addition a 5 per cent correlation factor (suggested in Datcom, page
4.1.1.2-2) is applied to bring the results in line with experimental
data. The airfoil section module methods are discussed in Appendix B in
the printed manual.

The airfoil section is assumed to be parallel to the free stream. Skewed
airfoils can be handled by supplying the section coordinates parallel to
the free stream. The module will calculate the characteristics of any
input airfoil, so the user must determine whether the results are
applicable to his particular situation. Five general characteristics of
the module should be noted.

#. For subsonic Mach numbers, the module computes the airfoil subsonic
   section characteristics and the results can be considered accurate
   for Mach numbers less than the crest critical Mach number. Near crest
   critical Mach number, flow mixing due to the upper surface shock will
   make the boundary layer correction invalid. Compressibility
   corrections also become invalid. The module also computes the
   required geometric variables at all speeds, and for transonic and
   supersonic speeds these are the only required inputs. Mach equals
   zero data are always supplied.
#. Because of the nature of the solution, predictions for an airfoil
   whose maximum camber is greater than 6% of the chord will lose
   accuracy. Accuracy will also diminish when the maximum airfoil
   thickness exceeds approximately 12% of the chord, or large viscous
   interactions are present such as with supercritical airfoils.
#. When section Cartesian coordinates or mean line and thickness
   distribution coordinates are specified, the user must adequately
   define the leading edge region to prevent surface curve fits that
   have infinite slope. This can be accomplished by supplying section
   ordinates at non-dimensional chord stations (x/c of 0.0, 0.001,
   0.002, and 0.003.
#. If the leading edge radius is not specified in the airfoil section
   input, the user must insure that the first and second coordinate
   points lie on the leading edge radius. For sharp nosed airfoils the
   user must specify a zero leading edge radius.
#. The computational algorithm can be sensitive to the \"smoothness\" of
   the input coordinates. Therefore, the user should insure that the
   input data contains no unintentional fluctuations. Considering that
   Datcom procedures are preliminary design methods, it is at least as
   important to provide smoothly varying coordinates as it is to
   accurately define the airfoil geometry.

2.4.5 Operational Limitations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Several operational limitations exist in Digital Datcom. These
limitations are listed below without extensive discussion or
justification. Some pertinent operational techniques are also listed.

-  The forward lifting surface is always input as the wing and the aft
   lifting surface as the horizontal tail. This convention is used
   regardless of the nature of the configuration.
-  Twin vertical tail methods are only applicable to lateral stability
   parameters at subsonic speeds.
-  Airfoil section characteristics are assumed to be constant across the
   airfoil span, or an average for the panel. Inboard and outboard
   panels of cranked or double-delta planforms can have their individual
   panel leading edge radii and maximum thickness ratios specified
   separately.
-  If airfoil sections are simultaneously specified for the same
   aerodynamic surface by an NACA designation and by coordinates, the
   coordinate information will take precedence.
-  Jet and propeller power effects are only applied to the longitudinal
   stability parameters at subsonic speeds. Jet and propeller power
   effects cannot be applied simultaneously.
-  Ground effect methods are only applicable to longitudinal stability
   parameters at subsonic speeds.
-  Only one high lift or control device can be analyzed at a time. The
   effect of high lift and control devices on downwash is not
   calculated. The effects of multiple devices can be calculated by
   using the experimental data input option to supply the effects of one
   device and allowing Digital Datcom to calculate the incremental
   effects of the second device.
-  Jet flaps are considered to be symmetrical high lift and control
   devices. The methods are only applicable to the longitudinal
   stability parameters at subsonic speeds.
-  The program uses the input namelist names to define the configuration
   components to be synthesized. For example, the presence of namelist
   HTPLNF causes Digital Datcom to assume that the configuration has a
   horizontal tail.

Should Digital Datcom not provide output for those configurations for
which output is expected, as shown in :doc:`Table 2 <datcomTable2>:doc:`,
limitations on the use of a Datcom method has probably been exceeded. In
all cases users should consult the Datcom for method limitations.

-  Go to the :doc:`Digital Datcom Main Page <datcom>`.
-  Go to the page of :doc:`references for the Digital
   Datcom <datcomrefs>` program. This page has links to the
   user\'s manual for Digital Datcom and the original documents.
-  Go to the :doc:`download page <datcomdownload>` to download the
   Digital Datcom Program.

Last updated: 10 July 2017 by Ralph Carmichael, `webmaster AT gmail DOT
com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Datcom <datcom>` > Description

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
