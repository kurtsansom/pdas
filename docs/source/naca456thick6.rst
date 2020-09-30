=================================================
Thickness Distribution of a NACA 6-Series Airfoil
=================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456pdas>` > 6-Series

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Thickness Function for NACA 6-Series Airfoils
      :name: thickness-function-for-naca-6-series-airfoils

The NACA 6-series and 6A-series airfoils are defined by means of
conformal transformations. These relate the flow over an airfoil to that
of a near-circle and that to a circle. The basic reference is
Theodorsen, NACA 411.

The NACA 6-series airfoils are calculated by a nonlinear mapping of a
unit circle by a four-step algorithm that uses a pair of functions
defined on [0,pi] named psi and epsilon that were chosen to satisfy a
prescribed velocity distribution about the airfoil. The definition of
the psi and epsilon functions is described in refs 7-8. Each of the five
members of the 6-series family and the three members of the 6A-series
family has its own psi and epsilon functions. These functions are
multiplied by a scale factor to produce airfoils of various thickness to
chord ratios. The mapping is shown in figure 1. A given value of the
scale factor is used to multiply both basic parameters giving new values
of the psi and epsilon functions that will be used in the mapping. A
given value of scale factor will produce a certain thickness to chord
ratio of the airfoil in the normalized physical plane. It is not known
in advance just what thickness will result from a given value of the
scale factor. The algorithms of references 1 and 3 use an iterative
procedure to determine the scaling factor required to achieve an airfoil
of a given thickness.

The algorithm used in the present method is based upon a study of the
scaling factor required to achieve a given thickness. Calculations were
made of the thickness resulting from a given value of scale factor for
each of the eight airfoil families. The dependency is somewhat nonlinear
but easily fitted as a polynomial with four coefficients. The fitting is
done on the data as if scale factor c is a function of t/x.

c=K\ :sub:`1`\ (t/c) + K\ :sub:`2`\ (t/c)\ :sup:`2` +
K\ :sub:`3`\ (t/c)\ :sup:`3` + K\ :sub:`4`\ (t/c)\ :sup:`4`

and the K-values for each family are given by:

=== =========== =========== =========== ===========
    K\ :sub:`1` K\ :sub:`2` K\ :sub:`3` K\ :sub:`4`
=== =========== =========== =========== ===========
63  8.1827700   1.3776209   -0.0928517  7.5942563
64  4.6535511   1.0380630   -1.5041794  4.7882784
65  6.5718716   0.4937629   0.7319794   1.9491474
66  6.7581414   0.1925377   0.8128826   0.852090
67  6.6272890   0.0989966   0.9675977   0.9053758
63A 8.1845925   1.0492569   1.3115094   4.4515579
64A 8.2125018   0.7685596   1.4922345   3.6130133
65A 8.2514822   0.4656936   1.5013018   2.0908904
=== =========== =========== =========== ===========

Now, for a specified family and thickness, the thickness distribution
may be determined without iteration. From the thickness, the scale
factor is computed from the polynomial function shown above. Then, the
scale factor is used to multiply the basic values of the psi and epsilon
functions for this airfoil family. These scaled psi and epsilon
functions are used in mapping the z-plane to the z\'-plane shown in
Figure 1. The Joukowski function zeta = z\' + 1/z\' then maps the
z\'-plane into the zeta-plane and these results are normalized so that
the leading edge is at x=0 and the trailing edge is at x=1.



Last updated: 6 September 2020 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoil <naca456pdas>` > 6-Series

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
