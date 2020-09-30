============================
Analysis of Aircraft Motions
============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Aircraft Motions

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Analysis of Aircraft Motions
      :name: analysis-of-aircraft-motions

   Derive aircraft motions, forces, and accelerations from radar range
   data.

This program was developed by Ames Research Center, in cooperation with
the National Transportation Safety Board, as a technique for deriving
time histories of an aircraft\'s motion from Air Traffic Control (ATC)
radar records. This technique uses the radar range and azimuth data,
along with the downlinked altitude data, to derive an expanded set of
data which includes airspeed, lift, attitude angles (pitch, roll, and
heading), etc. This technique should prove useful as a source of data in
the investigation of commercial airline accidents and in the analysis of
accidents involving aircraft which do not have onboard data recorders
(e.g., military, short-haul, and general aviation).

The technique used to determine the aircraft motions involves smoothing
of raw radar data. These smoothed results, in combination with other
available information (wind profiles and aircraft performance data), are
used to derive the expanded set of data. This program uses a cubic
least-square fit to smooth the raw data. This moving-arc procedure
provides a smoothed time history of the aircraft position, the inertial
velocities, and accelerations. Using known winds, these inertial data
are transformed to aircraft stability axes to provide true airspeed,
thrust-drag, lift, and roll angle. Further derivation, based on aircraft
dependent performance data, can determine the aircraft angle of attack,
pitch, and heading angle. Results of experimental tests indicate that
values derived from ATC radar records using this technique agree
favorably with airborne measurements.

This program was released through COSMIC as program ARC-11132. The
italicized text above is from the official COSMIC release.

-  Go to the page of :doc:`references for the ATC <atcrefs>` program.
-  Go to the :doc:`download page <atcdownload>` to download the ATC
   program.

Last updated: July 2017 by Ralph Carmichael, `pdaerowebmaster AT gmail
DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   Aircraft Motions

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
