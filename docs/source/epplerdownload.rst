===========================
Download the Eppler Program
===========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Eppler <eppler>` > Eppler download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Eppler Program
      :name: download-the-eppler-program

-  Go to the page of :doc:`references for the Eppler <epplerrefs>`
   program.
-  :download:`Download eppler.zip <https://data.kitware.com/api/v1/item/5f73feba50a41e3d19b9ebe1/download>`, containing the
   original source code, the source code converted to modern Fortran,
   and several test cases.
-  :download:`Download roncz.zip <https://data.kitware.com/api/v1/item/5f73fed950a41e3d19b9edd0/download>`, a revision of Eppler
   that includes a correction for compressibility.

The archive file eppler.zip contains the files:

============ =============================================
readme.txt   general description
tm80210.pdf  the original report - with user instructions.
original.src the original source - scanned from TM 80210
profile.f90  the complete source code in modern Fortran
e1098.dat    a sample case (described in report)
e1098.out    output for this special case.
============ =============================================

To compile this program for your machine, use the command

gfortran profile.f90 -o profile.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

Launch the program by typing profile.exe at the command line. The
program will ask you user for the name of the input data file. After
reading the input data, the program produces profile.out with the
tabulated data.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download epplerexecs.zip <https://data.kitware.com/api/v1/item/5f73febb50a41e3d19b9ebeb/download>`__
containing the files profile.exe, profile.mac, and profile.lnx, the
executable program for Windows, Mac OS X, and Linux, each compiled
generically for an Intel CPU.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Eppler <eppler>` > Eppler download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
