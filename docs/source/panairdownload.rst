===========================
Download the Panair Program
===========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Panair <panair>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Panair Program
      :name: download-the-panair-program

-  Go to the page of :doc:`references for the Panair <panairrefs>`
   program.
-  :download:`Download panair.zip <https://data.kitware.com/api/v1/item/5f73fed250a41e3d19b9ed66/download>`.

The archive file panair.zip contains the files:

============ ===================================================
arc11398.txt the original COSMIC program description
readme.txt   general description
panair.f90   source code
clean502.bat erase all the intermediate files from previous run
clean502.sh  same as clean502.bat, but for Mac or Linux
\            Sample cases for this program
swb.inp      simple wing-body
swb.out      output from swb.inp
btac.inp     another sample case
btac.out     output from btac.inp
ellip.inp    another sample case
ellip.out    output from ellip.inp
nac6.inp     another sample case
nac6.out     output from nac6.inp
ppbc.inp     another sample case
ppbc.out     output from ppbc.inp
vbc.inp      another sample case
vbc.out      output from vbc.inp
vepd.inp     another sample case
vepd.out     output from vepd.inp
vss.inp      another sample case
vss.out      output from vss.inp
caseslnx.zip the above cases with Unix end-of-line (Zip archive)
============ ===================================================

You will probably want to download the users manual for Panair and you
can find a link to it on the :doc:`references page <panairrefs>`.

To compile this program for your machine, use the command

gfortran panair.f90 -o panair.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

Launch the program by entering the name at the command line

panair

This program first asks for the name of the input file. This must be a
file written to conform to the PanAir user guide. After calculating the
solution, the program produces a file called panair.out that contains a
wealth of information concerning the flow problem to be solved. You need
to read the user guide before you try to interpret the output.

One little gotcha associated with this program is that it will not start
if there are left-over files from a previous run \-- and it leaves a lot
of debris behind. This is done deliberately because the program has a
restart capability allowing it resume calculations at a checkpoint
without starting over. This was an important feature in 1978, but
somewhat quaint today. There is a command file called clean502.bat that
will delete all of these files. There is an alternate file called
clean502.sh that does the same job for Mac or Linux folks.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download panairexecs.zip <https://data.kitware.com/api/v1/item/5f73fed450a41e3d19b9ed76/download>`__
containing the files panair.exe, panair.mac, and panair.lnx, the
executable program for Windows, Mac OS X, and Linux, each compiled
generically for an Intel CPU.

If you download this program and find it useful, please make a
contribution to enable Public Domain Aeronautical Software to continue
making open source software available to the engineering community. If
you click on the button below, you may contribute $20 through the PayPal
site.

|image1|



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Panair <panair>` > download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. |image1| image:: https://www.paypalobjects.com/en_US/i/scr/pixel.gif
   :width: 1px
   :height: 1px
