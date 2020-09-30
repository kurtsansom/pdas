============================================
Download the turbulent skin friction Program
============================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Turbulent Skin Friction <turbsf>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Turbulent Skin Friction Program
      :name: download-the-turbulent-skin-friction-program

-  Go to the page of :doc:`references for the turbulent skin
   friction <turbsfrefs>` program.
-  :download:`Download turbsf.zip <https://data.kitware.com/api/v1/item/5f73fee050a41e3d19b9ee5c/download>`.

The archive file turbsf.zip contains the files:

========== ======================================
readme.txt general description
sftab.f90  sample program containing the function
sftab.out  output from the sample program
turbsf.f90 the subroutine by itself
turbsf.cpp the same subroutine, coded in C++
========== ======================================

To compile the sample case program, use the command

gfortran sftab.f90 -o sftab.exe

Then, run the program with the command

sftab

and a file called sftab.out will be produced.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Turbulent Skin Friction <turbsf>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
