============================================
Download the Arrow Wing Wave Drag Procedures
============================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Arrow
   wing <rogers>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Arrow Wing Wave Drag Procedures
      :name: download-the-arrow-wing-wave-drag-procedures

-  Go to the page of :doc:`references for the Arrow Wing <rogersrefs>`
   program.
-  :download:`Download rogers.zip <https://data.kitware.com/api/v1/item/5f73fed850a41e3d19b9edc6/download>`.

The archive file rogers.zip contains the files:

=========== =============================================
readme.txt  this file - general description
rogers.f90  the source code of the subroutine package
input.txt   how to use the code in rogers.f90
eq.pdf      2 pages of equations from the original report
sample1.f90 a sample program to check the subroutine
sample1.prt expected results from running sample1
fg.pdf      charts of the F and G functions
report.pdf  remake of charts from the original report
=========== =============================================

To test the program sample1, use the command

gfortran sample1.f90 -o sample1.exe

MacOS and Unix (Linux) users should use

gfortran sample1.f90 -o sample1

The module rogers.f90 will be included automatically. Run the program
**sample1** by entering the command

sample1

and the file named sample1.out will be produced that should be identical
to sample1.prt.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Arrow
   wing <rogers>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
