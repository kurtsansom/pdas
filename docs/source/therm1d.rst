=====================================================================================================
One-Dimensional Numerical Analysis Of The Transient Thermal Response Of Multilayer Insulative Systems
=====================================================================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Therm1D

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: One-Dimensional Numerical Analysis Of The Transient
      Thermal Response Of Multilayer Insulative Systems
      :name: one-dimensional-numerical-analysis-of-the-transient-thermal-response-of-multilayer-insulative-systems

This program performs a one-dimensional numerical analysis of the
transient thermal response of multi-layer insulative systems. The
analysis can determine the temperature distribution through a system
consisting of from one to four layers, one of which can be an air gap.
Concentrated heat sinks at any interface can be included. The computer
program based on the analysis will determine the thickness of a
specified layer that will satisfy a temperature limit criterion at any
point in the insulative system. The program will also automatically
calculate the thickness at several points on a system and determine the
total system mass. This program was developed as a tool for designing
thermal protection systems for high speed aerospace vehicles but could
be adapted to many areas of industry involved in thermal insulation
systems.

In this package, the equations describing the transient thermal response
of a system are developed. The governing differential equation for each
layer and boundary condition are put in finite-difference form using a
Taylor\'s series expansion. These equations yield an essentially
tridiagonal matrix of unknown temperatures. A procedure based on Gauss\'
elimination method is used to solve the matrix. (NASA Langley Research
Center)

This program was released by NASA through COSMIC as LAR-12057. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  :download:`Download therm1d.zip <https://data.kitware.com/api/v1/item/5f73fede50a41e3d19b9ee2a/download>`, containing the
   original source code and a conversion to modern Fortran.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Therm1D

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
