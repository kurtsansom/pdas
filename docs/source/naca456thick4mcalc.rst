==============================================================================
Calculation of the Thickness Distribution of a NACA 4-Digit (modified) Airfoil
==============================================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456pdas>` >
   :doc:`Thickness <hnaca456thick>` > :doc:`4-Digit
   (modified) <naca456thick4m>` > Calculation

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Calculating the Thickness of a NACA 4-Digit
      (Modified)Airfoil
      :name: calculating-the-thickness-of-a-naca-4-digit-modifiedairfoil

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

The constants A\ :sub:`0`, A\ :sub:`1`, A\ :sub:`2`, A\ :sub:`3`,
D\ :sub:`0`, D\ :sub:`1`, D\ :sub:`2`, D\ :sub:`3` are calculated from
the values of maximum thickness, position of maximum thickness, and
leading edge radius that are specified by the user.

The airfoil must satisfy the following constraints:

-  y = one half the maximum thickness when x/c = m, the specified
   location of maximum thickness (as fraction of chord).
-  The leading edge radius = 1.1019/36.0*((t/c)*leIndex))**2 [ see p.117
   in Abbott & von Doenhoff]
-  The first and second derivatives of the forward function and the aft
   function match exactly at the point of maximum thickness.
-  The coefficient D\ :sub:`1` is given by the following table:

=== ===========
m   D\ :sub:`1`
0.2 1.000 t
0.3 1.170 t
0.4 1.575 t
0.5 2.325 t
0.6 3.500 t
=== ===========

D\ :sub:`1` is the negative of the trailing edge slope.

These conditions are sufficient to determine all of the A and D terms in
the polynomial equations.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456pdas>` >
   :doc:`Thickness <naca456thick>` > :doc:`4-Digit
   (modified) <naca456thick4m>` > Calculation

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
