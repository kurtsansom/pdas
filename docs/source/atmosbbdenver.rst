=========================================================
Baseball Trajectories at Ballparks of Different Altitudes
=========================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Baseball Trajectory

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Does a baseball travel further in Denver than at Sea
      Level?
      :name: does-a-baseball-travel-further-in-denver-than-at-sea-level

   The procedure for calculating the path of a baseball in ball parks at
   different altitudes is described. A link to a computer program for
   making these calculations is included. The calculations show that,
   indeed, a baseball travels further in a high altitude park.

I am not much of a sports fan and when the newspaper comes each morning,
I usually toss the sports section in the recycling bin. But, when I am
working a wind tunnel test out of town, there is usually quite a bit of
dead time where I end up reading everything from recipes to lost dog
notices and even sports columnists. So, it happened one day that I was
perusing The Dallas Morning News and I came across the assertion that a
baseball will travel nine percent further in the new Denver stadium than
at sea level. If the writer had just said that it would travel further,
I probably would have mumbled something about the air density being
lower and passed on. But, when it said that it will travel nine percent
further - not eight percent, not ten percent, but nine percent further -
I had to know just where that number came from. Of course, my interest
was also professional, because the essential thing you will need if you
are going to make calculations of the air resistance is a procedure for
computing the density of air at any altitude.

Baseball Trajectory Program
===========================

Almost all elementary textbooks on physics or mechanics show the
procedure for calculating the trajectory of an object that is given a
certain initial velocity. The solution is always done with the
assumption that air resistance is negligible and gravity is the only
force acting on the object. This assumption makes it possible to solve
the equations and produce a solution that lets you compute the position
and velocity of the object at each point along the path. You can compute
the horizontal distance travelled, the maximum height reached halfway
along the path, and even show that you get the best range if you throw
the object at an angle of 45 degrees.

How do we compute the trajectory if we do not neglect air resistance? As
we learn in elementary mechanics, we identify all of the forces acting
on the object, write F=ma for both the horizontal and vertical
directions and then proceed to solve the resulting set of differential
equations. Writing the equations is not too hard, but the solution is
not easy because the aerodynamic drag force varies with velocity. The
direction of the drag force changes as the object travels along its
path, always being opposite in direction to the velocity. If you want to
go through the details of the dynamical analysis and the numerical
solution of the differential equations, go to the :doc:`Numerical
Procedure <atmosbbtraj>` page.

Results of the Calculations
===========================

To perform the calculations, we must specify the initial conditions
(altitude and velocity) of the ball and then follow the trajectory until
the altitude returns to the initial value. If we do this for Denver with
an altitude of 1609 m, and several possible initial velocities, we get
the following results:

+-----------------+-----------------+-----------------+-----------------+
| Initial         | Sea Level       | Denver          | % gain          |
| Velocity        | Range           | Range           |                 |
| (m/s)           | (meters)        | (meters)        |                 |
+-----------------+-----------------+-----------------+-----------------+
| 35              | 71.0            | 75.2            | 5.9             |
+-----------------+-----------------+-----------------+-----------------+
| 40              | 83.1            | 88.7            | 6.7             |
+-----------------+-----------------+-----------------+-----------------+
| 45              | 94.4            | 101.6           | 7.6             |
+-----------------+-----------------+-----------------+-----------------+
| 50              | 105.0           | 113.6           | 8.2             |
+-----------------+-----------------+-----------------+-----------------+
| 55              | 114.9           | 124.9           | 8.7             |
+-----------------+-----------------+-----------------+-----------------+

It turns out that the ball does indeed travel further in the less dense
air of Denver. It also turns out that the percent improvement varies
with initial velocity. The high velocity balls that will travel a long
distance will gain more range than the slower ones. So, I guess I will
go along with the Dallas News and say that the guys who hit really long
balls can get a nine percent improvement in distance travelled. For us
wimps who have a hard time getting 30 m/s, the benefits are
significantly smaller.

Speculations about other ballparks
==================================

If we get longer fly balls in Denver, why not build stadiums in Mexico
City or even La Paz, Bolivia? For our ultimate fantasy, lets imagine a
stadium near the summit of Mount Everest and another one in which all
the air has been removed and the game is played by androids or humans
with scuba packs. If we repeat the calculations, we get the following
results:

+-------------+-------------+-------------+-------------+-------------+
| Initial     | Sea Level   | Denver      | Mt. Everest | Vacuum      |
| Velocity    | Range       | Range       | Range       | Range       |
| (m/s)       | (meters)    | (meters)    | (meters)    | (meters)    |
+-------------+-------------+-------------+-------------+-------------+
| 35          | 71.0        | 75.2        | 94.4        | 124.9       |
+-------------+-------------+-------------+-------------+-------------+
| 40          | 83.1        | 88.7        | 115.5       | 163.3       |
+-------------+-------------+-------------+-------------+-------------+
| 45          | 94.4        | 100.6       | 136.8       | 206.6       |
+-------------+-------------+-------------+-------------+-------------+
| 50          | 105.1       | 113.6       | 157.7       | 255.1       |
+-------------+-------------+-------------+-------------+-------------+
| 55          | 114.9       | 124.9       | 178.2       | 308.7       |
+-------------+-------------+-------------+-------------+-------------+

Now we are getting some really long balls. Our 55 m/s ball that would
travel 115 meters at sea level will now go 309 meters in the vacuum ball
park. WOW! Two and a half times as far. That shows that air resistance
is quite important.

What about the initial flight angle?
====================================

The solution for zero air resistance is easily seen to get a maximum
range when the initial angle of the velocity vector is 45 degrees from
the horizontal. When air resistance is taken into account, this may not
be the optimun angle. The computing program I have supplied lets you
investigate this question. We know from anecdotal stories from artillery
people that the best angle is less that 45, somewhere around 40 degrees.
If we run these calculations again for altitude of zero and initial
velocity of 50 m/s, we get the following results:

===== ======
angle range
36    104.90
38    105.14
40    105.02
42    104.53
44    103.71
46    102.53
48    101.01
50    99.17
===== ======

With smaller values of initial velocity, the optimum angle moves back
closer to 45 degrees. You can play around with these calculations if you
are interested. For each altitude and initial velocity, there is an
optimum initial flight path angle. However, it doesn\'t vary very much.
I used 40 degrees for all of the calculations previously shown, except
for the vacuum calculations, where 45 degrees was used.

The ball travels further in Denver because gravity is reduced. What about that?
===============================================================================

That is actually true, but the effect is very small. From the solution
for zero air resistance, we see that the range is proportional to 1/g.
At sea level, g=9.8066 m/s^2, while in Denver it is 9.8017 and atop
Everest it is 9.7794. With velocity and angle held fixed, the ball with
a range of 100m at sea level has a range of 100*9.8066/9.8017 = 100.05 m
in Denver and a range of 100*9.8066/9.7794 = 100.28 m atop Everest. We
can\'t explain much from this effect.



Last updated: 20 August 2018 by Ralph Carmichael,
pdaerowebmaster@gmail.com

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Baseball

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
