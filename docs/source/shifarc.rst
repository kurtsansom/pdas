=========================================================
Super/hypersonic Inviscid Flow Around Real Configurations
=========================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Shifarc

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Super/hypersonic Inviscid Flow Around Real Configurations
      (SHIFARC)
      :name: superhypersonic-inviscid-flow-around-real-configurations-shifarc

This package was developed to compute the inviscid super/hypersonic flow
field about complex vehicle geometries accurately and efficiently. A
second-order accurate finite difference scheme is used to integrate the
three-dimensional Euler equations in regions of continuous flow, while
all shock waves are computed as discontinuities via the Rankine-Hugoniot
jump conditions. This package has the ability to compute blunt nose
entropy layers in detail. Real gas effects for equilibrium air are
included using curve fits of Mollier charts. This package can be a very
useful tool in the design and analysis of high speed vehicles such as
supersonic aircraft, hypersonic transports, and re-entry spacecraft
(shuttle orbiter).

This package consists of three separate computer programs. STEIN is the
program that solves the Euler equations for the flow field. This
solution is obtained by following these basic guidelines:

#. *An accurate second order finite difference marching technique is
   used to numerically integrate the governing partial differential
   equations;*
#. *Shock waves in the flow field are followed and the Rankine-Hugoniot
   conditions are satisfied across them;*
#. *The intersection of two shocks of the same family is computed
   explicitly;*
#. *Conformal mappings are used to develop a computational grid;*
#. *Body boundary conditions are satisfied by recasting the equations
   according to the concept of characteristics;*
#. *The edge of the entropy layer on blunt nose vehicles is followed
   from its origin and the derivatives across the layer formed;*
#. *Real gas effects are included when appropriate, by using fits of
   Mollier charts; and*
#. *Sharp leading edge wings are computed using a local two-dimensional
   solution.*

The only limitation to this solution technique is that the Mach number
in the marching direction (nose to tail) must be supersonic at every
point in the flow field. The region around the nose of blunt nosed
vehicles must be computed by another technique (see description of BLUNT
below) and once the flow becomes supersonic STEIN can proceed with its
calculations. This program has been used extensively to compute external
flow fields and has been found to yield accurate results for a wide
variety of vehicle configurations flying at Mach numbers between 2 and
26 and having angles of attack to plus/minus 30 degrees.

The program BLUNT is used to find flow fields about blunt nosed portions
of the vehicle. BLUNT uses a time dependent computational technique to
asymptote to a steady transonic solution. Output from this program can
be used by STEIN to define the flow field points where supersonic flow
begins. The program QUICK provides the user with a geometry system to
model a complex vehicle geometry in a quick, straight-forward fashion.
QUICK consists of an initial defining and logical checkout group of
routines, which actually set up the mathematical model, and a second
group of routines which are used to interrogate the model for cross
sectional information. QUICK supplies all geometrical information about
the vehicle to STEIN. (Grumman Aerospace Corp. for NASA Langley)

This program was released by NASA through COSMIC as LAR-11891. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the SHIFARC <shifarcrefs>`
   programs.
-  :download:`Download shifarc.zip <https://data.kitware.com/api/v1/item/5f73feda50a41e3d19b9edee/download>`, containing the
   original source code.



Last updated: 14 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Shifarc

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
