===================================
Celestial Coordinate Transformation
===================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Celestial Coordinates

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)

.. container::
   :name: header

   .. rubric:: Celestial Coordinate Transformations
      :name: celestial-coordinate-transformations

Stars, planets, moons and other heavenly bodies seem to move through the
sky and observers have developed conventions for describing the position
of these bodies at a given time. A body in the sky appears to be located
on a so-called *celestial sphere* centered on the observer. The position
of a body may be described by two coordinates, the longitude and
latitude of the position on the celestial sphere. There are at least
three basic frames of reference for specifying the poles, the equator,
and the prime meridian of the celestial sphere.

#. The *equatorial* or geocentric system places the equator of the
   celestial sphere in the plane of the earth\'s equator, thereby making
   the poles coincide with the geographic poles of the earth\'s
   rotation.
#. The *ecliptic* or heliocentric system places the equator of the
   celestial sphere in the plane of the earth\'s rotation about the sun.
#. The *galactic* system locates the equator of the celestial sphere in
   the plane of the milky way. The milky way is a relatively flat galaxy
   and can be represented by a plane.

The planes through the geocentric equator and the heliocentric equator
trace out great circles on the celestial sphere and these great circles
intersect at the point that is called the *First Point of Aries* or
*FPA*. This point, FPA, is the (0,0) point for both the equatorial and
ecliptic systems. The equatorial and ecliptic poles are separated by an
angle of 23 degrees, 27 minutes, 8.26 seconds or 0.409318496 radians
that is called the *obliquity of the ecliptic*. The galactic pole is
separated from the equatorial pole by an angle of 62.6 degrees or 1.0926
radians that is called the *obliquity of the galactic plane*. The
obliquity of the ecliptic is usually represented by lower case epsilon
and the galactic obliquity by upper case E. The (0,0) point of the
galactic system is fixed at (192.25 deg, 0) in the equatorial system.

In conjunction with an experiment on Zodiacal Light, `NASA Memorandum
53943 <https://docs.google.com/open?id=0B2UKsBO-ZMVgOTBTRkNMQlRUakE>`__
was prepared that carefully defined the transformation between
coordinates in each of these systems. The source code for this program
was taken from this document; it was not released by NASA through
COSMIC.

-  Go to the page of :doc:`references for the Celestial
   Coordinates <celestrefs>` program.
-  `Download
   celest.zip <https://docs.google.com/open?id=0B2UKsBO-ZMVgc09wcmI0TkhDeVU>`__,
   containing the original source code, the conversion to modern
   Fortran, and a test program that recreates the tables from the
   original document.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Celestial Coordinates

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)
