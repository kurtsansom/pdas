===========================================================================
A segmented mission analysis program for low and high speed aircraft (NSEG)
===========================================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > NSEG

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: A segmented mission analysis program for low and high
      speed aircraft (NSEG)
      :name: a-segmented-mission-analysis-program-for-low-and-high-speed-aircraft-nseg

NSEG was developed to perform rapid aircraft mission analyses. It is
based upon the use of approximate equations of motion whose form varies
with the type of flight segment. Flight segments considered are takeoff,
accelerations, climbs, cruises, descents, decelerations, and landings.
Layered atmosphere options are available. The program can also be used
for flight envelope mapping. NSEG provides the capability to analyze
aircraft missions from low to hypersonic speeds.

Realistic and detailed vehicle characteristics are input to NSEG to
permit accurate mission analysis. NSEG allows engine scaling so as to
fit the design under analysis. NSEG contains several approximate flight
path optimization capabilities based on Rutowski energy-like criteria
for considering minimum time or fuel flight segments and maximum range
segments during climb or descent. Takeoff and landing analysis is based
on the Air Force Flight Dynamics Laboratory DATCOM method of high lift
aerodynamic modeling. There are three main atmosphere options available;
the 1962 U.S. Standard atmosphere, a stratified atmosphere model, and an
external atmosphere model supplied by the user. The stratified
atmosphere model requires the input of the number of layers (maximum
25), altitudes, temperatures, and pressures. The mission specification
is open-ended in that the upper limit on the number of flight segments
to be included in a mission profile can be increased with a simple
program change. Input consists of vehicle characteristic data, data to
specify details of the mission, and selection of program options.
(Aerophysics Research Corp. for NASA Langley)

This program was released by NASA through COSMIC as LAR-12299. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the NSEG <nsegrefs>`
   program.
-  :download:`Download nseg.zip <https://data.kitware.com/api/v1/item/5f73fecd50a41e3d19b9ed24/download>`, containing the original
   source code

Unfortunately, the source code is mixed Fortran and Control Data 6600
assembler. I may be able to produce Fortran equivalents for the
assembler code, or perhaps some wonderful person could help me out.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > NSEG

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
