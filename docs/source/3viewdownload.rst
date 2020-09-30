===============================
Download the Three View Program
===============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Three-View <3view>` > Three-view download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Three View Program
      :name: download-the-three-view-program

-  Go to the page of :doc:`references for the three-view <3viewrefs>`
   program.
-  :download:`Download 3view.zip <https://data.kitware.com/api/v1/item/5f73feaa50a41e3d19b9ead7/download>`, containing the source
   code and sample cases.

The archive file 3view.zip contains the files:

=========== =======================================================
readme.txt  General description of 3view.
3view.f90   the complete source code for 3view
tnd4211.wgs sample wing-body configuration of NASA TN D-4211
tnd7505.wgs sample wing-body configuration of NASA TN D-7505
wdcase1.wgs sample configuration prepared for the wave drag program
swb.wgs     sample configuration prepared for Panair
tnd6480.wgs sample wing-body configuration of NASA TN D-6480
tp2608.wgs  sample wing-body configuration of NASA TP 2608
=========== =======================================================

To compile this program, use the command

gfortran 3view.f90 -o 3view.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch the program, enter \"3view.exe\" at the command line. The
program asks for the name of the input WGS file and proceeds to the end
of the computation. The files called plan.gnu, side.gnu, and rear.gnu
are produced as output and may be used with gnuplot or with your
favorite plotting package. For example

gnuplot> plot \'plan.gnu\' with lines

You can use the command

gnuplot> set size ratio -1

to insure that the pictures are not distorted. Otherwize, they will be
stretched both ways to fill your screen.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you are unable or
do not wish to do this, you may :download:`download
3viewexecs.zip <https://data.kitware.com/api/v1/item/5f73feac50a41e3d19b9eae5/download>`__ containing the files
3view.exe, 3view.mac, and 3view.lnx, the executable program for Windows,
Mac OS X, and Linux, each compiled generically for an Intel CPU.



Last updated: 14 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Three-View <3view>` > Three-view download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
