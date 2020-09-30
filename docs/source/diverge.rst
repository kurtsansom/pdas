=============================================================================================
Aeroelastic divergence characteristics of unguided, slender body, multi-stage launch vehicles
=============================================================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Diverge

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Aeroelastic divergence characteristics of unguided,
      slender body, multi-stage launch vehicles
      :name: aeroelastic-divergence-characteristics-of-unguided-slender-body-multi-stage-launch-vehicles

The primary function of this computer program is the calculation of the
divergence dynamic pressure and associated divergence modal
characteristics of unguided, slender-body, multistage launch vehicles.
The divergence dynamic pressure is obtained as the non-trivial solution
to a homogeneous stability equation using matrix recurrence techniques.
Provision is made for modulating the distributed lift curve coefficient
slope function and the stiffness function. The program also includes an
option for calculating a generalized static margin which approximates
the degeneration in rigid-body static margin due to aeroelasticity
effects. Evaluated equations are also programmed to allow for the
exclusion of the effect of aerodynamic crossflow resulting from vehicle
angular velocities if desired. Other physical and aerodynamic properties
calculated include total mass, center of mass, moments of inertia in
pitch about the reference station, total aerodynamic lift curve slope,
static aerodynamic center of pressure, rigid body static margin, and
short period frequency. Input to the program is via the Fortran NAMELIST
option with output printed. ( NASA Langley Research Center )

This program was released by NASA through COSMIC as LAR-12004. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  :download:`Download diverge.zip <https://data.kitware.com/api/v1/item/5f73feb950a41e3d19b9ebcf/download>`, containing the
   original source code, the source code converted to modern Fortran,
   and two test cases. The program compiles without error and executes
   the test cases, but the results do not seem to be what would be
   expected. This program is \"In Progress\".



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Diverge

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
