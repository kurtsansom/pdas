=================================================================
A Computer Program for Perspective Views with Hidden Line Removal
=================================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Hidden
   Line

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Hidden Line Program
      :name: hidden-line-program

This programs draws a perspective view of an object that has been
defined as a wire frame and analyzes the image to remove the hidden
lines.

Flexibility in choosing how to display computer-generated
three-dimensional drawings has become increasingly important in recent
years. A major consideration is the enhancement of the realism and
aesthetics of the presentation. A polygonal representation of objects,
even with hidden lines removed, is not always desirable. A more pleasing
pictorial representation often can be achieved by removing some of the
remaining visible lines, thus creating silhouettes (or outlines) of
selected surfaces of the object. Additionally, it should be noted that
this silhouette feature allows warped polygons. This means that any
polygon can be decomposed into constituent triangles. Considering these
triangles as members of the same family will present a polygon with no
interior lines, and thus removes the restriction of flat polygons.

SILHOUETTE is a program for calligraphic drawings that can render any
subset of polygons as a silhouette with respect to itself. The program
is flexible enough to be applicable to every class of object. SILHOUETTE
offers all possible combinations of silhouette and nonsilhouette
specifications for an arbitrary solid. Thus, it is possible to enhance
the clarity of any three-dimensional scene presented in two dimensions.
Input to the program can be line segments or polygons. Polygons
designated with the same number will be drawn as a silhouette of those
polygons.

This program was released by NASA through COSMIC as ARC-12721. The
italicized text above is from the official NASA release.

The program SKETCH (later superceeded by SILH), written by David Hedgley
of the NASA Dryden Flight Research Center has long been famous as the
most widely distributed code by the NASA service known as COSMIC. All
over the world, people have obtained this program and adapted it to the
task of displaying three-dimensional objects as wire-frame pictures in
perspective with hidden lines removed. Today, the leading-edge computer
graphics wizards are making color pictures with continuous shading that
are remarkable in their realism. But, for those of us with black and
white printers, wireframe is still the best way to show an object like
an airplane so that it can be visualized.

I remember jumping at the chance to use this program in 1982, when I was
looking for a way to check the input for an aerodynamic panel code known
as PANAIR. I composed a simple program that read a PANAIR input file and
called SKETCH to produce the scene. That program is the basis of the
program in this collection.

Since that time, NASA has settled on a single consistent format for
describing wireframe objects which is referred to as the Langley Wire
Frame Geometry Standard `(LaWGS) <lawgs>`. This program HLP (for
hidden line program) is an update of the old program (called PANSKETCH)
that I wrote, now updated to read LaWGS files and use the newer SILH
(for silhouette) program from David Hedgley. The output is a plot file,
encoded for gnuplot, of the object in question.

A supplementary program called PrintHLP is also provided that will
convert this gnuplot file into appropriate format for printing on a
PostScript printer or on a Hewlett-Packard compatible printer.

-  Go to the page of :doc:`references for the Hidden Line <hlprefs>`
   program.
-  Go to the :doc:`download page <hlpdownload>` to download the hidden
   line program.



Last updated: 15 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Hidden
   Line

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
