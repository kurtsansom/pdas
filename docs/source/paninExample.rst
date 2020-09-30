==========================================
PANIN - PanAir Input PreProcessor Commands
==========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Panair
   Input <panin>` > Panin Example

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: An Example Input File for Panin
      :name: an-example-input-file-for-panin

The dataset shown here is a sample case

NAME owra45 TIME 550 WGS owra45b.wgs ( version with modified nose )
TITLE1 Oblique Wing Research Airplane Ames 86 concept (250 sq. ft)
TITLE2 Sweep=45 CHECK 0 symm 0 ( no symmetry ) ioutpr -1 ( do not print
surface pressures ) ifmcpr 1 ( short print ) cbar 5.34 span 50 sref 250
( small wing; new one has 300 ) xref 37.292 mach 0.9 alpc 5 ( average
value for alpha values ) alpha 4 5 6 eat 0.0001 ignore 7 8 9 10 average
23 24 25 26 27 31 32 BOUN 1 1 1 1 1 1 5 5 5 5 1 1 1 1 1 1 18 18 18 18 18
18 2 2 2 2 2 18 18 18 2 2 18 18 18 18 18 18 18 18

This job expects to find a file called owra45b.wgs in the current
directory. The wgs file should contain 40 networks. Networks 7-10 are
base nets and 17-22, 28-30, and 33-40 are trailing edge wake nets. Nets
23-27 and 31-32 are surfaces of zero thickness and their forces and
moments are computed from the delta-Cp across the panel. Two files named
owra45.sh and owra45.in will be produced in the current directory.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Panair
   Input <panin>` > Panin Example

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
