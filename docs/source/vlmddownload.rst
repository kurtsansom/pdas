================================================
Download the Vortex Lattice Minimum Drag program
================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`VLMD <vlmd>` > VLMD download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Vortex Lattice Minimum Drag Program
      :name: download-the-vortex-lattice-minimum-drag-program

-  Go to the page of :doc:`references for the VLMD <vlmdrefs>`
   program.
-  :download:`Download vlmd.zip <https://data.kitware.com/api/v1/item/5f73fee350a41e3d19b9ee8c/download>`, containing the source code
   and sample cases.

The archive file vlmd.zip contains the files:

============ ==========================================================
lar15160.txt the original COSMIC description of the program
readme.txt   general information
read.me      extra input information supplied by Raj Nangia
input.txt    instructions for use of VLMD
geom.for     the source code for geometry
analysis.for the source code for analysis
case1.inp    input data for test case 1
case1.out    combined output from geom and analysis for this test case.
case2.inp    input data for test case 2
case2.out    combined output from geom and analysis for this test case.
case3.inp    input data for test case 3
case3.out    combined output from geom and analysis for this test case.
case4.inp    input data for test case 4
case4.out    combined output from geom and analysis for this test case.
============ ==========================================================

To compile this program for your computer, use the commands

gfortran geom.f90 -o geom.exe gfortran analysis.for -o analysis.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To run this pair of programs, one first enters the command

geom

The geom program asks for the name of the input file. This must be a
file written to conform to the instructions in the NASA TN. Geom
produces a file called geom.out and a specially formatted file called
FORT25. FORT25 is not designed to be read or printed; it is the input to
Analysis. To launch the analysis program, enter the command

analysis

When Analysis is launched, it asks no questions, but takes the file
called FORT25 and completes the remainder of the calculations. This
produces a file called analysis.out that is designed to be printed.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you are unable or
do not wish to do this, you may `download
vlmdexecs.zip <https://data.kitware.com/api/v1/item/5f73fee350a41e3d19b9ee98/download>`__ containing the files geom.exe,
geom.mac, and geom.lnx, the geom executable program for Windows, Mac OS
X, and Linux, each compiled generically for an Intel CPU. Similarly, it
contains analysis.exe, analysis.mac, and analysis.lnx.

Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`VLMD <vlmd>` > VLMD download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
