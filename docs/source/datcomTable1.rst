===========================================
Addresable Configurations in Digital Datcom
===========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Datcom <datcom>` > Table 1

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Addressable Configurations in Digital Datcom
      :name: addressable-configurations-in-digital-datcom

This page is referred to as Table 1 on the :doc:`main Datcom
page <datcom>` and in the printed Datcom manual.

+---------------------------+-----------------------------------------+
| Configuration             | Remarks                                 |
+===========================+=========================================+
| Body                      | Primarily bodies of revolution, or      |
|                           | close approximations are treated.       |
|                           | Transonic methods for most of the       |
|                           | aerodynamic data do not exist. The      |
|                           | recommended procedure requires fairing  |
|                           | between subsonic and supersonic data    |
|                           | using available data as a guide.        |
+---------------------------+-----------------------------------------+
| Wing, horizontal tail     | Straight tapered, cranked,or double     |
|                           | delta planforms are treated. Effects of |
|                           | sweep, taper and incidence are          |
|                           | included. Linear twist is treated at    |
|                           | subsonic Mach numbers. Dihedral effects |
|                           | are present in the lateral directional  |
|                           | data.                                   |
+---------------------------+-----------------------------------------+
| Body-wing body-horizontal | Longitudinal methods reflect only a     |
|                           | mid-wing position. Lateral directional  |
|                           | solutions consider high and low-wing    |
|                           | positions.                              |
+---------------------------+-----------------------------------------+
| Wing-body-tail            | Various geometry combinations are       |
|                           | possible. See table 2 in the printed    |
|                           | version for full details. Wing downwash |
|                           | methods are restricted to straight      |
|                           | tapered planforms. Effects of twin      |
|                           | vertical tails are included in the      |
|                           | static lateral directional data at      |
|                           | subsonic Mach numbers.                  |
+---------------------------+-----------------------------------------+
| Non-standard geometries   | Non-standard configurations are         |
|                           | simulated using \"basic\" configuration |
|                           | techniques. Strakes can be run via a    |
|                           | double-delta wing. A body-canard-wing   |
|                           | is input as a wing-body-horizontal      |
|                           | tail. The forward lifting surface is    |
|                           | input as a wing and the aft surface as  |
|                           | a horizontal tail.                      |
+---------------------------+-----------------------------------------+
| Special configurations    | Low aspect ratio wing or wing-body      |
|                           | configurations (lifting bodies) are     |
|                           | treated at subsonic speeds.             |
|                           | Two-dimensional flap and transverse jet |
|                           | effects are also treated at hypersonic  |
|                           | speeds.                                 |
+---------------------------+-----------------------------------------+



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Datcom <datcom>` > Table 1

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
