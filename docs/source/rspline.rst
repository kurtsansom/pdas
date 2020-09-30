===========================
Rational Spline Subroutines
===========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Rational Splines

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Rational Spline Subroutines
      :name: rational-spline-subroutines

Scientific data often contains random errors that make plotting and
curve-fitting difficult. The Rational-Spline Approximation with
Automatic Tension Adjustment algorithm lead to a flexible, smooth
representation of experimental data.

The user sets the conditions for each consecutive pair of knots:(knots
are user-defined divisions in the data set) to apply no tension; to
apply fixed tension; or to determine tension with a tension adjustment
algorithm. The user also selects the number of knots, the knot
abscissas, and the allowed maximum deviations from line segments. The
selection of these quantities depends on the actual data and on the
requirements of a particular application. This program differs from the
usual spline under tension in that it allows the user to specify
different tension values between each adjacent pair of knots rather than
a constant tension over the entire data range. The subroutines use an
automatic adjustment scheme that varies the tension parameter for each
interval until the maximum deviation of the spline from the line joining
the knots is less than or equal to a user-specified amount. This
procedure frees the user from the drudgery of adjusting individual
tension parameters while still giving control over the local behavior of
the spline.

This program was released by NASA through COSMIC as LAR-13694. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the rspline <rsplinerefs>`
   program.
-  Go to the :doc:`download page <rsplinedownload>` for the rational
   spline procedures.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Rational Splines

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
