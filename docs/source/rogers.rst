==========================
Wave Drag of an Arrow Wing
==========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS Home <index>` > :doc:`Contents <contents16>` > Arrow
   Wing

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Wave Drag of an Arrow Wing
      :name: wave-drag-of-an-arrow-wing

In many exercises in optimization problems involving supersonic
vehicles, it is useful to have an expression for wave drag of a wing
with straight leading and trailing edges, pointed tip, and a simple
airfoil section. While this solution is not extremely difficult, it is
perhaps beyond what can be expected of a student or preliminary design
team looking for a quick answer.

Arthur Rogers wrote a report in 1958 based on a 1947 article in the
Journal of the Aeronautical Sciences by Allen Puckett and K. Stewart
that gives a closed form solution for an arrow wing with a three-slope
(hexagonal) section. Puckett and Stewart based their analysis on the
technique of superimposing conical flow solutions developed by Doris
Cohen. Rogers generalized the 1947 results to include a non-zero
trailing edge angle and produced a number of charts that have been
widely used as well as a clear description of the computational process.
The equations are not difficult to program, but some care must be taken
because there are several fractions that must be evaluated at points
where the numerator and denominator are zero. The limiting forms must be
solved for and the programming must take care to avoid division by zero
and use the limits instead.

The equations were coded at NASA Ames Research Center back in the 1960s
and much of the original history of the authors of the code has been
lost. I rescued the original code and have updated it to be compatible
with modern Fortran in hopes that students and designers will not be
daunted by the F and G functions in Rogers\' report and use this for
some interesting studies. There are many interesting variations
associated with relocating the region of maximum thickness.

This program was not released by NASA through COSMIC.

-  Go to the page of :doc:`references for the Arrow Wing <rogersrefs>`
   program.
-  Go to the :doc:`download page <rogersdownload>` for the Arrow Wing
   Procedures.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS Home <index>` > :doc:`Contents <contents16>` > Arrow
   Wing

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
