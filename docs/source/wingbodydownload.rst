=============================
Download the WingBody Program
=============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`WingBody <wingbody>` > WingBody download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the WingBody Program
      :name: download-the-wingbody-program

-  Go to the page of :doc:`references for the WingBody <wingbodyrefs>`
   program.
-  :download:`Download wingbody.zip <https://data.kitware.com/api/v1/item/5f73fee750a41e3d19b9eede/download>`, containing the
   source code and sample cases.

The archive file wingbody.zip contains the following files:

============ ========================================================
readme.txt   general instructions
wingbody.txt instructions for preparing input and interpreting output
wingbody.for the complete source code
\            sample cases
wdcase1.inp  input data for test case similar to case1 for WaveDrag
wdcase1.out  output from WingBody for this test case
tnd7505.inp  input data for wing-body configuration of NASA TN D-7505
tnd7505.out  output from WingBody for this test case
tnd4211.inp  input data for wing-body configuration of NASA TN D-4211
tnd4211.out  output from WingBody for this test case
caseslnx.zip above cases with Unix end of line
============ ========================================================

To compile this program for your computer, use the command

gfortran wingbody.f90 -o wingbody.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch the program, enter \"wingbody.exe\" at the command line. The
program asks for the name of the input file and proceeds to the end of
the computation. A file called wingbody.out is produced as output.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download
wingbodyexec.zip <https://data.kitware.com/api/v1/item/5f73fee850a41e3d19b9eee8/download>`__ containing the files
wingbody.exe, wingbody.mac, and wingbody.lnx, the executable programs
for Windows, Mac OS X, and Linux, each compiled generically for an Intel
CPU.

Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`WingBody <wingbody>` > WingBody download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
