======================================
List of Procedures and Dummy Arguments
======================================

:Author: Ralph Carmichael

`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Computer
Methods <fmm>` > Procedures

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: List of Procedures
      :name: list-of-procedures

   A summary of the subroutines and functions in this collection that
   are based on the originals in the book Computer Methods for
   Mathematical Computations by Forsythe, Malcolm and Moler.

The original procedure names and lists of dummy arguments have been
modified to be more in line with modern Fortran style. Click on a
procedure name to see a list of the dummy arguments.

name

description

`Decomp <fmm2.html#Decomp>`__

LU-decomposition of a square matrix

`Solve <fmm2.html#Solve>`__

Solves a system of linear equations. Use after Decomp.

`FMMspline <fmm2.html#FMMspline>`__

Fit a cubic spline to data. FMM end conditions.

`NaturalSpline <fmm2.html#NaturalSpline>`__

Same as FMMspline, but with zero second derivatives at endpoints

`Seval <fmm2.html#Seval>`__

Evaluate a cubic spline at a given point.

`Seval3 <fmm2.html#Seval3>`__

Evaluate a cubic spline at a given point. Returns value of spline plus
1st,2nd,3rd derivatives.

`Quanc8 <fmm2.html#Quanc8>`__

Numerical integration of a function.

`Rkf45 <fmm2.html#Rkf45>`__

Solves a system of ordinary differential equations as an initial value
problem.

`Zeroin <fmm2.html#Zeroin>`__

Find a zero of a function.

`BrentZero <fmm2.html#BrentZero>`__

Same as Zeroin, but with additional dummy arguments

`Fmin <fmm2.html#Fmin>`__

Find the minimum of a function.

`BrentMin <fmm2.html#BrentMin>`__

Same as Fmin, but with additional dummy arguments.

`SVD <fmm2.html#SVD>`__

Singular Value Decomposition of a matrix

All of the vector and matrix arguments are now assumed-shape arrays, a
feature introduced with Fortran 90. With this feature, a procedure can
determine the size of the input arrays without requiring separate
arguments for the size and shape of the array. If you use the technique
of dimensioning for the largest imaginable size, then you must be
careful to call the procedure with the appropriate size. For example, if
you define the matrix a as a(100,100) and you wish to call Decomp for a
matrix of order n stored in a, you would use the following function
call:

CALL Decomp(a(1:n,1:n), ipvt(1:n), errCode, cond)

Description of dummy arguments
==============================

CALL Decomp(a, ipvt, errCode, cond)

var

intent

dim

def

a

in out

: , :

matrix to be decomposed

ipvt

out

:

index of pivot rows

errCode

out

-

error code

cond

out

-

condition number

`Go back to the top of the page <fmm2.html#top>`__

CALL Solve(a, b, ipvt)

var

intent

dim

def

a

in

: , :

decomposed matrix (from Decomp)

b

in out

:

right-hand side; replaced with solution

ipvt

in

:

record of row interchanges (from Decomp)

`Go back to the top of the page <fmm2.html#top>`__

CALL FMMspline(x, y, b, c, d)

var

intent

dim

def

x

in

:

abscissas of knots

y

in

:

ordinates of knots

b

out

:

linear coefficients

c

out

:

quadratic coefficients

d

out

:

cubic coefficients

`Go back to the top of the page <fmm2.html#top>`__

CALL NaturalSpline(x, y, b, c, d)

var

intent

dim

def

x

in

:

abscissas of knots

y

in

:

ordinates of knots

b

out

:

linear coefficients

c

out

:

quadratic coefficients

d

out

:

cubic coefficients

`Go back to the top of the page <fmm2.html#top>`__

Seval(u, x, y, b, c, d)

var

intent

dim

def

u

in

-

abscissa where spline is to be evaluated

x

in

:

abscissas of knots

y

in

:

ordinates of knots

b

in

:

linear coefficients

c

in

:

quadratic coefficients

d

in

:

cubic coefficients

`Go back to the top of the page <fmm2.html#top>`__

CALL Seval3(u, x,y, b, c, d, f, fp, fpp, fppp)

var

intent

dim

def

u

in

-

abscissa where spline is to be evaluated

x

in

:

abscissas of knots

y

in

:

ordinates of knots

b

in

:

linear coefficients

c

in

:

quadratic coefficients

d

in

:

cubic coefficients

f

out

-

