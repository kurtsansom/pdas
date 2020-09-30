===================================
Download the Digital Datcom Program
===================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Digital Datcom <datcom>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Digital Datcom Program
      :name: download-the-digital-datcom-program

-  Go to the page of :doc:`references for the Digital
   Datcom <datcomrefs>` program.
-  :download:`Download datcom.zip <https://data.kitware.com/api/v1/item/5f73feb650a41e3d19b9eba3/download>`, containing the source
   code and sample cases.

The archive file datcom.zip contains the files:

+--------------+------------------------------------------------------+
| readme.txt   | general description                                  |
+--------------+------------------------------------------------------+
| namelist.pdf | descriptions of the namelist data items              |
+--------------+------------------------------------------------------+
| datcom.f     | The complete source code                             |
+--------------+------------------------------------------------------+
| exwin.zip    | The 11 sample cases from AFFDL-TR-79-3032 along with |
|              | the expected output for each. Input files have the   |
|              | Window/DOS end-of-line characters                    |
+--------------+------------------------------------------------------+
| exlinux.zip  | Same as exwin.zip, but with Unix end-of line         |
+--------------+------------------------------------------------------+

In addition, you will probably want to download the user\'s manual and
perhaps the complete DATCOM document. Links for these are on the
`references page <datcomrefs>` for Digital Datcom.

To compile this program for your machine, use the command

gfortran datcom.f -o datcom.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

Launch the program by typing the command

datcom

at the command prompt. The program will ask you user for the name of the
input data file. After reading the input data, the program produces
datcom.out with the tabulated output data.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may :download:`download datcomexecs.zip <https://data.kitware.com/api/v1/item/5f73feb850a41e3d19b9ebb5/download>`
containing the files datcom.exe, datcom.mac, and datcom.lnx, the
executable program for Windows, Mac OS X, and Linux, each compiled
generically for an Intel CPU.

If you download this program and find it useful, please make a
contribution to enable Public Domain Aeronautical Software continue
making open source software available to the engineering community. If
you click on the button below, you may contribute $20 through the PayPal
site.

|image1|



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Digital Datcom <datcom>` > Digital Datcom download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. |image1| image:: https://www.paypalobjects.com/en_US/i/scr/pixel.gif
   :width: 1px
   :height: 1px
