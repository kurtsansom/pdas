============================
Download the Makewgs Program
============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Makewgs <makewgs>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Makewgs Program
      :name: download-the-makewgs-program

-  Go to the page of :doc:`references for the Makewgs <makewgsrefs>`
   program.
-  :download:`Download makewgs.zip <https://data.kitware.com/api/v1/item/5f73fec550a41e3d19b9ecbf/download>`

The archive file makewgs.zip contains the files:

=========== ==========================================
readme.txt  general description
input.txt   description of the input file for makewgs
makewgs.f90 the complete source code in modern Fortran
\           Sample cases for this program are:
delta1.mak  input data for simple delta wing
sh.mak      input data for Sears-Haack body
delta1.wgs  LaWGS file produced by delta1.mak
sh.wgs      LaWGS file produced by sh.mak
tnd6480.mak input data for wind tunnel model
tnd7505.mak input data for wind tunnel model
tnd6480.wgs LaWGS file produced by tnd6480.mak
tnd7505.wgs LaWGS file produced by tnd7505.mak
=========== ==========================================

To compile this program for your machine, use the command

gfortran makewgs.f90 -o makewgs.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

Launch the program by entering makewgs.exe at the command line. This
program asks for the name of the input file. This must be a file
containing commands described in input.txt. Upon successfully reading
the input data, the program produces a file called make.wgs that may be
used as input to programs requiring a wireframe geometry file.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download
makewgsexecs.zip <https://data.kitware.com/api/v1/item/5f73fec750a41e3d19b9eccd/download>`__ containing the files
makewgs.exe, makewgs.mac, and makewgs.lnx, the executable program for
Windows, Mac OS X, and Linux, each compiled generically for an Intel
CPU.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Makewgs <makewgs>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
