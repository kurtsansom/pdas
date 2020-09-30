============================================
Atmospheric Interaction Plume Program (AIPP)
============================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > AIPP

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Atmospheric interaction plume program (AIPP)
      :name: atmospheric-interaction-plume-program-aipp

This computer program can be used to predict the gas dynamic and
chemical properties of underexpanded rocket plumes from sea level to the
altitude above which the viscous continuum flow assumption, with
distinct shocks, is no longer valid. The program computes the plume
shock structure while simultaneously accounting for turbulent mixing,
nonequilibrium chemistry, and gas/particle nonequilibrium effects. The
program also has the ability to calculate plume properties in the
subsonic region downstream from the Mach disc, downstream of the shock
reflected from the triple point, and in the far field. The program can
readily be used to determine plume optical and electrical properties,
which are necessary data for calculating the infrared radiation pattern
and radar cross section. This program was used to calculate deposition
rate of various nitrogen oxides into the stratosphere caused by the
Space Shuttle exhaust plumes.

The AIPP code is based on the Multitube code developed by Boyton (which
incorporates the finite difference streamtube calculation technique) and
has been expanded to treat particle/gas nonequilibrium, chemical
kinetic, and turbulent mixing effects within exhaust plumes. For the gas
flow upstream of the Mach disc, the governing elliptic Navier-Stokes
equations are reduced to a hyperbolic system (including lateral pressure
gradients) by neglecting diffusion of mass, momentum, and energy along
streamlines as compared with that across streamlines. The conservation
equations are then written in a streamline oriented coordinated system.
Shocks are treated as thin bounding surfaces of the flow across which
the Rankine-Hugoniot relations are applicable. In the subsonic region
behind the Mach disc the inviscid flow governing equations are taken to
be elliptic. The equations of flow must be solved within the supersonic
and subsonic regions, while simultaneously maintaining the equality of
pressure and flow direction along the dividing streamline. In meeting
these boundary conditions several approximations are employed to reduce
the amount of computer time and storage required. For the condensed
phases present within the flow a continuum particle cloud assumption is
made and field conservation equations for continuity, momentum, and
energy can be written for the particles.

A finite difference formulation of the gas phase and particle cloud
governing equations is utilized on a grid which lies along and
perpendicular to the streamlines. The gas flow equations are solved via
an explicit finite difference marching technique. The chemical
production terms utilize an implicit finite difference formulation
because an explicit formulation leads to an impractically small
integration step for near-equilibrium chemistry. The particle equations
have no wave or diffusive nature and are solved explicitly via a finite
difference formulation. Initially, all flow properties, streamline
positions, and angles must be known along an orthogonal surface. The
streamlines are extended an incremental distance forming a streamtube.
The properties at the upstream surface are used, along with the
governing equations, to determine all the necessary properties at the
downstream surface. Below the Mach disc a similar procedure using
assumed streamlines is performed.

The computer program is written so that only minimal judgment by the
user is required to operate it. The input data required are nozzle exit
conditions along a surface orthogonal to the exit streamlines, uniform
supersonic external flow conditions, and a suitable reaction mechanism
and rate coefficients. The output contains the results of all
calculations in a highly readable format. Care must be taken that the
program is not used to predict plume characteristics at altitudes above
which the assumption of continuum flow ahead of the Mach disc starts to
break down. ( Aerochem Research Labs., Inc. for NASA Langley)

This program was released through COSMIC as program LAR-12203. The
italicized text above is from the official COSMIC release.

-  Go to the page of :doc:`references for the AIPP <aipprefs>`
   program.
-  :download:`Download aipp.zip <https://data.kitware.com/api/v1/item/5f73feaf50a41e3d19b9eb11/download>`, containing the original
   source code and the source code converted to modern Fortran.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > AIPP

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
