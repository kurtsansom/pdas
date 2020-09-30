==============================================
Variable Dimension Automatic Synthesis Program
==============================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > VASP

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Variable Dimension Automatic Synthesis Program - VASP
      :name: variable-dimension-automatic-synthesis-program---vasp

VASP is a variable dimension Fortran version of the Automatic Synthesis
Program, ASP. The program is used to implement Kalman filtering and
control theory. Basically, it consists of 31 subprograms for solving
most modern control problems in linear, time-variant (or time-invariant)
control systems. These subprograms include operations of matrix algebra,
computation of the exponential of a matrix and its convolution integral,
and the solution of the matrix Riccati equation. The user calls these
subprograms by means of a FORTRAN main program, and so can easily obtain
solutions to most general problems of extremization of a quadratic
functional of the state of the linear dynamical system. Particularly,
these problems include the synthesis of the Kalman filter gains and the
optimal feedback gains for minimization of a quadratic performance
index.

VASP, as an outgrowth of the Automatic Synthesis Program, has the
following improvements: more versatile programming language; more
convenient input/output format; some new subprograms which consolidate
certain groups of statements that are often repeated; and variable
dimensioning. The pertinent difference between the two programs is that
VASP has variable dimensioning and more efficient storage. The
documentation for the VASP program contains a VASP dictionary and
example problems. The dictionary contains a description of each
subroutine and instructions on its use. The example problems include
dynamic response, optimal control gain, solution of the sampled data
matrix Riccati equation, matrix decomposition, and a pseudo-inverse of a
matrix.

This program was released by NASA through COSMIC as ARC-10616. The
italicized text above is from the official NASA release. The
`ORACLS <oracls>` program in this collection was built upon VASP,
which, in turn, was built upon ASP. ORACLS uses a different scheme for
data storage, so the subroutine calls are not compatible.

-  Go to the page of :doc:`references for the ORACLS and
   VASP <oraclsrefs>` programs.
-  :download:`Download vasp.zip <https://data.kitware.com/api/v1/item/5f73fee150a41e3d19b9ee6e/download>`, containing the original
   source code, the source code converted to modern Fortran, and several
   test cases.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > VASP

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
