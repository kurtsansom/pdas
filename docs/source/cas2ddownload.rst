==========================
Download the CAS2D Program
==========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Cascade Flow <cas2d>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Cascade Flow Analysis Program
      :name: download-the-cascade-flow-analysis-program

-  Go to the page of :doc:`references for the CAS2D <cas2drefs>`
   program.
-  :download:`Download cas2d.zip <https://data.kitware.com/api/v1/item/5f73feb350a41e3d19b9eb71/download>`, containing the source
   code and sample cases.

The archive file cas2d.zip contains the files:

============ ==================================================
lew13854.txt the program description from COSMIC
readme.txt   general description
original.src the original copy of the source code (from COSMIC)
cas2d.f90    the complete source code in modern Fortran
case1.inp    Sample input case in original format
case1.out    Output from sample case1
============ ==================================================

To compile this program for your machine, use the command:

gfortran cas2d.f90 -o cas2d.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch the program, enter \"cas2d\" at the command line. This old
program uses a legacy style of assuming the input is from standard input
and output to standard output.

cas2d < mycase.inp > mycase.out

There seems to some residual problem with this code. Even though it runs
and produces satisfactory answers, it always gives warnings of invalid
floating point operations, namely a denormal flag. I will continue to
investigate, but I want to release it because some of you may well be
better at diagnostics than I am.



Last updated: 14 November 2019 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Cascade Flow <anduct>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
