==================================
The Atmosphere Above 86km altitude
==================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Upper Atmosphere

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: The Upper Atmosphere ( > 86 km )
      :name: the-upper-atmosphere-86-km

Below 86 kilometers altitude, the standard atmosphere assumes that there
is perfect mixing of the air and that a sample taken at any altitude
will have the same proportions of gases. This implies that the molecular
weight of the air is the same at all altitudes and allows us to use the
simple hydrostatic equation to compute pressure and density.

Above 86 km, this approximation is no longer valid. There are two
principal reasons for this breakdown. The first reason is dissociation.
The diatomic gases oxygen and nitrogen are constantly breaking apart
into separate atoms and constantly combining back into molecules. These
competing processes have an equilibrium; at the higher pressures of the
lower atmosphere the equilibrium is almost 100 percent in the molecular
form. As you go above 86km, you find that much of the oxygen is in the
atomic form. Nitrogen molecules seem to be more tightly bound than those
of oxygen, and dissociation is not a significant factor.

The second reason for non-uniformity of the composition of the
atmosphere is diffusion. Without the turbulence and mixing found at
lower altitudes, the lighter gases tend to rise and the heavier gases
fall. At altitudes in excess of 500km, helium and hydrogen become the
prevalent gases and all of the hydrogen is in atomic form (H :sub:`1`).
Oxygen becomes more plentiful than nitrogen because it is lighter. This
seems contrary to intuition, but the oxygen is all in the atomic form
with a molecular weight of 16, while the nitrogen is diatomic, with a
molecular weight of 28.

The reference publication, The U.S. Standard Atmosphere, 1976 outlines
the development of the theoretical equations used for the calculation of
the composition of the upper atmosphere. The essential idea is that one
calculates the number density of each species from the equations
describing dissociation and diffusion.

Back in 1996, I put on my \'TO-DO\' list that I would develop a
subroutine that would enable everyone to calculate the properties of the
upper atmosphere. I got bogged down with all of the coupled differential
equations and other aspects of the calculation. At this point, I
encountered the work of Steve Pietrobon of Small World in Australia.
Steve had coded the entire process and he graciously allowed me to
distribute his computing procedure as part of the atmosphere package
from PDAS. I had concluded before this that the computing process was
too complex for ordinary enginners to use on everyday projects. I was
amazed that Steve had come to the same conclusion and agreed with my
concept of taking selected values from the complex calculation and
finding values at intermediate altitudes by interpolation. This became
the basis of the upper atmosphere routine in the PDAS package.

Go to the :doc:`Upper Atmosphere Computing Page <upatmos2>`.

Go to `Steve Pietrobon\'s home page <http://www.sworld.com.au>`__. He is
into error control for FPGAs and ASICs these days.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Upper Atmosphere

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
