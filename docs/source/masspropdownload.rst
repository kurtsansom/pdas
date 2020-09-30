====================================
Download the Mass Properties Program
====================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Mass
   Properties <massprop>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Mass Properties Program
      :name: download-the-mass-properties-program

-  Go to the page of :doc:`references for the Mass
   Properties <massproprefs>` program.
-  `Download
   massprop.zip <https://www.pdas.com/packages/massprop.zip>`__.

The archive file massprop.zip contains the files:

============ ==================================================
lar12454.txt the original program description from COSMIC
readme.txt   general description
input.txt    guide for writing the input file
massprop.f90 the complete source code in modern Fortran
original.src the original copy of the source code (from COSMIC)
\            Sample cases for this program are:
example1.inp input data for example 1
example1.out output data for example1.inp
example2.inp input data for example 2
example2.out output data for example2.inp
example3.inp input data for example 3
example3.out output data for example3.inp
============ ==================================================

To recompile this program for your machine, use the command

gfortran massprop.f90 -o massprop.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch the program, enter the command

massprop

at the command line. This program first asks for the name of the input
file. This must be a file written to conform to input.txt. After
calculating the solution, the program produces a file called
massprop.out with output information.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download
masspropexecs.zip <https://data.kitware.com/api/v1/item/5f73fec950a41e3d19b9ece4/download>`__ containing the files
massprop.exe, massprop.mac, and massprop.lnx, the executable program for
Windows, Mac OS X, and Linux, each compiled generically for an Intel
CPU.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Mass
   Properties <massprop>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
