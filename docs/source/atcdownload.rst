=====================================
Download the Aircraft Motions Program
=====================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Aircraft Motions <atc>` > Download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Aircraft Motions Program
      :name: download-the-aircraft-motions-program

-  Go to the page of :doc:`references for the Aircraft
   Motions <atcrefs>` program.
-  :download:`Download atc.zip <https://data.kitware.com/api/v1/item/5f73feb150a41e3d19b9eb47/download>`, containing the source code
   and sample case.

The archive file atc.zip contains the files:

============ ==================================================
arc11132.txt the original program description from COSMIC
readme.txt   general description
input.txt    guide to preparing input for atc
atc.f90      the complete source code in modern Fortran
original.src the original copy of the source code (from COSMIC)
\            Files for this sample case are:
case1.inp    general input data
radar.inp    sample radar data
wind.inp     wind and temperature at altitude
plot.inp     plotting instructions
case1.out    output data for case1.inp and associated files
============ ==================================================

To compile this program for your machine, use the command

gfortran atc.f90 -o atc.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

Launch the program by typing atc.exe at the command line. The program
will ask you user for the names of the input data files. After reading
the input data, the program produces atc.out with the tabulated data and
printer plots.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you are unable or
do not wish to do this, you may `download
atcexecs.zip <https://data.kitware.com/api/v1/item/5f73feb250a41e3d19b9eb55/download>`__ containing the files atc.exe,
atc.mac, and atc.lnx, the executable programs for Windows, Mac OS X, and
Linux, each compiled generically for an Intel CPU.

If you download this program and find it useful, please make a
contribution to enable Public Domain Aeronautical Software continue
making open source software available to the engineering community. If
you click on the button below, you may contribute $20 through the PayPal
site.

|image1|



Last updated: 9 July 2017 by Ralph Carmichael, pdaerowebmaster@gmail.com

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Aircraft Motions <atc>` > Download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. |image1| image:: https://www.paypalobjects.com/en_US/i/scr/pixel.gif
   :width: 1px
   :height: 1px
