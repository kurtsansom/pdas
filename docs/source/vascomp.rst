===================================================
V/STOL Aircraft Sizing And Performance (VASCOMP II)
===================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Vascomp

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: V/STOL Aircraft Sizing And Performance (VASCOMP II)
      :name: vstol-aircraft-sizing-and-performance-vascomp-ii

The VASCOMP2 computer program was developed to aid in the comparative
design study of V/STOL aircraft systems by rapidly providing aircraft
size and mission performance data. VASCOMP2 can be used to define design
requirements such as weight breakdown, required propulsive power, and
physical dimensions of aircraft which are to meet specified mission
requirements. The program is also useful in sensitivity studies
involving both design trade-offs and performance trade-offs. Generality
and flexibility were maintained during formulation of the program in
order to permit an accurate simulation of virtually any V/STOL
configuration. VASCOMP2 is capable of approximating the design process
involved in the layout and sizing of a wide variety of V/STOL aircraft
and synthesizing the performance of these aircraft. The program is
intended for use in the study of V/STOL aircraft which use fixed wing
lift for primary cruise flight. The program is not suited for the study
of aircraft which employ rotary wing lift for forward flight. (Boeing
Vertol Co. for NASA Ames)

This program was released by NASA through COSMIC as ARC-11433. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Vascomp <vascomprefs>`
   program.
-  :download:`Download vascomp.zip <https://data.kitware.com/api/v1/item/5f73fee150a41e3d19b9ee66/download>`, containing the
   original source code, the source code converted to modern Fortran,
   and a test case.

I can compile this program with Lahey fortran LF95 and it runs the test
case giving what appears to be good numbers. If I use gfortran or g95 or
LF95 with the -chk option, the program aborts by using a variable that
has not been set. I will continue to study this problem.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Vascomp

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
