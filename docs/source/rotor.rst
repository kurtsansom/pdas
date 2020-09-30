=========================================================================
Aeroelastic Analysis For Rotorcraft In Flight Or In A Wind Tunnel (ROTOR)
=========================================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > ROTOR

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Aeroelastic Analysis For Rotorcraft In Flight Or In A
      Wind Tunnel (ROTOR)
      :name: aeroelastic-analysis-for-rotorcraft-in-flight-or-in-a-wind-tunnel-rotor

The testing of rotorcraft, either in flight or in a wind tunnel,
requires a consideration of the coupled aeroelastic stability of the
rotor and airframe, or the rotor and support system. Even if the primary
purpose of a test is to measure rotor performance, ignoring the question
of dynamic stability introduces the risk of catastrophic failure of the
aircraft. This computer program was developed to incorporate an
analytical model of the aeroelastic behavior of a wide range of
rotorcraft. Such an analytical model is desirable for both pretest
predictions and posttest correlations. The program is also applicable in
investigations of isolated rotor aeroelasticity and helicopter flight
dynamics and could be employed as a basis for more extensive
investigations of aeroelastic behavior, such as automatic control system
design.

The program incorporates an analytical model which is applicable to a
wide range of rotors, helicopters, and operating conditions. The
equations of motion used in the model were derived using an integral
Newtonian method, which provides considerable insight into the blade
inertial and aerodynamic forces. The rotor model includes coupled
flap-lag bending and blade torsion degrees of freedom, and is applicable
to articulated, hingeless, gimballed, and teetering rotors with an
arbitrary number of blades. The aerodynamic model is valid for both high
and low inflow, and for both axial and nonaxial flight. Rotor rotational
speed dynamics, including engine inertia and damping, and perturbation
inflow dynamics are included in the aerodynamic model.

For a rotor on a wind-tunnel support, a normal mode representation of
the test module, strut, and balance is used. The aeroelastic analysis
for rotorcraft in flight is applicable to a general two-rotor aircraft,
including single main-rotor and tandem helicopter configurations, and
side-by-side or tilting proprotor aircraft configurations. The rotor
model includes rotor-rotor aerodynamic interference and ground effect.
The aircraft model includes rotor-fuselage-tail aerodynamic
interference, engine dynamics, and control dynamics. A
constant-coefficient approximation is used for nonaxial flow and a
quasistatic approximation is used for the low frequency dynamics. The
coupled system dynamics results is a set of linear differential
equations which are used to determine the stability and aeroelastic
response of the system. (NASA Ames Research Center)

This program was released by NASA through COSMIC as ARC-11150. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  :download:`Download rotor.zip <https://data.kitware.com/api/v1/item/5f73fed950a41e3d19b9edda/download>`, containing the original
   source code and a conversion to modern Fortran for all four programs.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > ROTOR

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
