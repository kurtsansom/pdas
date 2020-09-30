=======================================
Download the Optimum Trajectory Program
=======================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Opttraj <opttraj>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Optimum Trajectory Program
      :name: download-the-optimum-trajectory-program

-  :download:`Download opttraj.zip <https://data.kitware.com/api/v1/item/5f73fece50a41e3d19b9ed38/download>`.

The archive file opttraj.zip contains the files:

============ ===================================================
arc11282.txt the original program description from COSMIC
readme.txt   general information
input.txt    user instructions (still trying to figure this out)
opttraj.f90  the source code in Fortran 90
boeing.inc   common block /BOEING/
case1.aer    sample case input file
case1.dat      \"
case1.eng      \"
case1.in5      \"
case1.in7      \"
case1.out    output for this case
original.src the original copy of the source code (from COSMIC)
============ ===================================================

To compile this program for your machine, use the command

gfortran opttraj.f90 -o opttraj.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch this program, type opttraj.exe at the command line. This
program first asks for the name of the input file. This must be a file
written to conform to input.txt. After calculating the solution, the
program produces a file called opttraj.out with output information.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download
opttrajexecs.zip <https://data.kitware.com/api/v1/item/5f73fecf50a41e3d19b9ed42/download>`__ containing the files
opttraj.exe, opttraj.mac, and opttraj.lnx, the executable program for
Windows, Mac OS X, and Linux, each compiled generically for an Intel
CPU.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Opttraj <opttraj>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
