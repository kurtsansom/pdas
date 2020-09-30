==============================================================
Optimal Regulator Algorithms For The Control Of Linear Systems
==============================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > ORACLS

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: ORACLS
      :name: oracls

   .. rubric:: Optimal Regulator Algorithms For The Control Of Linear
      Systems
      :name: optimal-regulator-algorithms-for-the-control-of-linear-systems

This control theory design package, called Optimal Regulator Algorithms
for the Control of Linear Systems (ORACLS), was developed to aid in the
design of controllers and optimal filters for systems which can be
modeled by linear, time-invariant differential and difference equations.
Optimal linear quadratic regulator theory, currently referred to as the
Linear-Quadratic-Gaussian (LQG) problem, has become the most widely
accepted method of determining optimal control policy. Within this
theory, the infinite duration time-invariant problems, which lead to
constant gain feedback control laws and constant Kalman-Bucy filter
gains for reconstruction of the system state, exhibit high tractability
and potential ease of implementation. A variety of new and efficient
methods in the field of numerical linear algebra have been combined into
the ORACLS program, which provides for the solution to time-invariant
continuous or discrete LQG problems. The ORACLS package is particularly
attractive to the control system designer because it provides a rigorous
tool for dealing with multi-input and multi-output dynamic systems in
both continuous and discrete form.

The ORACLS programming system is a collection of subroutines which can
be used to formulate, manipulate, and solve various LQG design problems.
The ORACLS program is constructed in a manner which permits the user to
maintain considerable flexibility at each operational state. This
flexibility is accomplished by providing primary operations, analysis of
linear time-invariant systems, and control synthesis based on LQG
methodology. The input-output routines handle the reading and writing of
numerical matrices, printing heading information, and accumulating
output information. The basic vector-matrix operations include addition,
subtraction, multiplication, equation, norm construction, tracing,
transposition, scaling, juxtaposition, and construction of null and
identity matrices. The analysis routines provide for the following
computations: the eigenvalues and eigenvectors of real matrices; the
relative stability of a given matrix; matrix factorization; the solution
of linear constant coefficient vector-matrix algebraic equations; the
controllability properties of a linear time-invariant system; the
steady-state covariance matrix of an open-loop stable system forced by
white noise; and the transient response of continuous linear
time-invariant systems.

The control law design routines of ORACLS implement some of the more
common techniques of time-invariant LQG methodology. For the
finite-duration optimal linear regulator problem with noise-free
measurements, continuous dynamics, and integral performance index, a
routine is provided which implements the negative exponential method for
finding both the transient and steady-state solutions to the matrix
Riccati equation. For the discrete version of this problem, the method
of backwards differencing is applied to find the solutions to the
discrete Riccati equation. A routine is also included to solve the
steady-state Riccati equation by the Newton algorithms described by
Klein, for continuous problems, and by Hewer, for discrete problems.
Another routine calculates the prefilter gain to eliminate control state
cross-product terms in the quadratic performance index and the weighting
matrices for the sampled data optimal linear regulator problem. For
cases with measurement noise, duality theory and optimal regulator
algorithms are used to calculate solutions to the continuous and
discrete Kalman-Bucy filter problems. Finally, routines are included to
implement the continuous and discrete forms of the explicit
(model-in-the-system) and implicit (model-in-the-performance-index)
model following theory. These routines generate linear control laws
which cause the output of a dynamic time-invariant system to track the
output of a prescribed model.

In order to apply ORACLS, the user must write an executive (driver)
program which inputs the problem coefficients, formulates and selects
the routines to be used to solve the problem, and specifies the desired
output.

This program was released by NASA through COSMIC as GSC-13067. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the ORACLS <oraclsrefs>`
   program.
-  Go to the :doc:`download page <oraclsdownload>` for ORACLS.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > ORACLS

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
