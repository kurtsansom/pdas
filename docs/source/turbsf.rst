=======================
Turbulent Skin Friction
=======================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Turbulent Skin Friction

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Turbulent Skin Friction by the Reference Temperature
      Method of Sommer and Short
      :name: turbulent-skin-friction-by-the-reference-temperature-method-of-sommer-and-short

The calculation of skin friction on an airplane from first principles is
an incredibly complex task and requires powerful methods of
computational fluid mechanics. Engineering estimates are usually made
from formulas that were developed to provide an empirical fit to
extensive sets of wind tunnel data on flat plates with no external
pressure gradient.

From the vast collection of measurements of skin friction, there have
been many attempts to make a simple formula which fits the observed
data. All of these formulas are in some sense successful, and the
student of aerodynamics may choose from among them. The formula
developed by Sommer and Short has one feature that is not found in most
other equations. Sommer and Short were primarily concerned with the
large amount of scatter in the data at low hypersonic Mach numbers, and
Reynolds numbers of about one million or less. They found that better
correlations could be obtained if the temperature of the flow is
included as a variable. As a result, the function supplied here has
three arguments, Reynolds number, Mach number and freestream
temperature. From a few numerical experiments, the user can see that for
low Mach numbers (say < 3) the value of skin friction coefficient
returned is quite independent of temperature. Temperature is of little
importance at high Reynolds number, regardless of Mach number. But, if
you are designing a trans- atmospheric vehicle for high altitudes at
hypersonic speeds, you may want this added variable.

For the great majority of flight problems, the variation of friction
with temperature is of little importance. I have modified the Fortran
function to show you how to use optional arguments. In the general case,
you would use the function in your program in the form

cf = TurbulentSkinFriction(rn, mach,temperature)

and you would be expected to provide inputs for all three arguments. For
ordinary flight problems, temperature is not important, and you may use
the function in the form

cf = TurbulentSkinFriction(rn, mach)

If you are working on a low speed problem, you may use the function in
the form

cf = TurbulentSkinFriction(rn)

and the cf returned will be for zero Mach number.

Using the code in these different formats is not something flaky that
may break when you move from one machine to another. This is a robust,
fully conforming feature of Fortran 95 and you may use optional
arguments with confidence.

If you are trying to impress people, you can tell them that your new
code exhibits polymorphism, which is one of the features of modern
object-oriented programming. And you didn\'t have to learn C++ to do it.
For those of you who have succumbed, I have provided a copy of the
function in C++.

This program was not released by NASA through COSMIC.

-  Go to the page of :doc:`references for the Turbulent Skin
   Friction <turbsfrefs>` program.
-  Go to the :doc:`download page for the turbulent skin
   friction <turbsfdownload>` program.



Last updated: 14 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Turbulent Skin Friction

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
