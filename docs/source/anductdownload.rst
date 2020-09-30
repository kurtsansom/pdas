=================================
Download the Annular Duct Program
=================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Annular Duct <anduct>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Annular Duct Program
      :name: download-the-annular-duct-program

-  Go to the page of :doc:`references for the Annular
   Duct <anductrefs>` program.
-  :download:`Download anduct.zip <https://data.kitware.com/api/v1/item/5f73feaf50a41e3d19b9eb27/download>`, containing the source
   code and sample cases.

The archive file anduct.zip contains the files:

============ ==================================================
lew14000.txt the program description from COSMIC
readme.txt   general description
original.src the original copy of the source code (from COSMIC)
an.f90       the complete source code in modern Fortran
============ ==================================================

This program is a \"work in progress\" and is not ready for general
release. I have included it on the disc so those who have a special
interest may see the original code plus my modifications to date.

To compile this program for your machine, use the command:

gfortran an.f90 -o an.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch the program, enter \"an.exe\" at the command line. The program
asks for the name of the input file and proceeds to the end of the
computation. A file called anduct.out is produced as output.



Last updated: 9 July 2017 by Ralph Carmichael, pdaerowebmaster@gmail.com

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Annular Duct <anduct>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
