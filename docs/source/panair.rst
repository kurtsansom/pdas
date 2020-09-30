=========================================
The PANAIR Program for Panel Aerodynamics
=========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Panair

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: PANAIR
      :name: panair

   .. rubric:: Predicting Subsonic Or Supersonic Linear Potential Flows
      About Arbitrary Configurations Using A Higher Order Panel Method
      :name: predicting-subsonic-or-supersonic-linear-potential-flows-about-arbitrary-configurations-using-a-higher-order-panel-method

   PanAir is the definitive subsonic/supersonic panel method based on
   linear aerodynamic theory.

PANAIR (an abbreviation for \"panel aerodynamics\") is a state-of-the
art computer program developed to predict inviscid subsonic and
supersonic flows about an arbitrary configuration by means of a higher
order panel method. Generally speaking, a panel method solves a linear
partial differential equation numerically by approximating the
configuration surface by a set of panels on which unknown \"singularity
strengths\" are defined, imposing boundary conditions at a discrete set
of points, and thereby generating a system of linear equations relating
the unknown singularity strengths. These equations are solved for the
singularity strengths which provide information on the properties of the
flow. PANAIR differs from earlier panel methods by employing a \"higher
order\" panel method; that is, the singularity strengths are not
constant on each panel. This is necessitated by the more stringent
requirements of supersonic problem. The potential for numerical error is
greatly reduced in the PANAIR program by requiring the singularity
strength to be continuous. It is also this \"higher order\" attribute
which allows PANAIR to be used to analyze flow about arbitrary
configurations. PANAIR can handle the simple configurations considered
in the preliminary design phase and later serve as the \"analytical wind
tunnel\" which can analyze the flow about the final detailed, complex
configurations.

PANAIR includes the following capabilities:

-  *the ability to handle, within the limitations of linear potential
   flow theory, completely arbitrary configurations, using either exact
   or linearized boundary conditions;*
-  *the ability to handle asymmetric configurations as well as those
   with one or two planes of symmetry;*
-  *the ability to handle symmetric configurations in either symmetric
   or asymmetric flow;*
-  *the ability to calculate pressures, forces, and moments using a
   variety of pressure formulas (such as isentropic, linear, etc.),
   including the forces and moments due to flow through the surface;*

Most problems can be modeled with a minimum of user input. In general,
the aircraft surface is partitioned into several networks of surface
grid points, such as a forebody network, a wing network, and so forth.
The coordinates of the input grid points must be computed and entered by
the user; PANAIR does not generate grid point coordinates. PANAIR
connects the grid points in each network with piecewise flat panels. The
user also supplies information concerning the free-stream onset flow,
the angle of attack, and the angle of sideslip. Numerous flow quantities
are computed at points on the vehicle surface and at points in space.
These include pressure coefficients, total and perturbation values of
velocity and mass flux components, total and perturbation potential,
local Mach number, and vacuum pressure coefficient. The pressure
coefficients on individual panels are fitted with two dimensional
quadratic splines and integrated to obtain the six components of force
and the moment coefficients. These coefficients may be output for each
panel, for columns of panels, for each network, or for any combination
of networks.

This program was released by NASA through COSMIC as ARC-11398. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Panair <panairrefs>`
   program.
-  Go to the :doc:`download page <panairdownload>` for the Panair
   program.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Panair

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
