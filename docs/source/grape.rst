===================================================
Two-Dimensional Grids by Use of Poisson\'s Equation
===================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Grape

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Two-Dimensional Grids About Airfoils And Other Shapes By
      The Use Of Poisson\'s Equation (GRAPE)
      :name: two-dimensional-grids-about-airfoils-and-other-shapes-by-the-use-of-poissons-equation-grape

The ability to treat arbitrary boundary shapes is one of the most
desirable characteristics of a method for generating grids, including
those about airfoils. In a grid used for computing aerodynamic flow over
an airfoil, or any other body shape, the surface of the body is usually
treated as an inner boundary and often cannot be easily represented as
an analytic function. The GRAPE computer program was developed to
incorporate a method for generating two-dimensional finite-difference
grids about airfoils and other shapes by the use of the Poisson
differential equation. GRAPE can be used with any boundary shape, even
one specified by tabulated points and including a limited number of
sharp corners. The GRAPE program has been developed to be numerically
stable and computationally fast. GRAPE can provide the aerodynamic
analyst with an efficient and consistent means of grid generation.

The GRAPE procedure generates a grid between an inner and an outer
boundary by utilizing an iterative procedure to solve the Poisson
differential equation subject to geometrical restraints. In this method,
the inhomogeneous terms of the equation are automatically chosen such
that two important effects are imposed on the grid. The first effect is
control of the spacing between mesh points along mesh lines intersecting
the boundaries. The second effect is control of the angles with which
mesh lines intersect the boundaries. Along with the iterative solution
to Poisson\'s equation, a technique of coarse-fine sequencing is
employed to accelerate numerical convergence. GRAPE program control
cards and input data are entered via the NAMELIST feature. Each variable
has a default value such that user supplied data is kept to a minimum.
Basic input data consists of the boundary specification, mesh point
spacings on the boundaries, and mesh line angles at the boundaries.
Output consists of a dataset containing the grid data and, if requested,
a plot of the generated mesh.

This program was released by NASA through COSMIC as ARC-11379. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Grape <graperefs>`
   program.
-  :download:`Download grape.zip <https://data.kitware.com/api/v1/item/5f73febf50a41e3d19b9ec51/download>`, containing the original
   source code, the source code converted to modern Fortran, and several
   test cases.

The title GRAPE comes from **GR**\ ids **A**\ bout **P**\ ractically
**E**\ verything.



Last updated: 11 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Grape

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
