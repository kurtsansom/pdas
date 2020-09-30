==============================================
Numerical Calculation of a Baseball Trajectory
==============================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > :doc:`Baseball <bb1>` >
   Numerical Procedure

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Numerical Calculation of a Baseball Trajectory
      :name: numerical-calculation-of-a-baseball-trajectory

The procedure for calculating the trajectory of a baseball in air is
described.

.. container:: section

   Trajectory of a Projectile with Air Resistance

A baseball flying through the air is acted upon by only two forces,
namely the aerodynamic force and gravity. Because the ball is spherical
and probably has little spin, the aerodynamic force is nearly all drag
and acts opposite to the direction of velocity. We can write the
equation of motion as

drag + gravity = mass × acceleration

This is a vector equation and each vector has a horizontal and a
vertical component. Because the drag is a non-linear function of
velocity, we will not be able to find an analytic solution and a
numerical solution will be necessary. Hence, we have two second order
non-linear differential equations. If you want to be a skilled engineer,
you need to be able to solve equations of this sort with ease, because
most of the real problems of the engineering world do not yield to
simple linear analysis.

The usual technique is to replace the two second order differential
equations with four first order equations. The four variables are the x
and y components of position and the x and y components of velocity.
Call them x, y, vx and vy. The four equations are

| dx/dt = vx
| dy/dt = vy
| d(vx)/dt = (1/mass) × (dragX + gravityX)
| d(vy)/dt = (1/mass) × (dragY + gravityY)

and, of course, gravityX is zero.

.. container:: section

   Aerodynamic Drag of a Sphere

Everything is quite simple except for the calculation of the drag force.
The traditional way to express the drag of an object such as a sphere is
through a drag coefficient defined as the drag force divided by the
product of the frontal area and the dynamic pressure. The dynamic
pressure is defined as one-half the density times the square of the
velocity. This gives a model of the varying atmospheric force on the
sphere as the velocity and altitude change.

The drag coefficient of a sphere travelling at speeds typical of
baseballs is about 0.5 but I have included a procedure taken from Chow,
An Introduction to Computational Fluid Mechanics that will let you use
this program to study other spheres such as BBs or ping-pong balls or
cannon balls or even a 20-ton Soyuz entry capsule and observe their
behavoir as they fly through the atmosphere. I recommend Chow\'s book
for some examples for further study.

To use this routine, you need to know the Reynolds number of the flow
which requires the density of the air as well as the viscosity of air.
You can see the routines in the program that compute these quantities
and eventually return the drag coefficient to the procedure that
computes the acceleration. You have to know velocity, elevation, air
density, drag coefficient, gravity and it all comes together in the
calculation of acceleration.

.. container:: section

   Solution of the Differential Equations

Each of the four variables is a function of time. To perform the
numerical integration, we take time steps of finite size and advance the
solution. The best way to do this is to use a variable step-size
differential equation solver that computes the step size as it develops
the solution. However, for this simple problem, I felt it would be
confusing to introduce variable step size. So the calculations are done
with a simple fixed step size algorithm. Long fly balls stay in the air
about five or six seconds, so a step size of 0.1 seconds gives something
like 50 or 60 finite steps for the numerical equation solver. The most
straightforward way to proceed is to use a fourth-order Runge-Kutta
algorithm.

.. container:: section

   Correction of the final point

At each step along the trajectory, we check to see that the altitude is
greater than the initial altitude. Eventually, of course, we will arrive
at a point where this is no longer true. This is our clue to terminate
the calculation. The fixed step size in time will most likely step over
the point where the altitude is exactly equal to the initial altitude
and give a point with negative altitude as the final point. To make the
solution look good, it is best to do an interpolation in the final
interval and land right on zero altitude.

.. container:: section

   Source code for the computer program

Finally, you can look at the `source code <programs/bb.f90>`__ of the
computer program. This program is written without input data. To run
different cases, you update the source code and recompile and rerun. You
will need a Fortran compiler to run your revised source code.

.. container:: section

   Assumption of Zero Spin

The analysis above assumes that there is negligible spin on the ball and
the total aerodynamic force is exactly opposite in direction to the
velocity. This is not the case for a *thrown* ball. The craft of
pitching is largely a study in putting the proper amount of spin on the
ball. Calculating the path of a pitched ball is more complex. Actually,
a batted ball can have quite a bit of spin but this is always associated
with a glancing hit and the initial velocity will be low. The only way
to get a long ball is to hit it squarely.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > :doc:`Baseball <bb1>` >
   Numerical Procedure

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
