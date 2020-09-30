===================================================================
Monte Carlo Investigation Of Trajectory Operations And Requirements
===================================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Monitor

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Monte Carlo Investigation Of Trajectory Operations And
      Requirements (MONITOR)
      :name: monte-carlo-investigation-of-trajectory-operations-and-requirements-monitor

The Monte Carlo Investigation of Trajectory Operations and Requirements
(MONITOR) program was developed to perform spacecraft mission maneuver
simulations for geosynchronous, single maneuver, and comet encounter
type trajectories. MONITOR is a multifaceted program which enables the
modeling of various orbital sequences and missions, the generation of
Monte Carlo simulation statistics, and the parametric scanning of user
requested variables over specified intervals. The MONITOR program has
been used primarily to study geosynchronous missions and has the
capability to model Space Shuttle deployed satellite trajectories. The
ability to perform a Monte Carlo error analysis of user specified
orbital parameters using predicted maneuver execution errors can make
MONITOR a significant part of any mission planning and analysis system.

The MONITOR program can be executed in four operational modes. In the
first mode, analytic state covariance matrix propagation is performed
using state transition matrices for the coasting and powered burn phases
of the trajectory. A two-body central force field is assumed throughout
the analysis. Histograms of the final orbital elements and other state
dependent variables may be evaluated by a Monte Carlo analysis. In the
second mode, geosynchronous missions can be simulated from parking orbit
injection through station acquisition. A two-body central force field is
assumed throughout the simulation. Nominal mission studies can be
conducted; however, the main use of this mode lies in evaluating the
behavior of pertinent orbital trajectory parameters by making use of a
Monte Carlo analysis. In the third mode, MONITOR performs parametric
scans of user-requested variables for a nominal mission. Various orbital
sequences may be specified; however, primary use is devoted to
geosynchronous missions. A maximum of five variables may be scanned at a
time. The fourth mode simulates a mission from orbit injection through
comet encounter with optional Monte Carlo analysis. Midcourse maneuvers
may be made to correct for burn errors and comet movements. (NASA
Goddard Space Flight Center)

This program was released by NASA through COSMIC as GSC-12705. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  :download:`Download monitor.zip <https://data.kitware.com/api/v1/item/5f73feca50a41e3d19b9ecf8/download>`, containing the
   original source code.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Monitor

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
