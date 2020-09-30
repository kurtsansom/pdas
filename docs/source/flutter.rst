===========================================================================================
Modified Strip Analysis Method For Predicting Wing Flutter At Subsonic To Hypersonic Speeds
===========================================================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Flutter

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Modified Strip Analysis Method For Predicting Wing
      Flutter At Subsonic To Hypersonic Speeds
      :name: modified-strip-analysis-method-for-predicting-wing-flutter-at-subsonic-to-hypersonic-speeds

A modified strip analysis has been developed for rapidly predicting
flutter of finite-span, swept or unswept wings at subsonic to hypersonic
speeds. The method employs distributions of aerodynamic parameters which
may be evaluated from any suitable linear or nonlinear steady-flow
theory or from measured steady-flow load distributions for the
underformed wing. The method has been shown to give good flutter results
for a broad range of wings at Mach number from 0 to as high as 15.3.

The principles of the modified strip analysis may be summarized as
follows: Variable section lift-curve slope and aerodynamic center are
substituted respectively, for the two-dimensional incompressible-flow
values of 2 pi and quarter chord which were employed by Barmby,
Cunningham, and Garrick. Spanwise distributions of these steady-flow
section aerodynamic parameters, which are pertinent to the desired
planform and Mach number, are used. Appropriate values of Mach
number-dependent circulation functionsare obtained from two-dimensional
unsteady compressible-flow theory.

Use of the modified strip analysis avoids the necessity of reevaluating
a number of loading parameters for each value of reduced frequency,
since only the modified circulation functions, and of course the reduced
frequency itself, vary with frequency. It is therefore practical to
include in the digital computing program a very brief logical
subroutine, which automatically selects reduced-frequency values that
converge on a flutter solution. The problem of guessing suitable
reduced-frequency values is thus eliminated, so that a large number of
flutter points can be completely determined in a single brief run on the
computing machine. If necessary, it is also practical to perform the
calculations manually.

Flutter characteristics have been calculated by the modified strip
analysis and compared with results of other calculations and with
experiments for Mach numbers up to 15.3 and for wings with sweep angles
from 0 degrees to 52.5 degrees, aspect ratios from 2.0 to 7.4, taper
ratios from 0.2 to 1.0, and center-of-gravity positions between 34%
chord and 59% chord. These ranges probably cover the great majority of
wings that are of practical interest with the exception of very
low-aspect-ratio surfaces such as delta wings and missile fins.

This program was released by NASA through COSMIC as LAR-10199. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Flutter <flutterrefs>`
   program.
-  :download:`Download flutter.zip <https://data.kitware.com/api/v1/item/5f73febd50a41e3d19b9ec1f/download>`, containing the
   original source code, the source code converted to modern Fortran,
   and two test cases.



Last updated: 11 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Flutter

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
