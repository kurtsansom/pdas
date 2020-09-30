=====================================
Some Polynomials with Difficult Roots
=====================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Quartic <quartic>` > Difficult Zeroes

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Some Difficult Polynomials
      :name: some-difficult-polynomials

One of the simplest problems is that of a quadratic with a large root
and a small root, such as

x\ :sup:`2` - 1E9*x + 1 = 0

The roots are 1E9 and 1E-9 and you will very likely get 1E9 and zero
from most codings of a quadratic root solver such as the old formula of
(1/2a)(-b±sqrt(b**2-4ac)).

Anyone should be able to get the roots of

x\ :sup:`2` - 4*x + 4 = 0

| quite easily as they are both equal to 2.
| But, if we make a very small change to this equation

x\ :sup:`2` - 4*x + 3.999999 = 0

the roots become 2.001 and 1.999. This is an example where a small
relative change in the coefficients induces a much larger change in the
roots.

A similar problem involving cubics is

x\ :sup:`3` - 1E9*x\ :sup:`2` + 3E9*x -2E9 = 0

Here, the roots are 1,2 and 1E9. Your old solver may compute that the
smaller roots are zero, or that they are not accurately spaced.

.. container::
   :name: footer

   Last updated: 20 October 2010 by Ralph Carmichael, webmaster@pdas.com
   Public Domain Aeronautical Software
   P.O. Box 1438 Santa Cruz CA 95061 USA

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Quartic Eq <quartic>` > Difficult Zeroes

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
