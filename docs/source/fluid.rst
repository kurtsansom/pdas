================
Fluid Properties
================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Fluid

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Thermodynamic and Transport Properties of Fluids
      :name: thermodynamic-and-transport-properties-of-fluids

The accurate computation of the thermodynamic and transport properties
of fluids is a necessity for many engineering calculations. The FLUID
program was developed to calculate the thermodynamic and transport
properties of pure fluids in both the liquid and gas phases. Fluid
properties are calculated using a simple gas model, empirical
corrections, and an efficient numerical interpolation scheme. FLUID
produces results that are in very good agreement with measured values,
while being much faster than older more complex programs developed for
the same purpose.

A Van der Waals equation of state model is used to obtain approximate
state values. These values are corrected for real gas effects by model
correction factors obtained from tables based on experimental data.
These tables also accurately compensate for the special circumstances
which arise whenever phase conditions occur. Viscosity and thermal
conductivity values are computed directly from tables. Interpolation
within tables is based on Lagrange\'s three point formula. A set of
tables must be generated for each fluid implemented.

FLUID currently contains tables for nine fluids including dry air and
steam. The user can add tables for any fluid for which adequate thermal
property data is available. The FLUID routine is structured so that it
may easily be incorporated into engineering programs.

This program was released by NASA through COSMIC as LEW-14418. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Fluid <fluidrefs>`
   program.
-  :download:`Download fluid.zip <https://data.kitware.com/api/v1/item/5f73febd50a41e3d19b9ec13/download>`, containing the original
   source code, the source code converted to modern Fortran, and several
   test cases.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Fluid

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
