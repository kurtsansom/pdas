===============================
Download the Sonic Boom Program
===============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Sonic
   Boom <boom>` > Sonic Boom download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Sonic Boom Program
      :name: download-the-sonic-boom-program

-  Go to the page of :doc:`references for the Sonic Boom <boomrefs>`
   program.
-  :download:`Download boom.zip <https://data.kitware.com/api/v1/item/5f73feb250a41e3d19b9eb67/download>`.

The archive file boom.zip contains the files:

============ ==================================================
readme.txt   this file of general description
boom.f90     the complete source code in modern Fortran
original.src the original copy of the source code (from CR-157)
case1.inp    input data for case 1
case1.out    output data for case 1
case2.inp    input data for case 2
case2.out    output data for case 2
============ ==================================================

To compile this program, use the command

gfortran boom.f90 -o boom.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch the program, type \"boom.exe\" at the command line. The
program will ask you user for the name of the input data file. After
reading the input data, the program produces boom.out.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you are unable or
do not wish to do this, you may `download
boomexecs.zip <https://www.pdas.com/packages/boomexec.zip>`__ containing
the files boom.exe, boom.mac, and boom.lnx, the executable programs for
Windows, Mac OS X, and Linux, each compiled generically for an Intel
CPU.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Sonic
   Boom <boom>` > Sonic Boom download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
