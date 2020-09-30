=================================
Falling Objects in the Atmosphere
=================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Falling Bodies

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Falling Bodies in the Atmosphere
      :name: falling-bodies-in-the-atmosphere

The immediate incentive for this investigation is the upcoming (Oct
2012) attempt by the Red Bull team to drop a parachutist from a balloon
at high altitude. This should easily set a new speed record for a
falling human (not in a vehicle) and there is considerable speculation
as to whether the skydiver can go supersonic during the descent. I plan
to update this page over the next few weeks to make it more readable,
but I wanted to have my predictions out there *before*, rather than
after the experimental investigation.

The charts are in SVG format and can be displayed with Firefox, Chrome,
Safari, Opera, or Internet Explorer 9 browsers. Unfortunately, they do
not show up on IE8 or earlier.

As a background for investigating this possibility, I have prepared some
charts illustrating the descent of familiar falling objects of various
sizes and density. To keep things simple, I have made these calculations
for smooth spheres. The calculation of a falling sphere is
straightforward, but the non-linearity of the aerodynamic drag force and
the variable density of the atmosphere make an analytical solution
impossible; numerical methods must be used. I have a separate page
describing the :doc:`computational model <fallingBodyCalculation>`
used and I invite comments from folks who know more than I do about the
drag force on a sykdiver fitted out with a flight suit for an air
temperature of -60F.

I have chosen five spheres for the calculation: a ping-pong ball, a BB,
a baseball, a bowling ball, and a sphere with the same mass and density
as the skydiver with all of his flight gear for the descent. All five
begin at a specified altitude with zero velocity and the differential
equations of flight are solved numerically until the altitude reaches
zero. In addition, it is easy to compute the trajectory of a body
falling in vacuum from the same initial altitude and it is useful to see
just how much difference this makes.

To begin, the calculations are made from a relatively low altitude of
100 meters, something like a 15-20 story building. The legend is red for
baseball; orange for ping-pong; yellow for BB; blue for bowling ball;
green for human; black for any ball falling in vacuum. I will get the
legend on the figures real soon now.

Looking at the time history of altitude chart, the ping-pong ball
requires 12.5 seconds to fall 100 meters; the BB needs 6 seconds; the
baseball 5.2 seconds; the other larger and heavier objects require 5
seconds. This is very close to the vacuum value of sqrt(200/9.8) or
4.886 seconds.>/p>

Looking at chart of the time history of velocity, we see that the
ping-pong ball and the BB accelerate to a limiting value and then
maintain this velocity until they strike the ground. This is often
referred to as the **terminal velocity** of the object. The velocity of
the baseball (in red) will soon reach a limiting value, but to do this
will require an initial height of more than 100 meters.

Sometimes it is instructive to plot altitude vs. velocity. With an
initial altitude of 100 meters, the heavier objects are still
accelerating (the trajectories are curved) when the altitude goes to
zero. One may also plot the Mach number at each altitude. Remember, the
speed of sound varies with altitude, so we must compute the velocity of
sound along with the velocity of the object to make this calculation.

Most of the objects we ordinarily deal with fall with essentially the
same trajectory. The exceptions are small, lightweight objects such as
feathers, ballons, sheets of paper, etc. Almost all of our experience
with falling objects lies in this range of 100 meters or less, usually
much less.

If we repeat these calculations with a higher altitude, some differences
do appear. Let\'s use an initial altitude of 1000 meters, slightly more
that the very tallest buildings.

The heaviest and densest objects now need a little more than three times
the time to fall ten times the distance (sqrt(10)=3.16). The ping-pong
ball takes xxx seconds to fall 1000 meters, compared to yyy for 100
meters.

Now, starting from 10000 meters, or 10 km. This is approximately the
height of a cruising jet transport. Now, we can notice a difference in
the plots. The curves of velocity versus time now accelerate to a peak
value and then slowly decrease. If you look carefully at the curves for
lower altitudes, they also show this property, but the effect is small.
This is why I avoid the term *terminal velocity* in these studies.

From this height, the human does not reach supersonic speeds. It appears
that we need a much higher initial altitude.

Now, from 100 km, the height chosen for the \'edge of space\' by the
X-Prize committee. From this height, all of the balls and the human
easily achieve supersonic speeds.

Now we can see that it is easy to go supersonic in free-fall, provided
that you start with a sufficiently high initial altitude. And we can see
that 10 kilometers is not high enough, but 100 kilometers is more than
enough. As they say, we should \'cut to the chase\' and see if the 36
kilometers chosen by the Red Bull team will be high enough to get this
velocity. If not, then it is going to be very difficult to get much
higher with balloon technology as the atmosphere is getting very thin
and the upward bouyant force is getting small.

Repeating the calculations with an initial altitude of 36 kilometers.

It looks as if Felix should go supersonic at about 30km, which is about
40 seconds into the descent, ten seconds later hitting a maximum Mach
number of 1.28 at 24km altitude, returning to subsonic speed at 17km at
85 seconds into the flight. These calculations show a total flight time
of 150 seconds, but this does not model the final phase of the descent
where the parachute is deployed.



Last updated: 9 July 2017 by Ralph Carmichael, pdaerowebmaster@gmail.com

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Falling Bodies

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
