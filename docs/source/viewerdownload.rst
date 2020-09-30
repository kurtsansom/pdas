===========================
Download the Viewer Program
===========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Viewer <viewer>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Viewer Program
      :name: download-the-viewer-program

-  Go to the page of :doc:`references for the Viewer <viewerrefs>`
   program.
-  :download:`Download viewer.zip <https://data.kitware.com/api/v1/item/5f73fee150a41e3d19b9ee78/download>`.

The archive file viewer.zip contains the files:

============ ============================================
readme.txt   this file
viewer.txt   instructions for use of viewer
viewer.f90   the complete source code
lew10482.txt the original program description from COSMIC
original.src the original source code (from COSMIC)
============ ============================================

To compile this program for your computer, use the command

gfortran viewer.f90 -o viewer.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch the program, enter \"viewer.exe\" at the command line. The
program asks for the name of the input file and proceeds to the end of
the computation. A file called viewer.out is produced as output.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download viewerexecs.zip <https://data.kitware.com/api/v1/item/5f73fee250a41e3d19b9ee82/download>`__
containing the files viewer.exe, viewer.mac, and viewer.lnx, the
executable program for Windows, Mac OS X, and Linux, each compiled
generically for an Intel CPU.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Viewer <viewer>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
