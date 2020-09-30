================================================
Three-Dimensional Supersonic Viscous Flow (AOFA)
================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > AOFA

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Three-Dimensional Supersonic Viscous Flow (AOFA)
      :name: three-dimensional-supersonic-viscous-flow-aofa

This program determines the complete viscous and inviscid flow around a
body of revolution at a given angle of attack and traveling at
supersonic speeds. The viscous calculations from this program agree with
experimental values for surface and pitot pressures and with surface
heating rates. At high speeds, lee-side flows are important because the
local heating is difficult to correlate and because the shed vortices
can interact with vehicle components such as a canopy or a vertical
tail. This program should find application in the design analysis of any
high speed vehicle.

Lee-side flows are difficult to calculate because thin-boundary-layer
theory is not applicable and the concept of matching inviscid and
viscous flow is questionable. This program uses the parabolic
approximation to the compressible Navier-Stokes equations and solves for
the complete inviscid and viscous regions of flow, including the
pressure. The parabolic approximation results from the assumption that
the stress derivatives in the streamwise direction are small in
comparison with derivatives in the normal and circumferential
directions. This assumption permits the equation to be solved by an
implicit finite difference marching technique which proceeds downstream
from the initial data point, provided the inviscid portion of flow is
supersonic. The viscous cross-flow separation is also determined as part
of the solution. To use this method it is necessary to first determine
an initial data point in a region where the inviscid portion of the flow
is supersonic.

This program was released through COSMIC as program ARC-11087. The
italicized text above is from the official COSMIC release.

-  Go to the page of :doc:`references <aofarefs>` for the AOFA
   program.
-  :download:`Download aofa.zip <https://data.kitware.com/api/v1/item/5f73feb050a41e3d19b9eb31/download>`, containing the original
   source code and the source code converted to modern Fortran.



Last updated: 30 May 2019 by Ralph Carmichael, `pdaerowebmaster AT gmail
DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > AOFA

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
