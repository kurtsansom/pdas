=========================================================
A General Algorithm For The Construction Of Contour Plots
=========================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Conplot

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: A General Algorithm For The Construction Of Contour Plots
      :name: a-general-algorithm-for-the-construction-of-contour-plots

The graphical presentation of experimentally or theoretically generated
data sets frequently involves the construction of contour plots. A
general computer algorithm has been developed for the construction of
contour plots. The algorithm provides for efficient and accurate
contouring with a modular approach which allows flexibility in modifying
the algorithm for special applications. The algorithm accepts as input
data values at a set of points irregularly distributed over a plane. The
algorithm is based on an interpolation scheme in which the points in the
plane are connected by straight line segments to form a set of
triangles. In general, the data is smoothed using a least-squares-error
fit of the data to a bivariate polynomial. To construct the contours,
interpolation along the edges of the triangles is performed, using the
bivariable polynomial if data smoothing was performed. Once the contour
points have been located, the contour may be drawn.

This program was released by NASA through COSMIC as ARC-11441. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  Go to the :doc:`download page <conplotdownload>` to download the
   source code and two test cases that will demonstrate the use of the
   Conplot procedure.

There are a number of other algorithms that compute contour lines. I
would suggest a search of `netlib <http://www.netlib.org>`__. This
algorithm permits the input of scattered data; many other algorithms
require the data on a rectangular lattice.

Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Conplot

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
