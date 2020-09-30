==============
Gas Properties
==============

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Gas
   Properties

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Real Gas Properties
      :name: real-gas-properties

A Fortran subroutine called GASP (for Gas Properties) calculates the
thermodynamic and transport properties for ten pure fluids:
parahydrogen, helium, neon, methane, nitrogen, carbon monoxide,oxygen,
fluorine, argon, and carbon dioxide. The pressure range is generally
from 0.1 to 400 atmospheres (to 100 atm for helium and 1000 atm for
hydrogen). The temperature ranges are from the triple point to 300 K for
neon; to 500 K for carbon monoxide, oxygen and fluorine; to 600 K for
methane and nitrogen; to 1000 K for argon and carbon dioxide; to 2000 K
for hydrogen; and from 6 to 500 K for helium. GASP accepts any two of
pressure, temperature, and density as input conditions. In addition,
pressure and either entropy or enthalpy are also accepted as input
variables, a desirable flexibility for cycle analysis. The properties
available in any combination as output include temperature, density,
pressure, entropy, enthalpy, specific heats, sonic velocity, viscosity,
thermal conductivity, and surface tension. Also, the partial derivatives
of pressure with respect to density at constant temperature as well as
the partial derivative of pressure with respect to temperature at
constant density will be computed. The subprogram design is modular so
that the user can choose only those subroutines necessary to the
calculations. Gasp was written for the engineer who requires both
accuracy and speed in calculating thermodynamic and transport
properties.

This program was released by NASA through COSMIC as LEW-11629. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Gas
   Properties <gasprefs>` program.
-  Go to the :doc:`download page <gaspdownload>` for the Gas
   Properties Program.



Last updated: 11 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOTcom <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Gas
   Properties

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
