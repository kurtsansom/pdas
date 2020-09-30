============================================
Download the Hypersonic Aerodynamics Program
============================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Hypersonic Aerodynamics <hyper>` > Hypersonic Aerodynamics
   download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Hypersonic Aerodynamics Program
      :name: download-the-hypersonic-aerodynamics-program

-  Go to the page of :doc:`references for the Hypersonic
   Aerodynamics <hyperrefs>` program.
-  :download:`Download hyper.zip <https://data.kitware.com/api/v1/item/5f73fec150a41e3d19b9ec6d/download>`, containing the source
   code and sample cases.
-  :download:`Download mark4.zip <https://data.kitware.com/api/v1/item/5f73fec750a41e3d19b9ecd8/download>`, containing the source
   code to the classic USAF program. This will not compile on modern
   Fortran, but may be acceptable to some systems that honor legacy
   extensions.

The archive file hyper.zip contains the files:

+-------------+-------------------------------------------------------+
| readme.txt  | this file of general description                      |
+-------------+-------------------------------------------------------+
| hyper.f90   | the source code in modern Fortran                     |
+-------------+-------------------------------------------------------+
| methods.f90 | a major module needed by hyper.f90                    |
+-------------+-------------------------------------------------------+
| input.txt   | instructions for preparing input & interpreting       |
|             | output                                                |
+-------------+-------------------------------------------------------+
|             | Sample cases for this program are:                    |
+-------------+-------------------------------------------------------+
| tmx1242.inp | input for wing-body configuration of NASA TM X-1242   |
+-------------+-------------------------------------------------------+
| tmx1242.out | output from running hyper on tmx1242.inp              |
+-------------+-------------------------------------------------------+
| tmx1242.dbg | log file from running tmx1242.inp                     |
+-------------+-------------------------------------------------------+
| tmx1242.mak | input file for program makewgs to make the            |
|             | tmx1242.wgs input file                                |
+-------------+-------------------------------------------------------+
| tmx1242.wgs | the geometry file describing the vehicle in TM X-1242 |
+-------------+-------------------------------------------------------+
| tnd6480.\*  | 5 files, similar to above, but for NASA TN D-6480     |
+-------------+-------------------------------------------------------+

To compile this program for your computer, use the command

gfortran hyper.f90 -o hyper.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.
The module methods.f90 will be included automatically.



Last updated: 11 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Hypersonic Aerodynamics <hyper>` > Hypersonic Aerodynamics
   download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
