===============================
NACA 3-Digit reflex Camber line
===============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456>` > :doc:`PDAS Program <naca456pdas>` >
   3-Digit Reflex Camber Line

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: 3-Digit Reflex Camber Line
      :name: digit-reflex-camber-line

The camber-line designation for the 3-digit-reflex camber line is the
same as that for the 3-digit camber line except that the last digit is
changed from 0 to 1 to indicate the reflex characteristic. The three
digit reflex camber line was designed to have a zero pitching moment
coefficient about the quarter-chord position. The principal application
was to be sections for rotorcraft main rotors.

The camber line is made up of two equations so that the second
derivative decreases linearly to zero at a point r aft of the maximum
camber position and remains zero from this point to the trailing edge.

y\'\' = k*(x-r) if x < r and y\'\' = n*k*(x-r) if x ≥ r y(0)=0 and
y(1)=0

These differential equations may be integrated to show that

y=(k/6)*(x\ :sup:`3` -(k2/k1)*(1-r)\ :sup:`3`\ \*x
+r\ :sup:`3`\ \*(3-r)*x + r\ :sup:`3`) if x < r and
y=(k/6)*(n*(x-r))\ :sup:`3` - n*(1-r)\ :sup:`3`\ \*x - r\ :sup:`3`\ \*x
+ r\ :sup:`3`) if x ≥ r

The constant n is given by:

n = (3/(1-r))*(r-m)\ :sup:`2` - r\ :sup:`3`

This camber line family was reported in NACA Report 537 and the
following values of k and r for selected values of m were given as:

+-------------+-------------+-------------+-------------+-------------+
| Camber-line | m           | r           | k           | n           |
| designation |             |             |             |             |
+=============+=============+=============+=============+=============+
| 221         | 0.10        | 0.1300      | 51.990      | 0.000764    |
+-------------+-------------+-------------+-------------+-------------+
| 231         | 0.15        | 0.2170      | 15.793      | 0.00677     |
+-------------+-------------+-------------+-------------+-------------+
| 241         | 0.20        | 0.3180      | 6.520       | 0.0303      |
+-------------+-------------+-------------+-------------+-------------+
| 251         | 0.25        | 0.4410      | 3.191       | 0.1355      |
+-------------+-------------+-------------+-------------+-------------+



Last updated: 6 September 2020 by Ralph Carmichael, `webmaster AT gmail
DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456>` > :doc:`PDAS Program <naca456pdas>` >
   3-Digit Reflex Camber Line

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
