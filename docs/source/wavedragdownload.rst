==========================================
Download the Wavedrag by Area Rule Program
==========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Wavedrag <wavedrag>` > Wavedrag download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Wavedrag by Area Rule Program
      :name: download-the-wavedrag-by-area-rule-program

-  Go to the page of :doc:`references for the Wavedrag <wavedragrefs>`
   program.
-  :download:`Download wavedrag.zip <https://data.kitware.com/api/v1/item/5f73fee650a41e3d19b9eec8/download>`.

The archive file wavedrag.zip contains the files:

============ ========================================================
readme.txt   this file - general description
cases.txt    description of the sample cases supplied
lar13223.txt original COSMIC description file
d2500.for    the complete source code
\            D2500 was the internal NASA Langley name of the program)
input.txt    Instructions for preparing input
output.txt   How to interpret the output files
\            sample cases
case1.inp    input for sample case1
case1.out    output for sample case1
case2.inp    input for sample case2
case2.out    output for sample case2
case3.inp    input for sample case3
case3.out    output for sample case3
case4.inp    input for sample case4
case4.out    output for sample case4
caseslnx.zip 4 cases above with Unix end-of-line
============ ========================================================

To compile this program for your computer, use the command

gfortran d2500.f90 -o 2500.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch the program, enter \"d2500.exe\" at the command line. The
program asks for the name of the input file and proceeds to the end of
the computation. A file called d2500.out is produced as output.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download
wavedragexecs.zip <https://data.kitware.com/api/v1/item/5f73fee750a41e3d19b9eed2/download>`__ containing the files
d2500.exe, d2500.mac, and d2500.lnx, the executable program for Windows,
Mac OS X, and Linux, each compiled generically for an Intel CPU.



| Last updated: 17 April 2013 by Ralph Carmichael, webmaster@pdas.com
| Public Domain Aeronautical Software
| P.O. Box 1438 Santa Cruz CA 95061 USA

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Wavedrag <wavedrag>` > Wavedrag download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
