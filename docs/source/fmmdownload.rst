===============================================
Download the Forsythe-Malcolm-Moler Source Code
===============================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`FMM <fmm>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Forsythe-Malcolm-Moler Source Code
      :name: download-the-forsythe-malcolm-moler-source-code

-  Go to the page of :doc:`references for the FMM <fmmrefs>` program.
-  :download:`Download fmm.zip <https://data.kitware.com/api/v1/item/5f73febe50a41e3d19b9ec29/download>`.

The archive file fmm.zip contains the files:

============ ===================================================
readme.txt   general description
fmm.f90      the source code in modern Fortran
original.src the source code as published with the book
samples.f90  the source code for the sample problems in the book
samples.out  the output expected from executing samples.exe
============ ===================================================

To compile the sample case program, use the command

gfortran samples.f90 -o samples.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To run the program containing all of the sample programs from the book,
give the command

samples

at the command prompt. No additional input is necessary and the program
produces the file samples.out with the computed results.

This collection of Fortran procedures for mathematical computation is
based on the procedures from the book \"Computer Methods for
Mathematical Computations\", by George E. Forsythe, Michael A. Malcolm,
and Cleve B. Moler. Prentice-Hall, 1977. The book has been a classic
textbook for numerical analysis since its publication in 1977. You will
need a copy of the book to make good use of the procedures, although the
subroutine headers are quite informative and together with the samples,
should provide a minimal set of instructions.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`FMM <fmm>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
