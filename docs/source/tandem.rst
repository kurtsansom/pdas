============================================================================================
Velocities and Streamlines on a Blade-To-Blade Stream Surface of a Tandem Blade Turbomachine
============================================================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Tandem

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Velocities And Streamlines on a Blade-To-Blade Stream
      Surface of a Tandem Blade Turbomachine (TANDEM)
      :name: velocities-and-streamlines-on-a-blade-to-blade-stream-surface-of-a-tandem-blade-turbomachine-tandem

This computer program gives the blade-to-blade solution of the
two-dimensional, subsonic, compressible (or incompressible), nonviscous
flow problem for a circular or straight infinite cascade of tandem or
slotted turbomachine blades. The blades may be fixed or rotating. The
flow may be axial, radial, or mixed.

The method of solution is based on the stream function using an
iterative solution of nonlinear finite-difference equations. These
equations are solved using two major levels of iteration. The inner
iteration consists of the solution of simultaneous linear equations by
successive over-relaxation, using an estimated optimum over-relaxation
factor. The outer iteration then changes the coefficients of the
simultaneous equations to correct for compressibility.

The program input consists of the basic blade geometry, the meridional
stream channel coordinates, fluid stagnation conditions, weight flow and
flow split through the slot, and inlet and outlet flow angles. The
output includes blade surface velocities, velocity magnitude and
direction throughout the passage, and the streamline coordinates. (NASA
Lewis Research Center)

This program was released by NASA through COSMIC as LEW-10743. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Tandem
   Blade <tandemrefs>` program.
-  :download:`Download tandem.zip <https://data.kitware.com/api/v1/item/5f73fedd50a41e3d19b9ee16/download>`, containing the
   original source code and the source code partially converted to
   modern Fortran.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Tandem

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
