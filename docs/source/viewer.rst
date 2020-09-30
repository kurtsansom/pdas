===================
Function Visualizer
===================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Function Viewer

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Visualize a Function of Two Variables
      :name: visualize-a-function-of-two-variables

Viewer is a program to draw three-dimensional surfaces of the form z =
f(x,y). The function f and the boundary values for x and y are the
inputs. The surface thus defined may be drawn after arbitrary rotations.

The method used is division into a uniform rectangular grid of the given
x and y ranges. The values of the supplied function at the grid points
(x, y) are calculated and stored; this defines the surface. The surface
is portrayed by connecting successive (y,z) points with straight-line
segments for each x value on the grid and, in turn, connecting
successive (x,z) points for each fixed y value on the grid. These lines
are then projected by parallel projection onto the fixed yz-plane for
plotting.

This program was released by NASA through COSMIC as LAR-11049. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Viewer <viewerrefs>`
   program.
-  Go to the :doc:`download page <viewerdownload>` for the Viewer
   program.

The program has been modified by PDAS to produce a file called
viewer.gnu that may be used with gnuplot. For example

gnuplot>plot \'viewer.gnu\' with lines

The name of the program has been changed from PLOT3D to Viewer to avoid
confusion with a popular NASA Langley program.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Function Viewer

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
