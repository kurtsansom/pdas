====================================
Download the Rational Spline Program
====================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Rational Splines <rspline>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Rational Spline Program
      :name: download-the-rational-spline-program

-  Go to the page of :doc:`references for the rational
   spline <rsplinerefs>` procedures.
-  :download:`Download rspline.zip <https://data.kitware.com/api/v1/item/5f73fed950a41e3d19b9ede4/download>`.

The archive file rspline.zip contains the files:

============ ==================================================
lar13694.txt the original program description from COSMIC
readme.txt   general description
ratspl.f90   the complete source code in modern Fortran
example1.f90 example program #1
example2.f90 example program #2
example1.out output from running example1
example2.out output from running example2
original.src the original copy of the source code (from COSMIC)
============ ==================================================

This is not a program, but a collection of subroutines that may be
called by a driver program. Two test programs are shown to illustrate
the procedures.

To run example1, first compile the sample program with the command

gfortran example1.f90 -o example1.exe

Launch the test program by typing *example1.exe* at the command line.
There is no input file. The test program will display the output on the
terminal screen.

And similarly for example2.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Rational splines <rspline>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
