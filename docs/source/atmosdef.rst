==========================================================================
A Precise Definition of the U.S. Standard Atmosphere 1976 to 86 kilometers
==========================================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`StandardAtmosphere <atmos>` > Atmosphere Definition

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Definition of the 1976 Standard Atmosphere to 86 km
      :name: definition-of-the-1976-standard-atmosphere-to-86-km

   The 1976 Standard Atmosphere to 86 kilometers is defined. The data is
   taken from the official U.S. Government publication.

The equations used are those adopted 15 October 1976 by the United
States Committee on Extension to the Standard Atmosphere (COESA),
representing 29 U.S. scientific and engineering organizations. The
values selected in 1976 are slight modifications of those adopted in
1962. The equations and parameters used are documented in a book
entitled `U.S. Standard Atmosphere,
1976 <https://docs.google.com/open?id=0B2UKsBO-ZMVgQV83S2loaGs4dnc>`__
published by the U.S. Government Printing Office, Washington, D.C.

The Fundamental 7 layers of the Standard Atmosphere to 86 km
============================================================

h1 and h2 are geopotential altitude in kilometers of the lower and upper
boundaries of a layer. The gradient dT/dH is kelvins per kilometer.

.. container::

   ====== ====== ============
   h1(km) h2(km) dT/dh (K/km)
   0      11     -6.5
   11     20     0.0
   20     32     1.0
   32     47     2.8
   47     51     0.0
   51     71     -2.8
   71     84.852 -2.0
   ====== ====== ============

Note: 84.852 km geopotential=86 km geometric

These data along with the sea level standard values of

| Sea level pressure = 101325 N/m\ :sup:`2`
| Sea level temperature = 288.15 K
| Hydrostatic constant = 34.1631947 kelvin/km

define the atmosphere. The sea level density of 1.225 kg/m\ :sup:`3` is
derived from the fundamental quantities above.

So where do the values of pressure in the Atmosphere Routine Come From?
=======================================================================

The values of pressure at the boundaries between layers are not an
explicit part of the standard because they are derivable from the values
of temperature gradient and the hydrostatic equations. If you want to
see how the pressures were computed, I have made the :doc:`computing program
and its results <atmospressure>` available.

You may read the page describing the hydrostatic equations.
`XHTML+MathML, 12KB <hydro.xml>`__ or `PDF, 69KB <hydro.pdf>`__.



Last updated: 20 August 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`StandardAtmosphere <atmos>` > AtmosphereDefinition

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
