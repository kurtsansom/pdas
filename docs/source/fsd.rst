============================
Flexible spacecraft dynamics
============================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > FSD

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Flexible spacecraft dynamics (FSD)
      :name: flexible-spacecraft-dynamics-fsd

The Flexible Spacecraft Dynamics and Control program (FSD) was developed
to aid in the simulation of a large class of flexible and rigid
spacecraft. FSD is extremely versatile and can be used in attitude
dynamics and control analysis as well as in-orbit support of deployment
and control of spacecraft. FSD has been used to analyze the in-orbit
attitude performance and antenna deployment of the RAE and IMP class
satellites, and the HAWKEYE, SCATHA, EXOS-B, and Dynamics Explorer
flight programs.

FSD is applicable to inertially-oriented spinning, earth oriented, or
gravity gradient stabilized spacecraft. The spacecraft flexibility is
treated in a continuous manner (instead of finite element) by employing
a series of shape functions for the flexible elements. Torsion, bending,
and three flexible modes can be simulated for every flexible element.
FSD can handle up to ten tubular elements in an arbitrary orientation.
FSD is appropriate for studies involving the active control of pointed
instruments, with options for digital PID (proportional, integral,
derivative) error feedback controllers and control actuators such as
thrusters and momentum wheels.

The input to FSD is in four parts:

#. *Orbit Construction. FSD calculates a Keplerian orbit with
   environmental effects such as drag, magnetic torque, solar pressure,
   thermal effects, and thruster adjustments; or the user can supply a
   GTDS format orbit tape for a particular satellite/timespan;*
#. *Control words - for options such as gravity gradient effects,
   control torques, and integration ranges;*
#. *Mathematical descriptions of spacecraft, appendages, and control
   systems- including element geometry, properties, attitudes, libration
   damping, tip mass inertia, thermal expansion, magnetic tracking, and
   gimbal simulation options; and*
#. *Desired state variables to output, i.e., geometries, bending
   moments, fast Fourier transform plots, gimbal rotation, filter
   vectors, etc.*

All FSD input is of free format, namelist construction. ( NASA Goddard
Space Flight Center )

This program was released by NASA through COSMIC as GSC-13006. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  :download:`Download fsd.zip <https://data.kitware.com/api/v1/item/5f73febe50a41e3d19b9ec31/download>`, containing the original
   source code. This program is mixed language, mostly in Fortran and
   partially in Pascal. It remains \"In Progress\".



Last updated: 11 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > FSD

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
