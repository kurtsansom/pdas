========================
NACA 2-Digit Camber Line
========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456>` > :doc:`PDAS program <naca456pdas>` >
   2-Digit Camber Line

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: 2-Digit Camber Line
      :name: digit-camber-line

The 2-digit camber line is designated by a 2-digit number. The first
digit denotes the maximum camber in percent of chord. The second digit
denotes the chordwise position of the maximum camber, expressed in
tenths of chord. A 24 camber line (or mean line) has a maximum camber of
0.02 chord located at 0.4c. The camber line is formed by two parabolic
segments that match in value and slope (=0) at the maximum camber
position. From these conditions, one may derive that the equation of
each line is

y/y\ :sub:`max` = 2*x/m -(x/m)\ :sup:`2` if x ≤ m

y/y\ :sub:`max` = (1-2*m + 2*m*x - x\ :sup:`2`) / (1-m)\ :sup:`2` if x >
m

where m is the position of the maximum camber as a fraction of chord and
x is the position as a fraction of chord.

The NACA airfoil designation requires that m be an integer multiple of
one-one-hundredth chord and y\ :sub:`max` be an integer multiple of
one-tenth chord, but the program will allow any fraction of chord for
either quantity.

You may note that both NASA TM 4741 and Abbott and von Doenhoff use the
parameters m and p to express the shape of the camber line, but the
meanings of m and p are reversed. If you downloaded the PDF from NASA
several years ago, the equation in NASA 4741 is incorrect. The copy on
the NASA document server has now been corrected.



Last updated: 6 July 2020 by Ralph Carmichael, `pdaerowebmaster AT gmail
DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456>` > :doc:`PDAS program <naca456pdas>` >
   2-Digit Camber Line

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
