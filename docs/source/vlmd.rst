=============================================
Minimum Drag Camber Surface by Vortex Lattice
=============================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Vortex
   Lattice

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Minimum Drag Camber Surface by Vortex Lattice
      :name: minimum-drag-camber-surface-by-vortex-lattice

This program represents a subsonic aerodynamic method for determining
the mean camber surface of trimmed noncoplaner planforms with minimum
vortex drag. With this program, multiple surfaces can be designed
together to yield a trimmed configuration with minimum induced drag at
some specified lift coefficient. The method uses a vortex-lattice and
overcomes previous difficulties with chord loading specification. A
Trefftz plane analysis is used to determine the optimum span loading for
minimum drag. The program then solves for the mean camber surface of the
wing associated with this loading. Pitching-moment or
root-bending-moment constraints can be employed at the design lift
coefficient. Sensitivity studies of vortex-lattice arrangements have
been made with this program and comparisons with other theories show
generally good agreement. The program is very versatile and has been
applied to isolated wings, wing-canard configurations, a tandem wing,
and a wing-winglet configuration.

The design problem solved with this code is essentially an optimization
one. A subsonic vortex-lattice is used to determine the span load
distribution(s) on bent lifting line(s) in the Trefftz plane. A Lagrange
multiplier technique determines the required loading which is used to
calculate the mean camber slopes, which are then integrated to yield the
local elevation surface. The problem of determining the necessary
circulation matrix is simplified by having the chordwise shape of the
bound circulation remain unchanged across each span, though the
chordwise shape may vary from one planform to another. The circulation
matrix is obtained by calculating the spanwise scaling of the chordwise
shapes. A chordwise summation of the lift and pitching-moment is
utilized in the Trefftz plane solution on the assumption that the
trailing wake does not roll up and that the general configuration has
specifiable chord loading shapes.

This program was released by NASA through COSMIC as LAR-15160. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the VLMD <vlmdrefs>`
   program.
-  Go to the :doc:`download page <vlmddownload>` for vlmd.

| From the report summary:
| A new subsonic method has been developed by which the mean camber
  surface can be determined for trimmed noncoplanar planforms with
  minimum vortex drag. The method uses a vortex lattice and overcomes
  previous difficulties with chord loading specification. This method
  uses a Trefftz plane analysis to determine the optimum span loading
  for minimum drag, then solves for the mean camber surface of the wing,
  which will provide the required loading. Pitching-moment or
  root-bending-moment constraints can be employed as well at the design
  lift coefficient.

Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Vortex
   Lattice

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
