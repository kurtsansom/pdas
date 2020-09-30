==========================
Download the ABAXI Program
==========================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`ABAXI <abaxi>` > Download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the ABAXI program
      :name: download-the-abaxi-program

-  Go to the page of :doc:`references for the ABAXI <abaxirefs>`
   program.
-  :download:`Download abaxi.zip <https://data.kitware.com/api/v1/item/5f73feac50a41e3d19b9eaef/download>`, containing the original
   source code, the source code converted to modern Fortran, and several
   test cases.

The archive file abaxi.zip contains the files:

============ ==============================================
lar11049.txt the original program description (from COSMIC)
readme.txt   General description.
abaxi.f90    the complete source code for ABAXI
original.src the original source code (from Cosmic)
tmcase1.inp  input data for test case 1 (from TM X-2375)
tmcase1.out  output data for test case 1
tmcase2.inp  input data for test case 2 (from TM X-2375)
tmcase2.out  output data for test case 2
tmcase3.inp  input data for test case 3 (from TM X-2375)
tmcase3.out  output data for test case 3
============ ==============================================

To compile this program, use the command

gfortran abaxi.f90 -o abaxi.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch the program, enter \"abaxi.exe\" at the command line. The
program asks for the name of the input file and proceeds to the end of
the computation. A file called abaxi.out is produced as output.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you unable or do
not wish to do this, you may `download
abaxiexec.zip <https://data.kitware.com/api/v1/item/5f73fead50a41e3d19b9eafb/download>`__ containing the files
abaxi.exe, abaxi.mac, and abaxi.lnx, the executable program for Windows,
Mac OS X, and Linux, each compiled generically for an Intel CPU.



Last updated: 9 July 2017 by Ralph Carmichael, pdaerowebmaster@gmail.com

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`ABAXI <abaxi>` > Download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
