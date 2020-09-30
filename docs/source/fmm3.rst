=======================================================
Coding of Computer Methods for Mathematical Computation
=======================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Computer Methods <fmm>` > Comments

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Comments on Coding
      :name: comments-on-coding

The original source code for the book Computer Methods for Mathematical
Computations by Forsythe, Malcolm and Moler was developed prior to the
release of the Fortran 77 standard. The following notes summarize the
changes made to the original pre-Fortran 77 library to make it into
modern Fortran.

-  The routines all compile under Essential Lahey Fortran (ELF). This
   requires that there is no implicit typing, the intent of all
   procedure arguments is declared, no obsolete control statements are
   used, no COMMON or EQUIVALENCE statements are used and numerous ELF
   requirements on syntax are honored. They also compile with no
   warnings with the strict-Fortran-95 flag with both gfortran and g95.
-  No dimensions are passed as arguments. The intrinsic function SIZE is
   used by all procedures to determine the size of the vectors and
   matrices.
-  All DO-loops are converted to DO-END DO without statement numbers.
   CYCLE and EXIT are used for loop navigation. Loops that count down
   now use the third argument of -1 for decrementing.
-  There are no input or output statements anywhere in the library. All
   procedures that had warning messages now have error code variables
   that signal error conditions.
-  There are single and double precision versions of all procedures.
   There are MODULE INTERFACE statements that allow the same subroutine
   name to be used, regardless of the precision chosen.
-  I have not performed what might be called an \"aggressive\" recoding
   of the older Fortran code. In particular, there are still GO TO
   statements and a number of loops could still be converted to array
   notation or inner-product constructions.
-  If you have studied the codes in Numerical Recipes in Fortran 90, you
   will see numerous occurrences of outerprod, spread, swap, imaxloc and
   other constructions that may shorten the code and possibly make it
   more efficient, but at the expense of requiring the use of a package
   of utility procedures. I have chosen to avoid this.
-  I have avoided all temptations of \"improving\" the numerical
   algorithms themselves. You should get the same numerical values as
   the original coding.
-  The routines Zeroin and Fmin have been recoded with additional
   arguments for added control. The original Zeroin and Fmin functions
   are still included as wrappers for the new BrentZero and BrentMin
   subroutines.
-  The original library included a portable random number generator.
   Since there is now a standard intrinsic in Fortran, I have omitted
   this function.
-  The original library was written entirely in upper case and the
   authors were rather fond of the upper-case letter L as a subscript.
   The variables are now lower case, and I personally abhor the lower
   case letter l as a subscript due to its resemblance to the number one
   and uppercase I. I have removed almost all such occurrences.

One great value of the original code was that the original authors put
no restrictions on the distribution of the code and it may be downloaded
from `Netlib <http://www.netlib.org/>`__. I declare that all of my added
value to the library is contributed to the public domain.

This article is translated to
`Serbo-Croatian <http://science.webhostinggeeks.com/komentari-na-kodiranje>`__
language by `Web Geeks <http://webhostinggeeks.com/>`__ .



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Computer Methods <fmm>` > Comments

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
