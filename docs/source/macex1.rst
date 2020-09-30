==================================================
Examples of the use of program getmac. Ex. 1, p. 1
==================================================

:Author: Ralph Carmichael

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Mean
   Aero Chord <getmac>` > Ex.1,p.1

Example 1 - Simple Tapered Wing - page 1
========================================

As a first example, consider a simple swept tapered wing.

.. container:: equation

   The input to getmac consists of wing chords and each is defined by the
   length of the chord and the x- and y-coordinates of the leading edge.
   All chords are parallel to the x-axis. In this case, there are three
   chords. The root chord is of length 400. The tip chords are of length
   200 with the leading edge is at (600,1000) and (600,-1000).

The program input is as follows:

&chord y=-1000, xle=600, c=200/ &chord y=0, xle=0, c=400/ &chord y=1000,
xle=600, c=200/

`Next <https://www.pdas.com/macex2>`

Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Mean
   Aero Chord <getmac>` > Ex.1,p.1

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)
