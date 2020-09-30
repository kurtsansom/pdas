========================================
Download the Panair Preprocessor Program
========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Panair
   preprocessor <panin>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Panair Preprocessor Program
      :name: download-the-panair-preprocessor-program

-  Go to the page of :doc:`references for the Panair
   Preprocessor <paninrefs>` program.
-  :download:`Download panin.zip <https://data.kitware.com/api/v1/item/5f73fed450a41e3d19b9ed7e/download>`.

The archive file panin.zip contains the files:

========== ===================================
readme.txt general description
input.txt  instructions for use
panin.f90  the source code for panin
case1a.aux sample input for panin
case1a.wgs the associated LaWGS file (input)
case1a.inp the resulting input file for PanAir
========== ===================================

To compile this program for your computer, use the command

gfortran panin.f90 -o panin.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

To launch the program, enter \"panin.exe\" at the command line. The
program asks for the name of the input file and proceeds to the end of
the computation. A file called panin.inp is produced as output.

The input to Panair is described in the Panair user\'s manual. The input
data is organized in specific columns. Editing an input file is a rather
error-prone process. The PANIN program was written to enable a user to
select the flow properties and all other program options by editing a
short free-format file called an auxiliary file. One entry in the
auxiliary file is the name of a file that contains the geometrical
information. The format of this file is that of the NASA standard for
wireframe geometry as described in NASA Report TM 85767. This file is
usually referred to as a WGS file, standing for Wireframe Geometry
Standard. The program reads the various items of control information
from the auxiliary file and combines this information with the panel
geometry in the WGS file to produce a combined file that is a properly
formatted input file for PanAir.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may :doc:`download paninexecs.zip <https://data.kitware.com/api/v1/item/5f73fed450a41e3d19b9ed76/download>`__
containing the files panin.exe, panin.mac, and panin.lnx, the executable
program for Windows, Mac OS X, and Linux, each compiled generically for
an Intel CPU.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Panair
   Preprocessor <panin>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
