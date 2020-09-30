=================================
Download the Induced Drag Program
=================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Induced Drag <induced>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Induced Drag Program
      :name: download-the-induced-drag-program

-  Go to the page of :doc:`references for the Induced
   Drag <inducedrefs>` program.
-  :download:`Download induced.zip <https://data.kitware.com/api/v1/item/5f73fec150a41e3d19b9ec77/download>`.

The archive file induced.zip contains the files:

=========== ================================================
readme.txt  general information
id.f90      module of induced drag functions and subroutines
induced.f90 sample program illustrating use
input.txt   instructions for input to induced
case1.ccl   sample cases
case2.ccl   
case3.ccl   
case4.ccl   
case1.out   expected output from case1.ccl, etc.
case2.out   
case3.out   
case4.out   
=========== ================================================

To compile this program for your machine, use the command

gfortran induced.f90 -o induced.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download
inducedexecs.zip <https://data.kitware.com/api/v1/item/5f73fec250a41e3d19b9ec81/download>`__ containing the files
induced.exe, induced.mac, and induced.lnx, the executable program for
Windows, Mac OS X, and Linux, each compiled generically for an Intel
CPU.

In most textbooks on aerodynamics that treat the subject of finite-span
wing theory, one usually sees a development of the concept of computing
the induced drag of the wing from a knowledge of the spanwise load
distribution. The load distribution is a function that defines ccl,
i.e., the local chord multiplied by the local lift coefficient at each
chord of the wing. This is done by developing the loading as a Fourier
sine series and showing that the drag may be calculated from the
coefficients of the series.

When a practising engineer is faced with making a numerical calculation
of induced drag and plans to use this technique, the textbooks don\'t
give very much support because one rarely has a mathematical expression
for the span loading. Instead one usually has a few sparsely spaced
values from a wind tunnel or flight test or a theoretical result from a
grid that is usually more coarse than desired. The few examples where a
numerical example is worked out usually suggest that the number of terms
in the series expansion must be the same as the number of data points,
and this is rarely enough to insure convergence.

In a note in the Journal of Aircraft, 1977, p. 309, Jerry Lundry
described a simple algorithm for computing a curve that in one sense is
the smoothest that exactly matches the data points and produces the
Fourier sine coefficients as part of the solution. This technique and
other similar algorithms are used widely by specialists but do not seem
to be well documented and available to students. The routines given here
are a coding of Lundry\'s equations 3 and 5 for asymmetric and symmetric
loadings.

The essential routines are encapsulated in a Fortran module which is
supplied as id.f90. The coefficients are computed with a call to
subroutine ComputeFourierCoefficients. The drag may then be computed
from the coefficients by use of the function DragFromCoefficients. Lift
coefficient may also be computed. It is simply

PI*span*span*coeff(1)/sref.

If you want only the induced drag and not the coefficients, you may use
the functions AsymmetricLoadingInducedDrag and
SymmetricLoadingInducedDrag. They take the loadings and return D/q. Be
sure to divide by the reference area if you want drag coefficient. Once
you have compiled the module, you have access to any of the routines by
putting the statement

USE InducedDrag

in your application programs.

For those who want a stand-alone program and don\'t want to compile
their own, I have supplied a program called induced that reads the
essential loading information from a file and produces a file with the
essential results. It is designed to be printed. The description of the
input file is in the file induced.txt. The source code is induced.f90
and executables are included for Windows, Linux and Macintosh.

You may note that the code is written in Fortran 90. This was done to
make use of dynamic storage allocation. If the loads are known at N
points and you use M terms in the Fourier series, then you need to build
a square matrix with M+N rows and columns to perform the solution. If we
were to code this with Fortran 77, we would need some technique of
passing this work array into the various routines that require it. With
modern Fortran, you just allocate the memory when you need it and
deallocate it when you are finished. First class!



Last updated: 12 July 2017 by Ralph Carmichael, `webmaster AT gmail DOT
com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Induced Drag <induced>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
