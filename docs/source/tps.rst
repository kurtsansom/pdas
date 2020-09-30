==============================================
Multidimensional Heat Conduction Program (TPS)
==============================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > TPS

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Multidimensional Heat Conduction Program (TPS)
      :name: multidimensional-heat-conduction-program-tps

The Thermal Protection System (TPS) for the Space Shuttle consists of an
outer layer of rigid surface insulation tiles. It is important that an
accurate understanding of the thermal behavior of this system be
obtained prior to usage. This computer program was developed to compute
the transient temperature history and the steady-state temperatures of
complex body geometries in three dimensions. Emphasis has been placed on
the type of problems associated with the TPS, but the program could be
used in the thermal analysis of most three-dimensional systems.

The thermal model is subdivided into sections, or nodes, to a level of
approximation which yields the desired level of accuracy. Input to the
program consists of a geometrical description of the physical system,
the material properties, and selected boundary conditions. The boundary
conditions are used to account for heat flux, reradiation, radiation
interchange, convection, fixed temperatures, and phase changes. The
program will accommodate a thermal model with as many as 500 nodes, 4000
conductors, 3600 radiation interchange conductors, and 75 of each type
of boundary condition. The program solves the differential equations
describing the transient and steady state behavior of the model using
finite difference techniques. For the transient analysis, the user may
select either a forward difference method, a midpoint difference
(Crank-Nicolson) method, a backward difference method, or an alternating
direction method to numerically solve the governing equations. For the
steady-state analysis, a modified backward difference method is
available. Program output is in the form of temperature versus time
histories for each section of the thermal model. (Rockwell International
Corp. for NASA Marshall).

This program was released by NASA through COSMIC as MSC-18616. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  :download:`Download tps.zip <https://data.kitware.com/api/v1/item/5f73fee050a41e3d19b9ee54/download>`, containing the original
   source code and a test case.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > TPS

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
