==================================================
Transient Response of Ablating Axisymmetric Bodies
==================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Ablating Axisymmetric Body (ABAXI)

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Transient response of ablating axisymmetric bodies
      including the effects of shape change (ABAXI).
      :name: transient-response-of-ablating-axisymmetric-bodies-including-the-effects-of-shape-change-abaxi.

A computer program has been developed to analyze the transient response
of an ablating axisymmetric body, including the effect of shape change.
The governing differential equation, the boundary conditions for the
analysis on which the computer program is based, and the method of
solution of the resulting finite-difference equations are based upon
`NASA TN D-6220 <_static/tnd6220.pdf>`__. The original program by Lona
Howser, known as NASA Langley program D2430, is described in `NASA TM
X-2375 <_static/tmx2375.pdf>`__. The program has been converted to modern
Fortran and the outdated plotting procedure has been replaced with
Gnuplot output.

Some of the features of the analysis and the associated program are

#. the ablation material is considered to be orthotropic with
   temperature-dependent thermal properties;
#. the thermal response of the entire body is considered simultaneously;
#. the heat transfer and pressure distribution over the body are
   adjusted to the new geometry as ablation occurs;
#. the governing equations and several boundary-condition options are
   formulated in terms of generalized orthogonal coordinates for fixed
   points in a moving coordinate system;
#. the finite-difference equations are solved implicitly; and
#. the instantaneous body shapes can be displayed.

The physical problem to be modeled with the analysis is described by
Fortran input variables. For example, the external body geometry is
described in the W, Z coordinates; material density is given; and the
stagnation cold-wall heating rate is given in a time-dependent array.
Other input variables are required which control the solution, specify
boundary conditions, and determine output from the program. The
equations have been programmed so that either the International System
of Units or the U. S. Customary Units may be used.

This program was released by NASA through COSMIC as LAR-11049. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the ABAXI <abaxirefs>`
   program.
-  Go to the :doc:`Download Page <abaxidownload>` for the ABAXI
   program.



Last updated: 14 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Ablating Axisymmetric Body (ABAXI)

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
