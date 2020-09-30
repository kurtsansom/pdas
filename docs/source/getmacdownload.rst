===========================================
Download the Mean Aerodynamic Chord Program
===========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Mean
   Aerodynamic Chord <getmac>` > Download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Mean Aerodynamic Chord Program
      :name: download-the-mean-aerodynamic-chord-program

-  Go to the page of :doc:`references for the Mean Aerodynamic
   Chord <getmacrefs>` program.
-  :download:`Download getmac.zip <https://www.pdas.com/packages/getmac.zip>`,
   containing the source code and sample cases.

The archive file getmac.zip contains the files:

========== ===============================================
readme.txt this file of general description
getmac.f90 the complete source code
input.txt  instructions on preparing input
b2.nml     an example case for a wing resembling the B-2
b2.out     the output produced by running b2.nml
f117.nml   an example case for a wing resembling the F-117
f117.out   the output produced by running f117.nml
ofw.nml    an example case for an oblique flying wing
ofw.out    the output produced by running ow.nml
cases.pdf  sketches of these wings
cases.txt  a description of the cases b2, f117, ofw
========== ===============================================

getMAC is a program that reads the definition of a wing from an
arbitrary number of chords. The instructions for preparing an input file
for getMAC are in the file getmac.txt. The program reads the input file
and prints the area, length of MAC, y of MAC, xle of MAC, xte of MAC,
and x of c/4 of MAC.

To compile this program for your machine, use the command

gfortran getmac.f90 -o getmac.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

Launch the program by typing getmac.exe at the command line. The program
will ask you for the name of the input data file. After reading the
input data, the program produces getmac.out with the output results.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you are unable or
do not wish to do this, you may `download
getmacexecs.zip <https://www.pdas.com/packages/getmacexec.zip>`__
containing the files getmac.exe, getmac.mac, and getmac.lnx, the
executable programs for Windows, Mac OS X, and Linux, each compiled
generically for an Intel CPU.



Last updated: 15 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Mean
   Aerodynamic Chord <getmac>` > Download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
