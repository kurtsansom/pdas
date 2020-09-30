===================================================
Four Digit Thickness Distribution of a NACA Airfoil
===================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456pdas>` > 4-Digit

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Thickness Function for NACA 4-Digit Airfoils
      :name: thickness-function-for-naca-4-digit-airfoils

The NACA four digit wing sections were derived to have the same
thickness distribution as the G�ttingen 398 and the Clark Y airfoils
when their camber was removed. These airfoils were noted as being
particularly efficient by the designers of the NACA family.

The 4-digit thickness distribution is given by the following equation:

y = (t/c) \* ( A sqrt(x) + B x + C x\ :sup:`2` + D x\ :sup:`3` + E
x\ :sup:`4` )

where \*\* denotes exponentiation, (t/c) is the maximum thickness to
chord ratio of the airfoil, x is the position as fraction of chord, and
y is the half-thickness as fraction of chord.

| The coefficients are:
| A = 1.4845
| B = -0.630
| C = -1.758
| D = 1.4215
| E = -0.5075

You may note that these numbers are 5 times the values usually shown in
references. The usual numbers are for computing a 20 percent airfoil
which you are then expected to scale to your desired thickness.

| Of course, for computing efficiency, y is computed from
| y=(t/c)*(A sqrt(x) + x*(B + x*(C + x*(D + x*E)))))

Be sure to note that y is the HALF-THICKNESS. The maximum thickness
ocurrs at approximately 30 percent of chord.

Also note that the trailing edge thickness is NOT zero.

`Get a copy <order>` of all the programs from Public Domain
Computer Programs for the Aeronautical Engineer.

Last updated: 6 September 2020 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456pdas>` > 4-Digit

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