value of spline at u

fp

out

-

value of 1st derivative of spline at u

fpp

out

-

value of 2nd derivative of spline at u

fppp

out

-

value of 3rd derivative of spline at u

`Go back to the top of the page <fmm2.html#top>`__

CALL Quanc8(F, a, b, abserr, relerr, result, errest, nofun, flag)

var

intent

dim

def

F

-

-

function to be integrated

a

in

-

lower limit of integration

b

in

-

upper limit of integration

abserr

in

-

absolute error tolerance

relerr

in

-

relative error tolerance

result

out

-

approximate value of the integral

errest

out

-

estimate of actual error

nofun

out

-

number of function evaluations

flag

out

-

reliability indicator

`Go back to the top of the page <fmm2.html#top>`__

CALL Rkf45 (F, y, t, tout, relerr, abserr, iflag, work, iwork)

var

intent

dim

def

F

-

-

subroutine that computes derivatives

y

in out

:

solution vector at t

t

in out

-

independent variable

tout

in out

-

output point at which solution is desired

relerr

in out

-

relative error tolerance

abserr

in

-

absolute error tolerance

iflag

in out

-

indicator for status of work

work

in out

:

work array

iwork

in out

:

work array

`Go back to the top of the page <fmm2.html#top>`__

Zeroin(ax, bx, F, tol)

var

intent

dim

def

ax

in

-

lower endpoint of interval

bx

in

-

upper endpoint of interval

F

in

-

function to be investigated

tol

in

-

desired interval of uncertainity

`Go back to the top of the page <fmm2.html#top>`__

CALL BrentZero(ax, bx, F, tol, maxIter, neval, xZero, fZero)

var

intent

dim

def

ax

in

-

left-hand limit on x-coor

bx

in

-

right-hand limit on x-coor

F

in

-

the function to be investigated

tol

in

-

user-specified tolerance

maxIter

in

-

user specified limit on the number of iterations

neval

out

-

number of function evaluations required to find the zero

xZero

out

-

x-coor of the zero

fZero

out

-

last evaluation of the function. Should be very small.)

`Go back to the top of the page <fmm2.html#top>`__

Fmin(ax, bx, F, tol)

var

intent

dim

def

ax

in

-

lower endpoint of initial interval

bx

in

-

upper endpoint of initial interval

F

in

-

function to be investigated

tol

in

-

desired interval of uncertainity

`Go back to the top of the page <fmm2.html#top>`__

CALL BrentMin(ax, bx, F, tol, maxIter, neval, errCode, xZero, fZero)

var

intent

dim

def

ax

in

-

lower endpoint of initial interval

bx

in

-

upper endpoint of initial interval

F

in

-

function to be investigated

tol

in

-

desired interval of uncertainity

maxIter

in

-

maximum number of iterations allowed

neval

out

-

number of function evaluations

errCode

out

-

errorCode; =0 OK; =1 too many iter

xZero

out

-

x-coor of the minimum point

fZero

out

-

f(xZero)

`Go back to the top of the page <fmm2.html#top>`__

CALL SVD(a, w, matu, u, matv, v, ierr)

var

intent

dim

def

a

in

: , :

matrix to be decomposed. On output, a is unaltered (unless overwritten
by u or v).

w

out

:

w contains the n (non-negative) singular values of a (the diagonal
elements of s). They are unordered. If an error exit is made, the
singular values should be correct for indices ierr+1,ierr+2,\...,n.

matu

in

-

matu should be set to .TRUE. if the u matrix in the decomposition is
desired, and to .FALSE. otherwise.

u

out

: , :

u contains the matrix u of orthogonal column vectors of the
decomposition if matu has been set to .TRUE. Otherwise, u is used as a
temporary array. u may coincide with a. If an error exit is made, the
columns of u corresponding to indices of correct singular values should
be correct.

matv

in

-

matv should be set to .TRUE. if the v matrix in the decomposition is
desired, and to .FALSE. otherwise.

v

out

: , :

v contains the matrix v (orthogonal) of the decomposition if matv has
been set to .TRUE. Otherwise v is not referenced. v may also coincide
with a if u is not needed. If an error exit is made, the columns of v
corresponding to indices of correct singular values should be correct.

ierr

out

-

zero for normal return, k if the k-th singular value has not been
determined after 30 iterations.



Last updated: 18 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Computer
Methods <fmm>` > Procedures

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
