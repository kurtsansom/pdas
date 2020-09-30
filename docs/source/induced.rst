========================================
Induced Drag from Span Load Distribution
========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Induced
   Drag

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Induced Drag from Span Load Distribution
      :name: induced-drag-from-span-load-distribution

   The induced drag may be computed from the span load distribution on a
   planar wing. Most books on aerodynamics show how to do this if you
   know the analytical form of the loading function. This algorithm
   enables you to solve the same problem if you only know a few values
   of this loading function.

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

In a note in the Journal of Aircraft, 1977, p309, Jerry Lundry described
a simple algorithm for computing a curve that in one sense is the
smoothest that exactly matches the data points and produces the Fourier
sine coefficients as part of the solution. This technique and other
similar algorithms are used widely by specialists but do not seem to be
well documented and available to students. The routines given here are a
coding of Lundry\'s equations 3 and 5 for asymmetric and symmetric
loadings.

The essential routines are encapsulated in a Fortran module. The
coefficients are computed with a call to subroutine
ComputeFourierCoefficients. The drag may then be computed from the
coefficients by use of the function DragFromCoefficients. Lift
coefficient may also be computed. It is simply
PI*span*span*coeff(1)/sref. If you just want the induced drag and don\'t
want to be bothered with the coefficients, you may use the functions
AsymmetricLoadingInducedDrag and SymmetricLoadingInducedDrag. They take
the loadings and return D/q. Be sure to divide by the reference area if
you want drag coefficient. Once you have compiled the module, you have
access to any of the routines by putting the statement USE InducedDrag
in your application programs.

For those folks who want a stand-alone program and don\'t want to
compile their own, I have supplied a program called induced.exe that
reads the essential loading information from a file and produces a file
with the essential results that is designed to be printed.

You may note that the code is written in Fortran 90. This was done to
make use of dynamic storage allocation . If the loads are known at N
points and you use M terms in the Fourier series, then you need to build
a square matrix with M+N rows and columns to perform the solution. If we
were to code this with Fortran 77, we would need some technique of
passing this work array into the various routines that require it. With
modern Fortran, you just allocate the memory when you need it and
deallocate it when you are finished. First class!

-  Go to the page of :doc:`references for the Induced
   Drag <inducedrefs>` program.
-  Go to the :doc:`download page <induceddownload>` for the Induced
   Drag program.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Induced
   Drag

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
