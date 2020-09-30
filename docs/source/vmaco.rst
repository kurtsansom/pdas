============================================================
Vmaco-Variable Metric Algorithm For Constrained Optimization
============================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Vmaco

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Variable Metric Algorithm For Constrained Optimization
      :name: variable-metric-algorithm-for-constrained-optimization

VMACO, the Variable Metric Algorithm for Constrained Optimization, is a
non-linear program developed to calculate the least value of a function
of n variables subject to general constraints (both equality and
inequality). Generally, the first set of constraints is an equality (the
target) and the remaining constraints are inequalities (boundaries). The
VMACO program utilizes an iterative method in seeking the optimal
solution. It can be \"hooked\" into a driver program (examples are
provided) which can calculate the values for the real function,
constraints, and their first order partials with respect to the
controls.

It is assumed that the objective function is convex and unimodal in
nature. The user should be familiar enough with his simulation so that
local maxima and minima can be recognized.

The algorithm is based upon a variable metric method presented by M.J.D.
Powell and a quadratic programming method by R. Fletcher. This
implementation requires more overhead in calculating each new control
variable, but fewer iterations are required for convergence. In
comparison with other algorithms, it has been found that VMACO handles
test cases with constraints particularly well, and that less execution
time is necessary for convergence.

This program was released by NASA through COSMIC as MSC-21275. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the VMACO <vmacorefs>`
   program.
-  :download:`Download vmaco.zip <https://data.kitware.com/api/v1/item/5f73fee450a41e3d19b9eea0/download>`, containing the original
   source code, the source code converted to modern Fortran, and several
   test cases.

Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Vmaco

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
