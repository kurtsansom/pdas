================================================================
A Smoothing Algorithm for Approximating Data with a Cubic Spline
================================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   FairData

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Data Fairing with a Smoothing Spline
      :name: data-fairing-with-a-smoothing-spline

   Compute the coefficients of a cubic spline that approximates a set of
   data.

When wind tunnel data is presented in a report, it is usually shown
plotted on Cartesian axes with the data points shown as symbols. A curve
is usually presented along with these points; this curve does not go
precisely through each point, but it is offered as a smooth curve that
represents the data. This curve is called the **fairing** of the data or
sometimes the **fair curve** through the data. The old way to create
these curves required the test engineer or data technician to plot the
data points, usually on a large piece of paper, and to use pencil,
eraser, plastic curves and judgment to draw the fairing of the data. In
the modern digital world, we seem to be agreed that we are not going to
do it the old way, but it is not entirely obvious what new technique is
going to replace the hours and hours of hand labor required for the
traditional plots.

One approach is that of a smoothing spline as described in `NASA TN
D-7397 <https://docs.google.com/open?id=0B2UKsBO-ZMVgYk9rN01lWWxFLWs>`__
by Robert Smith, Joseph Price and Lona Howser of NASA Langley. This
program was not released by NASA through COSMIC. The source code was
obtained by a scan of TN D-7397.

-  Go to the page of :doc:`references for the FairData <fairdatarefs>`
   program.
-  Go to the :doc:`download page <fairdatadownload>` for the Fairdata
   program.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   FairData

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
