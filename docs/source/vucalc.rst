============================
Compressible Flow Calculator
============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > VuCalc

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: vuCalc - A Compressible Flow Calculator
      :name: vucalc---a-compressible-flow-calculator

VuCalc is based on a program of the same name written by Tom Benson of
NASA Glenn as an aid to making calculations in compressible fluid
dynamics. There are six screens, each of which performs a different
class of calculations.

| `Isentropic Flow <vucalc.html#isen>`__
| `Normal Shock <vucalc.html#norm>`__
| `Oblique Shock <vucalc.html#oblq>`__
| `Standard Atmosphere <vucalc.html#atm>`__
| `Rayleigh Flow <vucalc.html#rayleigh>`__
| `Fanno Flow <vucalc.html#fanno>`__

.. _isen:

Isentropic Flow
===============

| The isentropic flow page enables the user to calculate the total
  temperature ratio, total pressure ratio, total density ratio, area
  ratio, Mach angle and Prandtl-Meyer function for any Mach number. In
  addition, the values of any one of these quantities may be specified
  and VuCalc will solve for the corresponding Mach number and the
  remaining quantities.
| `Screen Shot <images/isen.gif>`__

.. _norm:

Normal Shock
============

| The ratios of downstream to upstream values of various quantities may
  be computed for any Mach number. As with the isentropic flow page, the
  value of any flow parameter may be specified and VuCalc will calculate
  the corresponding Mach number and all other quantities.
| `Screen Shot <images/norm.gif>`__

.. _oblq:

Oblique Shock
=============

| The oblique shock problem has an additional degree of freedom in
  specifying the problem. In this case, the user supplies the upstream
  Mach number and one of the following variables: ramp angle, wave
  angle, total pressure ratio, static pressure ratio, temperature ratio,
  density ratio or downstream Mach number. The other variables will then
  be computed and displayed. Of course, there are many cases for which
  there is no solution with an attached shock.
| `Screen Shot <images/oblq.gif>`__

.. _atm:

Standard Atmosphere
===================

| A flight condition in the standard atmosphere is specified by the
  altitude and Mach number. For these conditions, the values of
  velocity, temperature, density, pressure, speed of sound, unit
  Reynolds number, viscosity, dynamic pressure are computed and
  displayed. SI or US units may be used for input. When switching
  between SI and US units, the previous case is remembered and the
  appropriate values are shown for the other set of units.
| `Screen Shot <images/atm.gif>`__

.. _rayleigh:

Rayleigh Flow
=============

| The flow condition known as *Rayleigh Flow* assumes that the flow is
  in a constant-area duct without friction but with heat transfer. This
  type of flow turns out to be a good approximation of heat exchangers
  and of constant-area combustion chambers such as is typical of gas
  turbines. Typical tables of Rayleigh Flow show ratios of various
  thermodynamic flow quantities at a given Mach number to the value of
  this same quantity at a Mach number of 1.0 with the flow modified by
  heat transfer without friction. Typical quantities are static
  temperature, total temperature, static pressure, total pressure,
  density, and velocity. As on the other pages, one may select a given
  value of any flow parameter and command VuCalc to compute the
  coressponding Mach number as well as the remaining flow parameters.
| `Screen Shot <images/ray.gif>`__

.. _fanno:

Fanno Flow
==========

| Fanno flow assumes flow in a constant-area duct with friction but
  without heat transfer. As on the other pages, one may select a given
  value of any flow parameter and command VuCalc to compute the
  coressponding Mach number as well as the remaining flow parameters.
| `Screen Shot <images/fanno.gif>`__

Usage
=====

The program may be used as supplied, but because the source code is
included, the functions that compute the flow quantities are available
for inclusion in your own computing projects. The flow ratios in terms
of Mach number are straightforward codings of the equations in NACA
Report 1135 or any gas dynamics textbook. The inverse relations can
sometimes be solved by algebraic manipulation, but must be computed by
numerical root finding in others.

A Web-based Java Approach
=========================

| There is a similar
  `calculator <http://www.dept.aoe.vt.edu/~devenpor/aoe3114/calc>`
  developed by `William
  Devenport <http://www.aoe.vt.edu/people/faculty/devenport>` of
  Virginia Tech. Instead of being a Windows application (like VuCalc),
  it is a Java applet that runs in your web browser, provided you have a
  Java-enabled browser.
| There is an interesting `supersonic
  airfoil <http://odin.prohosting.com/~evgenik1/wing.htm>`__ page
  written by Evgeni Kudriavitski that uses the oblique shock and
  Prandtl-Meyer expansion functions to compute the inviscid aerodynamic
  force on a wedge airfoil with attached shocks. It is very instructive
  to reshape the wing or change the angle of attack and watch the
  pressures and forces recompute. This is implemented as a java applet
  and runs on your browser. He has made the applet available for
  download, so you can run the applet even if you are not connected to
  the web. Note: As of February 2013, this seems to have disappeared. If
  anyone knows its new address, I will be happy to update this page.

This program was not released by NASA through COSMIC. The source code
for the C version of Vu-Calc with graphical interface for a Silicon
Graphics workstation was obtained from NASA Lewis (now Glenn). The code
was converted to Pascal and the Delphi interface for Microsoft Windows
by Public Domain Aeronautical Software. All value added by PDAS is
placed in the public domain.

-  Go to the page of :doc:`references for the VuCalc <vucalcrefs>`
   program.
-  Go to the :doc:`download page <vucalcdownload>` for the VuCalc
   program.



Last updated: 19 January 2020 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > VuCalc

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
