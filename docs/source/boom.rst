===========================
Sonic Boom Computer Program
===========================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Sonic
   Boom

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Sonic Boom
      :name: sonic-boom

This program is a solution to the problem of a shock propagating through
a variable atmosphere. For an atmosphere which varies arbitrarily in the
vertical direction and for a supersonic aircraft with arbitrary lift and
volume distribution the computer program will give the shock
overpressure and intersection points at the ground. In addition, effects
due to aircraft acceleration, flight path angle and curvature and
acoustical cutoff are computed and presented by the program.

The program uses the following input data:

#. Atmospheric pressure, temperature and winds between the aircraft and
   the ground, and shock-ground reflection factor.
#. Aircraft parameters such as Mach number, altitude, acceleration rate,
   volume and lift factors, aircraft length and weight.

The analysis is based on ray tube concepts, that is, a small segment of
shock is considered to be propagating down a ray tube and its strength
and location are determined along the ray path until it strikes the
ground. Therefore, another input is the initial ray directions. These
are specified by giving those angles, measured around the flight
direction, for which computations are desired.

The computer output gives the location and strength of the shock
corresponding to a selected input angle at intermediate computed points
between the aircraft and the ground and also computes the location and
strength of the shock at the shock-ground intersection.

This program was not released through COSMIC. I obtained the source code
from a scan of the document (`NASA CR-157 <_static/cr157.pdf>`__), so there
are numerous possibilities for errors in scanning. The program compiles
without error and the test cases from the document run to completion.
However, the results are not identical to those shown in the report,
which leads me to suspect there is still a discrepancy in the program
code. I would greatly appreciate any comments or suggestions. Perhaps
one of you can identify a remaining error.

-  Go to the page of :doc:`references for the Sonic Boom <boomrefs>`
   program.
-  Go to the :doc:`download page <boomdownload>` to download the sonic
   boom program and test cases.



Last updated: 10 July 2017 by Ralph Carmichael `pdaerowebmaster AT gmail
DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Sonic
   Boom

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
