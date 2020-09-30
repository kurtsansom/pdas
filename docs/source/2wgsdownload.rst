======================================
Download the LaWgs Conversion Programs
======================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`ConvertToWGS <2wgs>` > Downloads

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the LaWgs Conversion Programs
      :name: download-the-lawgs-conversion-programs
-  :download:`Download 2wgs.zip <https://data.kitware.com/api/v1/file/5f73fea850a41e3d19b9eac3/download>`
   containing the source code
   and sample cases for wb2wgs, wd2wgs, a5022wgs, and hab2wgs. The
   program hab2wgs is still incomplete and must be regarded as \"In
   Progress\".
-  Go to the page of :doc:`references for the conversion <2wgsrefs>`
   programs.

The archive file 2wgs.zip contains the files:

readme1.txt

General description of wb2wgs.

readme2.txt

General description of wd2wgs.

readme3.txt

General description of a5022wgs.

readme4.txt

General description of hab2wgs.

wb2wgs.f90

the complete source code for wb2wgs

wd2wgs.f90

the complete source code for wd2wgs

a5022wgs.f90

the complete source code for a5022wgs

hab2wgs.f90

the complete source code to hab2wgs (still \'In Progress\').

sample cases

tnd4211.inp

input data for wing-body configuration of NASA TN D-4211

tnd7505.inp

input data for wing-body configuration of NASA TN D-7505

tnd4211.wgs

output data for wing-body configuration of NASA TN D-4211

tnd7505.wgs

output data for wing-body configuration of NASA TN D-7505

wdcase1.inp

input data for a WaveDrag test case

wdcase1.wgs

output data produced by wd2wgs

swb.inp

input data for simple wing-body test case

swb.wgs

output produced by swb.inp

You may also wish to download the NASA document defining the LaWgs
standard. This is the first reference on the :doc:`page of
references <2wgsrefs>`.

To compile these program, use the commands

gfortran wb2wgs.f90 -o wb2wgs.exe

gfortran wd2wgs.f90 -o wd2wgs.exe

gfortran a502wgs.f90 -o a5022wgs.exe

gfortran hab2wgs.f90 -o hab2wgs.exe

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may :download:`download 2wgsexecs.zip <https://data.kitware.com/api/v1/item/5f73feaa50a41e3d19b9eacd/download>` with
executables for each program. This archive contains wb2wgs.exe,
wb2wgs.mac, wb2wgs.lnx, the executable wb2wgs program for Windows, Mac
OS X, and Linux, each compiled generically for Intel CPU. Similarly, it
contains wd2wgs.exe, wd2wgs.mac, and wd2wgs.lnx as well as a5022wgs.exe,
a5022wgs.mac, and a5022wgs.lnx. The programs hab2wgs.exe, hab2wgs.mac,
and hab2wgs.lnx will be added later.



Last updated: 9 July 2017 by Ralph Carmichael, pdaerowebmaster@gmail.com

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`ConvertToWGS <2wgs>` > Downloads

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
