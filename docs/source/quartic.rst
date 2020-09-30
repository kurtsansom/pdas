===============================
Quartic/Cubic Polynomial Solver
===============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS Home <index>` > :doc:`Contents <contents16>` > Quartic

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Polynomial Equation Solver
      :name: polynomial-equation-solver

   Versatile Fortran subroutine for your computing projects. Solve for
   the zeroes of polynomial equations with real coefficients up to
   quartic order.

Many problems in science and engineering lead to polynomial equations
and the desired physical quantities must be found by solving for the
zeroes of the equation. Most books on Numerical Computing or Engineering
Mathematics show examples of code for making these calculations. One
must be careful with roundoff and overflow when making these
calculations and the textbook examples frequently do not incorporate
these \"robustness\" features.

The Naval Surface Weapons Center produced a collection of mathematical
software that has wide acceptance. Among this collection is a very nice
coding of the solution of zeroes of polynomial equations with real
coefficients up to quartic order. I noted that Alan Miller of CSIRO had
updated the code to comply with modern Fortran (95), using the Essential
Lahey Fortran compiler, which enforces very strict standards of program
structure and syntax. The modern Fortran code on the disc includes the
subroutine that you may adopt in your own programming projects and a
front-end program that simply inquires for the coefficients of the
polynomial and then prints the answers.

If you want to see some examples of polynomials that lead to numerical
difficulties in their solution, check the :doc:`Difficult
Zeroes <zeroes>` page.

By the way, Alan Miller has a very nice collection of mathematical
procedures coded in excellent Fortran 95 style at his web site. Highly
recommended. I dip in here from time to time for something of interest.
Try `this <http://jblevins.org/mirror/amiller/>`__ mirror for now.

-  Go to the :doc:`download page <quarticdownload>` to download the
   Quartic Polynomial Solver program.

There are dozens, maybe thousands of web pages that are targeted with
terms as \'polynomial solution\', \'cubic polynomial solution\' \'roots
of polynomials\', or similar terms. Many have embedded code that let you
enter your polynomial and give you the solution. I am particularly
impressed with one called PolyRootsRB, as it has arbitrary precision.
The code from PDAS does not try to compete with these classy web sites.
*Quartic* is for folks who want to embed solution code in their own
programs.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS Home <index>` > :doc:`Contents <contents16>` > Quartic

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
