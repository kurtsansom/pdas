===========================================================
Thickness Distribution of a NACA 4-Digit (modified) Airfoil
===========================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456pdas>` >
   :doc:`Thickness <https://www.pdas.com/naca456thick>` > 4-Digit
   (modified)

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Thickness Function for NACA 4-Digit (Modified)Airfoils
      :name: thickness-function-for-naca-4-digit-modifiedairfoils

In NACA Report 492, the four and five digit airfoils were subjected to
systematic variation of the thickness distribution to allow the airfoil
designer to choose the position of maximum thickness and leading edge
radius. These modifications are indicated by a suffix consisting of a
dash and two digits, such as 0012-34 or 23015-64. These modifications
change the leading edge radius and the position of maximum thickness.
The first integer following the dash indicates the relative magnitude of
the leading edge radius. The nominal leading edge radius is denoted 6
and a sharp leading edge would be zero. The leading edge radius varies
as the square of this index number. The second integer indicates the
position of the maximum thickness in tenths of chord.

For example, a 23015-64 airfoil would have a maximum thickness of 15 per
cent, a 230 mean line, a leading edge radius corresponding to an index
of 6, and the position of maximum thickness would be at 40 per cent
chord.

The thickness distribution is given by the following equation ahead of
the maximum thickness:

y = A\ :sub:`0` sqrt(x) + A\ :sub:`1` x + A\ :sub:`2` x**2 + A\ :sub:`3`
x**3

where \*\* denotes exponentiation, (t/c) is the maximum thickness to
chord ratio of the airfoil, x is the position as fraction of chord, and
y is the half-thickness as fraction of chord.

and by the following equation from maximum thickness to trailing edge:

y = D\ :sub:`0` + D\ :sub:`1`\ (1-x) + D\ :sub:`2` (1-x)**2 +
D\ :sub:`3` (1-x)**3

There is a special page that describes the :doc:`details of the
calculation <naca456thick4mcalc>` of A\ :sub:`0`, A\ :sub:`1`,
A\ :sub:`2`, A\ :sub:`3`, D\ :sub:`0`, D\ :sub:`1`, D\ :sub:`2`,
D\ :sub:`3` from the values of thickness, position of maximum thickness,
and leading edge radius that are specified by the user.



Last updated: 6 September 2020 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456pdas>` > 4-Digit (modified)

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
