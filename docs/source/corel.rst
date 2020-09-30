==========================================================================
Conical relaxation program for supersonic wing design and analysis (COREL)
==========================================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Corel

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Conical relaxation program for supersonic wing design and
      analysis (COREL)
      :name: conical-relaxation-program-for-supersonic-wing-design-and-analysis-corel

COREL and W12SC3 are two computer programs useful in the aerodynamic
design and analysis of wings for supersonic maneuvering. Both programs
use the Super Critical Conical Camber (SC3) concept, in which high
supersonic lift coefficients are obtained by controlling cross flow
development. COREL (Conical Relaxation) solves the nonlinear full
potential equation for a spanwise section of a wing in the crossflow
plane and corrects the result for any nonconical geometry. W12SC3
applies linear theory panel methods to compute solutions for a wing-body
configuration. The programs are not restricted to supersonic maneuvering
cases, but are useful for many design, analysis, and optimization
applications.

COREL computes the mixed subsonic/supersonic crossflow that develops on
supersonic wings with high lift coefficients at Mach numbers normal to
shock waves of 1.3 or less. The bow and crossflow shocks are captured as
part of the solution. The initial aerodynamic solution is produced on a
crude grid and is then reiterated. A finer mesh is then mapped, keeping
the bow shock within the boundary of the new computed crossflow. The
input geometry can be specifically defined or calculated in COREL using
Craidon bicubic spline patches. ( Grumman Aerospace Corp. )

This program was released by NASA through COSMIC as LAR-13239. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the COREL and
   W12SC3 <corelrefs>` programs.
-  :download:`Download corel.zip <https://data.kitware.com/api/v1/item/5f73feb550a41e3d19b9eb97/download>`, containing the original
   source code and some sample cases.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Corel

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
