========================================
Print a Table of the Standard Atmosphere
========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Atmosphere Tables

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Printing a Table of the Standard Atmosphere
      :name: printing-a-table-of-the-standard-atmosphere

   A program that prints a table of atmospheric properties at various
   altitudes is provided to check the Atmosphere procedure.

In order to check the operation of subroutine Atmosphere, a program
called Tables in included that computes and prints a formatted page of
data showing the atmospheric quantities at various altitudes. At each
altitude, the program prints

-  sigma, the ratio of density to sea-level density
-  delta, the ratio of pressure to sea-level pressure
-  theta, the ratio of temperature to sea-level temperature

In addition to the three fundamental non-dimensional numbers, this
program also prints their dimensional values and, to fill out the page,
supplies the speed of sound and the viscosity. Since there is still a
little room on the page, kinematic viscosity and the
`ratio <https://www.pdas.com/ratio>` of the speed of sound to
kinematic viscosity are also printed.

Two versions of this program are supplied. One prints the data in SI
units from 0 to 86 km, while the other prints the data in US Customary
units from 0 to 280000 ft. Neatly formatting such a table presents a few
problems in style. The temperature in the atmosphere varies gradually
and can easily be printed in a fixed format. However, the pressure at
sea-level is a million times greater that the pressure at 86 km.
Printing this quantity in fixed format would be wasteful, so it is
printed in exponential format. It is interesting to see how this is done
quite differently in different programming languages. The program Tables
is supplied in separate versions for Fortran, Pascal(Delphi), Visual
Basic, C, C++, Fortran77, Python, IDL, and QBasic.



| Last updated: 12 February 2013 by Ralph Carmichael, webmaster@pdas.com
| Public Domain Aeronautical Software
| P.O. Box 1438 Santa Cruz CA 95061 USA

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Atmosphere Tables

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
