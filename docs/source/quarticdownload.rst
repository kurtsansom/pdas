=======================================
Download the Quartic Polynomial Program
=======================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Quartic Polynomial <quartic>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Quartic Polynomial Program
      :name: download-the-quartic-polynomial-program

-  :download:`Download quartic.zip <https://data.kitware.com/api/v1/item/5f73fed550a41e3d19b9ed9c/download>`.

The archive file quartic.zip contains the files:

=========== ================================
readme.txt  this file of general description
quartic.f90 the complete source code
=========== ================================

To compile this program for your computer, use the command

gfortran quartic.f90 -o quartic.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

This program computes the solution to the polynomial equation

a*x**4 + b*x**3 + c*x**2 + d*x + e = 0

with real coefficients.

The program asks for the coefficients of each term of the polynomial to
be solved. If you are solving a cubic, answer zero to the question
\"What is the coefficient of the quartic term?\"

It is best if you compile the program using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download
quarticexecs.zip <https://www.pdas.com/packages/quarticexecs.zip>`__
containing the files quartic.exe, quartic.mac, and quartic.lnx, the
executable program for Windows, Mac OS X, and Linux, each compiled
generically for an Intel CPU.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Quartic Polynomial solver <quartic>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
