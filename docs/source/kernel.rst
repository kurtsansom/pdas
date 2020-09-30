=============================================
Steady And Oscillatory Kernel Function Method
=============================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Kernel

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: A Steady And Oscillatory Kernel Function Method For
      Interfering Surfaces In Subsonic, Transonic And Supersonic Flow
      :name: a-steady-and-oscillatory-kernel-function-method-for-interfering-surfaces-in-subsonic-transonic-and-supersonic-flow

( GENERAL DYNAMICS CORP. )

Interest has grown considerably in aircraft designed to operate
efficiently in the high subsonic regime. This interest has increased the
need for better unsteady transonic aerodynamic analysis techniques so
that flutter and dynamic response characteristics can be accurately
predicted in this flow regime. The characteristic of transonic flow
which causes the greatest difficulty when attempting to apply uniform
flow theory to such problems is the presence of shocks imbedded in the
flow. Linear theory cannot account for this phenomenon and finite
difference approaches often require extremely costly amounts of computer
time. This computer program was developed to provide an analysis method
based on a kernel function technique which uses assumed pressure
functions with unknown coefficients. With this technique, generalized
forces can be calculated in unsteady flow and pressure distributions can
be obtained in both steady and unsteady flow. Once the aerodynamic
matrices are computed and inverted, they may be saved and used on
subsequent problems at very little cost as long as Mach number, reduced
frequencies, and aerodynamic geometry remain unchanged. This method
should be very useful for design applications where the structural mode
shapes change continually due to structural changes and payload
variations but the aerodynamic parameters remain constant.

In this program, a wing over which the flow has mixed subsonic and
supersonic components with imbedded shocks is treated as an array of
general aerodynamic lifting surface elements. Each element is allowed to
have mutual interference with the other elements. Each element is
assigned the appropriate Mach number and its downwash modified
accordingly. The Mach number distribution and shock geometry may be
obtained either experimentally or by a finite difference technique. The
solution proceeds in a manner identical to ordinary aerodynamic
interference methods based on a collocation technique. The unknown
pressure function is assumed to be composed of a series of polynomials
weighted by a user selected weighting function that is characteristic of
each lifting surface. The non-planar kernel function is computed using a
Mach number and a reduced frequency determined from values at a downwash
control point. To link subsonic and supersonic linear theory solutions,
it is assumed that the appropriate Mach number for computing downwash at
a point is the Mach number at that point and that the reduced frequency
is modified according to the local velocity such that the physical
frequency is held constant. Thus, the computation procedure becomes a
problem of testing the Mach number of the downwash point. If the
downwash point is supersonic, the self-induced downwash and all
interference effects at that point are computed with the supersonic
kernel function. Likewise, if the downwash point is subsonic, the
subsonic kernel function is used. The presence of a normal shock is
simulated by a line doublet which represents the load induced by shock
movement. The appropriate steady or unsteady normal shock boundary
conditions are satisfied across the shock along the surface of the wing.
The computed aerodynamic matrices may be saved on magnetic tape for use
in subsequent analyses.

This program was released by NASA through COSMIC as LAR-12524. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Kernel <kernelrefs>`
   program.
-  Go to the :doc:`download page <kerneldownload>` for this program.

Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Kernel

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
