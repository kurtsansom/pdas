=====================================
Download the Supersonic Inlet Program
=====================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Inlet <inlet>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Supersonic Inlet Program
      :name: download-the-supersonic-inlet-program

-  Go to the page of :doc:`references for the Supersonic
   Inlet <inletrefs>` program.
-  :download:`Download inlet.zip <https://data.kitware.com/api/v1/item/5f73fec250a41e3d19b9ec89/download>`.

The archive file inlet.zip contains the files:

========== ========================================
readme.txt general description
inlet.f90  program source code
blank.cmn  common block to be included in inlet.f90
fig9.dat   a typical data set (from the document)
fig9.out   the output from this data set
========== ========================================

To compile this program, use the command

gfortran inlet.f90 -o inlet.exe

To launch the program, enter

inlet

at the command line. The program asks for the name of the input file and
proceeds to the end of the case. A file called inlet.out is produced as
output. Two other files are made that should be discarded.

This program was developed at NASA Ames around 1965. I was unable to
locate a copy of the source code, so I scanned it from the NASA
document. There still may be a discrepancy between my scanned code and
the real thing. I would appreciate any bugs you find. The test case
diverges from the results shown in the original TN.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download inletexecs.zip <https://data.kitware.com/api/v1/item/5f73fec350a41e3d19b9ec93/download>`__
containing the files inlet.exe, inlet.mac, and inlet.lnx, the executable
program for Windows, Mac OS X, and Linux, each compiled generically for
an Intel CPU.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Inlet <inlet>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
