========================================================
A Program that Prints a Table of the Standard Atmosphere
========================================================

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
`ratio <atmosratio>` of the speed of sound to kinematic viscosity
are also printed.

The program prints four distinct tables over different ranges.

-  -0.5 to 20 km by 0.5 km using SI units
-  -2 to 86 km by 2 km using SI units
-  -1 to 65 kft by 1 kft using US units
-  -5 to 280 kft by 5 ft using US units

The output tables look very neat provided you use a monospaced font,
where every character occupies the same width. The same output looks
dreadful with a proportional font. Neatly formatting such a table
presents a few problems in style. The temperature in the atmosphere
varies gradually and can easily be printed in a fixed format. However,
the pressure at sea-level is a million times greater that the pressure
at 86 km. Printing this quantity in fixed format would be wasteful, so
it is printed in exponential format. It is interesting to see how this
is done quite differently in different programming languages. The
program Tables is supplied in separate versions for Fortran,
Pascal(Delphi), C, C++, Fortran77, Java, Python (both 2 and 3), IDL, and
Basic.

There is another way one can produce a neatly formatted table that is
applicable to all programming languages. Today, everyone has access to a
web browser and the <table> construct of HTML lets you create a neatly
formatted table. You just have to learn a few simple HTML rules and the
web browser does the heavy work. The program tablesHTML.f90 on the
download page is an example of this technique.



Last updated: 9 July 2017 by Ralph Carmichael, pdaerowebmaster@gmail.com

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Atmosphere Tables

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
