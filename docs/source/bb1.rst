=======================================
Baseball Trajectories at High Altitudes
=======================================

:Author: Ralph Carmichael

:doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Standard
Atmosphere <atmos>` > Baseball

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
computing the density of air at any altitude. And you have certainly
come to the right web site for that because you can jump to my :doc:`Standard
Atmosphere <atmos>` page and read about it.

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
go through the details of the dynamical equations and the numerical
solution of the differential equations, go to the :doc:`Numerical
Procedure <bb2>` page.

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
| 35              | 72.9            | 77.2            | 6.0             |
+-----------------+-----------------+-----------------+-----------------+
| 40              | 85.3            | 91.0            | 6.8             |
+-----------------+-----------------+-----------------+-----------------+
| 45              | 96.9            | 104.2           | 7.5             |
+-----------------+-----------------+-----------------+-----------------+
| 50              | 107.7           | 116.5           | 8.1             |
+-----------------+-----------------+-----------------+-----------------+
| 55              | 117.8           | 128.1           | 8.7             |
+-----------------+-----------------+-----------------+-----------------+

It turns out that the ball does indeed travel further in the less dense
air of Denver. It also turns out that the percent improvement varies
with initial velocity. The high velocity balls that will travel a long
distance will gain more range than the slower ones. So, I guess I will
go along with the News and say that the guys who hit really long balls
can get a nine percent improvement in distance travelled. For us wimps
who have a hard time getting 30 m/s, the benefits are significantly
smaller.

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
| 35          | 72.9        | 77.2        | 94.5        | 123.1       |
+-------------+-------------+-------------+-------------+-------------+
| 40          | 85.3        | 91.0        | 115.2       | 160.8       |
+-------------+-------------+-------------+-------------+-------------+
| 45          | 96.9        | 104.2       | 135.7       | 203.5       |
+-------------+-------------+-------------+-------------+-------------+
| 50          | 107.7       | 116.5       | 155.8       | 251.2       |
+-------------+-------------+-------------+-------------+-------------+
| 55          | 117.8       | 128.1       | 175.4       | 304.0       |
+-------------+-------------+-------------+-------------+-------------+

Now we are getting some really long balls. Our 55 m/s ball that would
travel 118 meters at sea level will now go 304 meters in the vacuum ball
park. WOW! Two and a half times as far. That shows that air resistance
is quite important.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

:doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Standard
Atmosphere <atmos>` > Baseball

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
