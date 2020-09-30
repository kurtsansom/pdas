=================================
The U.S. Standard Atmosphere 1976
=================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Standard Atmosphere

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Properties Of The U.S. Standard Atmosphere 1976
      :name: properties-of-the-u.s.-standard-atmosphere-1976

Every student of aerodynamics and flight mechanics is introduced to an
atmosphere table, which allows one to determine the temperature,
pressure, and density at any altitude. If you don\'t happen to have such
a table handy, you may want to look at a sample atmosphere table.

I have four typical tables on-line:

#. :doc:`Table 1 <atmosTable1SI>` - 0 to 86 km in steps of 2 km in SI
   units
#. :doc:`Table 2 <atmosTable2SI>` - 0 to 20 km in steps of 0.5 km in
   SI units
#. :doc:`Table 3 <atmosTable1US>` - 0 to 280,000 ft in steps of 5000
   ft in US units
#. :doc:`Table 4 <atmosTable2US>` - 0 to 65,000 ft in steps of 1000 ft
   in US units

The equations used are those adopted 15 October 1976 by the United
States Committee on Extension to the Standard Atmosphere (COESA),
representing 29 U.S. scientific and engineering organizations. The
values selected in 1976 are slight modifications of those adopted in
1962. The equations and parameters used are documented in a book
entitled `U.S. Standard Atmosphere,
1976 <https://docs.google.com/open?id=0B2UKsBO-ZMVgQV83S2loaGs4dnc>`__
published by the U.S. Government Printing Office, Washington, D.C. A
`summary of the definition <atmosdef>` of the 1976 atmosphere is
on another page.

The equations defining the 1976 Standard Atmosphere are coded for
inclusion in your own aeronautical studies. The procedure is supplied in
several different programming languages: Fortran, Pascal(Delphi), C,
C++, Fortran77, IDL, Python, QBasic Java and JavaScript.

The fundamental procedure is a subroutine called Atmosphere that accepts
altitude as an input argument and returns non-dimensional values of
temperature, pressure, and density which are ratios of the quantity at
altitude to that at sea-level. The equations are taken directly from the
NASA publication. Since the definition of the international standard is
given in SI units, the altitude is supplied in kilometers. The standard
atmosphere is defined as a set of layers and the routine determines
which layer contains the specified altitude. The desired layer is found
by `binary search. <binsrch>` The temperature is then computed by
linear interpolation. Then the pressure is computed from the hydrostatic
equations and the density follows from the perfect gas law. You may
`download the source code <programs/atmos.f90>`__ of the Fortran version
of Atmosphere up to 86 km.

As a practical matter, almost all flight takes place in the first two
layers and they are commonly referred to as the troposphere and the
stratosphere. The routine Atmosphere which does the very elegant binary
search through the layers will usually use the first or second. An
alternate routine called SimpleAtmosphere is included in this package
which is only correct to 20 km, but is much simpler because it only
makes one test for altitude.

In order to check the operation of the subroutine, a program called
`Tables <atmostables>` is included that computes four tables
showing the atmospheric quantities at various altitudes, expressed in
either SI or US units. The short versions of the tables use the
SimpleAtmosphere subroutine and the long tables use Atmosphere.

Since nearly every introductory aerodynamics textbook contains such a
table, you may question the value of producing yet another one. By going
through this exercise, you will have these routines in your standard
computational toolbox. When you are studying a new vehicle concept or
flight procedure, you can concentrate on your idea and not on validating
your atmosphere calculations.

The routine Atmosphere implements the first seven layers of the
atmosphere, as defined in the 1976 standard. This defines the atmosphere
from sea level to 86 kilometers (282,000 ft.) altitude. For heights
above 86 kilometers, see the :doc:`Upper Atmosphere <upatmos>` page.

I have written several application programs that utilize the atmosphere
computing procedure. Go to the :doc:`Application page <atmosapps>` for
further information.

You may read the page describing the hydrostatic equations.
`XHTML+MathML, 12KB <hydro.xml>`__ or `PDF, 69KB <hydro.pdf>`__.

-  Go to the page of :doc:`references for the Atmosphere <atmosrefs>`
   program.
-  Go to the :doc:`download page <atmosdownload>` for the Atmosphere
   programs.



Last updated: 20 August 2018 by Ralph Carmichael,
pdaerowebmaster@gmail.com

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Standard Atmosphere

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
