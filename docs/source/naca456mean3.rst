========================
NACA 3-Digit Camber Line
========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456>` > :doc:`PDAS Program <naca456pdas>` >
   3-Digit Camber Line

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: 3-Digit Camber Line
      :name: digit-camber-line

To provide a camber line with a very far forward location of the maximum
camber, the 3-digit camber line was developed and reported in NACA
Report 537. The first digit of the 3-digit camber line designation is
defined as two thirds of the design lift coefficient (in tenths); the
second digit, as twice the longitudinal location of the maximum camber
(in tenths of chord); and the third digit of zero indicates a
non-reflexed trailing edge. A 210 camber line has a design lift
coefficient of 0.3 with the maximum camber occurring at 0.05 chord and
no reflex at the trailing edge.

The camber line is made up of two equations so that the second
derivative decreases linearly to zero at a point r slightly aft of the
maximum camber position and remains zero from this point to the trailing
edge.

.. container:: equation

   y\'\' = k*(x-r) if x < r and
   y\'\' = 0 if x ≥ r

.. container:: equation

   y(0)=0 and y(1)=0 where x is fraction of chord.

These differential equations may be integrated to show that

.. container:: equation

   y=(k/6)*(x**3 -3*r*x**2 +r**2*(3-r)*x) if x < r and
   y=(k*r**3/6)*(1-x) if x ≥ r

This camber line family was reported in NACA Report 537 and the
following values of k and r for selected values of m were given as:

+-----------------+-----------------+-----------------+-----------------+
| Camber-line     | m               | r               | k               |
| designation     |                 |                 |                 |
+=================+=================+=================+=================+
| 210             | 0.05            | 0.0580          | 361.400         |
+-----------------+-----------------+-----------------+-----------------+
| 220             | 0.10            | 0.1260          | 51.640          |
+-----------------+-----------------+-----------------+-----------------+
| 230             | 0.15            | 0.2025          | 15.957          |
+-----------------+-----------------+-----------------+-----------------+
| 240             | 0.20            | 0.2900          | 6.643           |
+-----------------+-----------------+-----------------+-----------------+
| 250             | 0.25            | 0.3910          | 3.230           |
+-----------------+-----------------+-----------------+-----------------+

Note: k is written as k\ :sub:`1` in both NASA 4741 and Abbott and von
Doenhoff. The notation in 4741 and AVD differ again. The variable r used
here agrees with 4741, but is called m by AVD. Also note that m is not
actually used in the equations.



Last updated: 6 September 2020 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456>` > :doc:`PDAS Program <naca456pdas>` >
   3-Digit Camber Line

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
