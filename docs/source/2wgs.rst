===================================================
Convert WaveDrag, WingBody or PanAir input to LaWGS
===================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   ConvertToWGS

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Conversion to LaWGS
      :name: conversion-to-lawgs

   The programs WaveDrag, WingBody, and Panair allow the user to define
   the geometry of a vehicle. Three utility programs on the CD-ROM
   convert the input files for these programs into the LaWGS format. In
   this format, they may be input to the hidden line program or 3view or
   the Virtual Reality Viewer. The Hypersonic Arbitrary Body Program
   (HABP) by Arvel Gentry also defines a format for input geometry and
   many old \"dusty decks\" are lying around that describe interesting
   vehicles.

WaveDrag and WingBody define the vehicle geometry internally in terms of
a wire frame mesh. PanAir reads a wire frame mesh as part of its input
file. All of these programs were developed long before the definition of
the Langley Wireframe Geometry Standard (:doc:`LaWGS <lawgs>`) and
have their own input schemes. If you have prepared an input case for
WaveDrag, WingBody, or PanAir, you would certainly like to visualize it,
either as :doc:`three-view <3view>` or :doc:`perspective <hlp>`. But
these visualization programs require LaWGS input.

Some simple conversion programs come to your rescue. The program wd2wgs
takes an input file for WaveDrag and produces a file called wd.wgs that
may be used as input to :doc:`3view <3view>` or :doc:`hlp <hlp>` or
:doc:`wgs2wrl <wgs2wrl>`. A similar program called wb2wgs converts an
input file for WingBody into a file called wb.wgs. Yet another program
called a5022wgs converts the input file for PanAir into a file called
a502.wgs. The programs hlp or 3view may then be used to make picturs of
the vehicle configuration. The program wgs2wrl may be used to convert
the objects into a VRML world for viewing with an appropriate browser.
Still another program called hab2wgs takes old input decks from the
Gentry hypersonic arbitrary-body program and converts the geometry data
to wgs. Since HABP allows networks with different numbers of points per
column, not all HABP decks can be converted.

-  Go to the page of :doc:`references for the conversion <2wgsrefs>`
   programs.
-  Go to the :doc:`download page <2wgsdownload>` to download the wgs
   conversion programs.



Last updated: 9 July 2017 by Ralph Carmichael, pdaerowebmaster@gmail.com

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   ConvertToWGS

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
