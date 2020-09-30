====================================
Mass Properties Of A Rigid Structure
====================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Mass
   Properties

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Mass Properties Of A Rigid Structure
      :name: mass-properties-of-a-rigid-structure

The computer program MASPROP was developed to rapidly calculate the mass
properties of complex rigid structural systems. This program\'s basic
premise is that complex systems can be adequately described by a
combination of basic elementary structural shapes. Thirteen widely used
basic structural shapes are available in this program. They are as
follows: Discrete Mass, Cylinder, Truncated Cone, Torus, Beam (arbitrary
cross section), Circular Rod (arbitrary cross section), Spherical
Segment, Sphere, Hemisphere, Parallelepiped, Swept Trapezoidal Panel,
Symmetric Trapezoidal Panels, and a Curved Rectangular Panel. MASPROP
provides a designer with a simple technique that requires minimal input
to calculate the mass properties of a complex rigid structure and should
be useful in any situation where one needs to calculate the center of
gravity and moments of inertia of a complex structure.

Rigid body analysis is used to calculate mass properties. Mass
properties are calculated about component axes that have been rotated to
be parallel to the system coordinate axes. Then the system center of
gravity is calculated and the mass properties are transferred to axes
through the system center of gravity by using the parallel axis theorem.
System weight, moments of inertia about the system origin, and the
products of inertia about the system center of mass are calculated and
printed. From the information about the system center of mass the
principal axes of the system and the moments of inertia about them are
calculated and printed.

The only input required is simple geometric data describing the size and
location of each element and the respective material density or weight
of each element.

This program was released by NASA through COSMIC as LAR-12454. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Mass
   Properties <massproprefs>` program.
-  Go to the :doc:`download page <masspropdownload>` to download the
   Mass Properties program.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Mass
   Properties

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
