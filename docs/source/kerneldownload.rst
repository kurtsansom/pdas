===========================
Download the Kernel Program
===========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Kernel <kernel>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Kernel Program
      :name: download-the-kernel-program

-  Go to the page of :doc:`references for the Kernel <kernelrefs>`
   program.
-  :download:`Download kernel.zip <https://www.pdas.com/packages/kernel.zip>`.

The archive file kernel.zip contains the files:

============ ==================================================
lar12524.txt the original program description from COSMIC
readme.txt   general description
kernel.f90   the complete source code in modern Fortran
original.src the original copy of the source code (from COSMIC)
\            Sample cases for this program are:
case1.inp    input data for sample case 1
case1.out    output data for case1.inp
============ ==================================================

To compile this program for your machine, use the command

gfortran kernel.f90 -o kernel.exe

Linux and Macintosh users may prefer to omit the .exe on the output file
name.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download
kernelexecs.zip <https://www.pdas.com/packages/kernelexec.zip>`__
containing the files kernel.exe, kernel.mac, and kernel.lnx, the
executable program for Windows, Mac OS X, and Linux, each compiled
generically for an Intel CPU.

To launch the program, enter

kernel

at the command line. The program asks for the name of the input file and
proceeds to the end of the computation. The structure of the input file
must conform to the input guidelines as described in the users guide in
Appendix H of NASA CR-114895 (see reference page). A file called
kernel.out is produced as output.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Kernel <kernel>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
