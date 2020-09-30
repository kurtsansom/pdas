=====================================
Simulation of an Orbiting Solar Array
=====================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Solar
   Array

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Orbiting Solar Array Simulation Model
      :name: orbiting-solar-array-simulation-model

   Evaluate the power available from a solar array in earth orbit.

*Solar arrays are becoming an increasingly important means of generating
power for earth orbiting spacecraft. Currently, almost all unmanned
earth satellites utilize solar array electrical power generation
systems. Applications for solar arrays in the near future include
providing power for space shuttle payloads and manned space stations.
This computer program was developed to simulate the capabilities of
earth orbiting arrays. The model used is based on an improved version of
a finite-element radiation shape factor subprogram. The inherent
simplicity and speed of the original subprogram has been augmented with
an improved shadow evaluation technique to provide the user with an
efficient array model.*

*The program allows the characteristics of orbiting arrays to be
evaluated with a minimum of user effort and computer cost. Input to the
program consists of a brief description of the array and the orbital
parameters. The orbital parameters are used to determine the direct
solar radiation incident on the cells, incident solar radiation
reflected to cells from the earth, and the shadowing of any cells. Once
the amount of thermal radiation gained and lost by the array is known,
the amount of power which can be generated and the temperature of the
array is determined.*

This program was released by NASA through COSMIC as MSC-18558. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  :download:`Download solararr.zip <https://data.kitware.com/api/v1/item/5f73fedc50a41e3d19b9ee04/download>`, containing the
   original source code, the source code converted to modern Fortran,
   and a test case.

This is an interesting little program from the old COSMIC collection. It
isn\'t really aeronautical, but a modern aeronautical engineer should
learn a bit about orbits and launch vehicles. It defines a satellite in
earth orbit at a specific day of the year and tracks an array of solar
panels through a complete orbit around the earth. It works out the 3-D
geometry of angles between the sun and satellite and earth and comes up
with an estimate of power. It is so old that I am sure the conversion
efficiencies and weight estimates are out of date. If you can send me
some better numbers for these, I can make an updated version someday.

This program was written by Rockwell International for NASA Marshall
Spaceflight Center. The program has been modified by Public Domain
Aeronautical Software to conform to Fortran 90 standards. All
subroutines have placed in a module; all variables have declared types;
all subroutine arguments have declared intent; and all code that used
deprecated features of Fortran 95 have been recoded. As further proof of
its compliance with all Fortran 95 standards, it may be noted that it
compiles and runs with the ELF compiler from Lahey.

The student of astronautics can see the techniques for constructing an
ephemeris of an orbiting body, the calculation of black-body radiation
from the sun with corrections for reflection and shadowing of the earth,
and the radiation from the photoelectric array. The calculation of the
temperature of the satellite is done by numerical solution of the
differential equations of heat absorbtion and radiation.

.. container::
   :name: footer


   Last updated: 28 September 2010 by Ralph Carmichael,
   webmaster@pdas.com
   Public Domain Aeronautical Software
   P.O. Box 1438 Santa Cruz CA 95061 USA

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Solar
   Array

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
