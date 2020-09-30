====================================================
Download the Gas Properties Procedure and Test Cases
====================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Gasp <gasp>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Gas Properties Procedure and Test Cases
      :name: download-the-gas-properties-procedure-and-test-cases

-  Go to the page of :doc:`references for the Gas
   Properties <gasprefs>` program.
-  :download:`Download gasp.zip <https://data.kitware.com/api/v1/item/5f73febf50a41e3d19b9ec3d/download>`.

The archive file gasp.zip contains the files:

============ ================================================
lew11629.txt the original program description from COSMIC
readme.txt   general description
g.for        the source code of the subroutine package
sample1.for  a sample program - table of thermo. props.
sample1.out  expected results from running sample1
sample2.for  a sample program - table of transport properties
sample2.out  expected results from running sample2
problem1.f90 Example problem #1 from the report
problem1.out expected results from running problem1
problem2.f90 Example problem #2 from the report
problem2.out expected results from running problem2
problem3.f90 Example problem #3 from the report
problem3.out expected results from running problem3
problem4.f90 Example problem #4 from the report
problem4.out expected results from running problem4
original.src the original source code (from COSMIC)
============ ================================================

To compile this program for your computer, use the command

gfortran fair.f90 -o fair.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.



Last updated: 11 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Gasp <gasp>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
