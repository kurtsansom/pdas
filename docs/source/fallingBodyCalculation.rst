=========================================================
Numerical Calculation of a Trajectory of a Falling Sphere
=========================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > :doc:`Falling
   Body <fallingBody>` > Numerical Procedure

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Numerical Procedure for Computing the Trajectory of a
      Falling Sphere
      :name: numerical-procedure-for-computing-the-trajectory-of-a-falling-sphere

| 

.. container:: section

   Trajectory of a Projectile with Air Resistance

A sphere falling through the air is acted upon by only two forces,
namely the aerodynamic force and gravity. We can write the equation of
motion as

drag + gravity = mass × acceleration

This is a vector equation and we must be careful with signs. Altitude is
measured positive upwards and a body that is falling has a negative
velocity (velocity is rate of change of altitude and altitude is
decreasing). Upward forces are positive and downward forces are
negative. The aerodynamic drag force acts opposite to the direction of
velocity. If the body is falling, then drag is positive; if a body is
thrown upward, the velocity is positive and the drag force is negative.
The force of gravity is always negative. The gravitational force on an
object decreases with increasing altitude because the gravitational
field of the earth has an inverse square relationship with altitude.

g=g\ :sub:`0` × (R/(R+z))**2

where z is the altitude and R is the radius of the earth (more than 6
million meters). This is a small, but noticable effect. At 36 km
altitude, g is 9.6965 meters per second squared compared to a value of
9.8066 at sea level. Because the drag is a non-linear function of
velocity, we will not be able to find an analytic solution and a
numerical solution will be necessary. Hence, we have a second order
non-linear differential equations. You need to be able to solve
equations of this sort with ease, because most of the real problems of
the engineering world do not yield to simple linear analysis.

The usual technique is to replace the second order differential equation
with two first order equations. The two variables are the altitude and
velocity. Call them z and v. The two equations are

| dz/dt = v
| dv/dt = (1/mass) × (drag + gravity)

.. container:: section

   Aerodynamic Drag of a Sphere

Everything is quite simple except for the calculation of the drag force.
The traditional way to express the drag of an object such as a sphere is
through a drag coefficient defined as the drag force divided by the
product of the frontal area and the dynamic pressure. The dynamic
pressure is defined as one-half the density times the square of the
velocity. This gives a model of the varying atmospheric force on the
sphere as the velocity and altitude change.

To estimate the drag coefficient of a sphere, I have included a
procedure taken from Chow, An Introduction to Computational Fluid
Mechanics. I have added an estimate of wave drag for a sphere of CD =
1.0 and have programmed it to begin appearing at M = 0.6, increasing
smoothly until it reaches its full value at M = 1. I recommend Chow\'s
book for some examples for further study.

To use this routine, you need to know the Reynolds number of the flow
which requires the density of the air as well as the viscosity of air.
You can see the routines in the program that compute these quantities
and eventually return the drag coefficient to the procedure that
computes the acceleration. You have to know velocity, elevation, air
density, drag coefficient, gravity and it all comes together in the
calculation of acceleration. The atmosphere procedures are taken from
the :doc:`Standard Atmosphere <atmos>` program.

.. container:: section

   Solution of the Differential Equations

Each of the variables is a function of time. To perform the numerical
integration, we take time steps of finite size and advance the solution.
The most straightforward way to proceed is to use a fourth-order
Runge-Kutta algorithm. The best way to do this is to use a variable
step-size differential equation solver that computes the step size as it
develops the solution. However, for this simple problem, I felt it would
be confusing to introduce variable step size. So the calculations are
done with a simple fixed step size algorithm. It is not obvious what
time step one should use and the usual approach is to use a very small
value and increase it until you see a difference in the solution. A
value of 0.1 second should be small enough.

.. container:: section

   Correction of the final point

At each step along the trajectory, we check to see that the altitude is
greater than the initial altitude. Eventually, of course, we will arrive
at a point where this is no longer true. This is our clue to terminate
the calculation. The fixed step size in time will most likely step over
the point where the altitude is zero and give a point with negative
altitude as the final point. To make the solution look good, it is best
to do an interpolation in the final interval and land right on zero
altitude.

.. container:: section

   Source code for the computer program

Finally, you can look at the `source code <programs/fallingbody.f90>`__
of the computer program. This program is written without input data. To
run different cases, you update the source code and recompile and rerun.
You will need a Fortran compiler.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > :doc:`Falling
   Body <fallingBody>` > Numerical Procedure

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
