================================
Download the Hidden Line Program
================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Hidden
   Line <hlp>` > Download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Hidden Line Program
      :name: download-the-hidden-line-program

-  Go to the page of :doc:`references for the hidden line <hlprefs>`
   program.
-  :download:`Download hlp.zip <https://data.kitware.com/api/v1/item/5f73fec050a41e3d19b9ec59/download>`.

The archive file hlp.zip contains the files:

+---------------------------------+-----------------------------------+
| readme.txt                      | general description               |
+---------------------------------+-----------------------------------+
| hlp.f90                         | the source code                   |
+---------------------------------+-----------------------------------+
| drh.cmn                         | you will need it to compile hlp   |
+---------------------------------+-----------------------------------+
| input.txt                       | instructions for preparing input  |
|                                 | & interpreting output             |
+---------------------------------+-----------------------------------+
| arc12721.txt                    | the original program description  |
|                                 | from COSMIC                       |
+---------------------------------+-----------------------------------+
|                                 | Sample cases for this program     |
|                                 | are:                              |
+---------------------------------+-----------------------------------+
| wbf.wgs                         | simple sample case with vertical  |
|                                 | fin                               |
+---------------------------------+-----------------------------------+
| tnd7505.wgs                     | wing-body configuration of NASA   |
|                                 | TN D-7505                         |
+---------------------------------+-----------------------------------+
| tnd4211.wgs                     | wing-body configuration of NASA   |
|                                 | TN D-4211                         |
+---------------------------------+-----------------------------------+
| f16xl.wgs                       | F16-XL configurations             |
+---------------------------------+-----------------------------------+
| ex1.wgs,ex2.wgs,ex3.wgs,ex4.wgs | examples from the LaWgs document  |
|                                 | TM 85767                          |
+---------------------------------+-----------------------------------+
|                                 | auxiliary viewing programs        |
+---------------------------------+-----------------------------------+
| dpr.xls                         | Viewing program (from Dan Raymer) |
|                                 | (alternate to gnuplot)            |
+---------------------------------+-----------------------------------+
| danplot.exe                     | 2008 version of dpr.xls (also     |
|                                 | from Dan Raymer) (Thanks, Dan)    |
+---------------------------------+-----------------------------------+

To compile this program for your machine, use the command

gfortran hlp.f90 -o hlp.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

Launch the program by typing hlp.exe at the command line. The program
will ask you for the name of the input data file. This must be a file
written to conform to the Langley Wire-Frame Geometry Standard. Next,
the program asks for three viewing angles, which correspond to yaw,
roll, and pitch. Enter values in degrees. To complete the viewing
definition, you need to specify the distance of the eye from the object.
Unless you are looking for an extreme perspective effect, give a number
that is large compared to the dimensions of the object. The image will
still be adjusted to fill the screen.

After calculating the scene, the program produces a file called hlp.gnu
that defines the vectors in 2-D that describe the object. Each line in
hlp.plt defines a point (x,y). Whenever there is a blank line in the
file, this means that the line to the next point is invisible (from the
old days of pen plotters, this is called a pen-up draw). This file may
be displayed directly with gnuplot with the command

gnuplot> plot \'hlp.plt\' with lines

You will need to use the command

gnuplot> set size ratio -1

to insure that you have a square viewport on your screen to match the
square window of the output from hlp.

There is another file called hlp.ps that is produced by this program.
This is the same picture, but encoded in PostScript format.

If you do not have gnuplot or a PostScript interpreter installed on your
system, there is yet another way to visualize the output. Try out the
Excel program called dpr.xls (for Dan Raymer, who wrote the program).
This requires you to have Microsoft Excel on your system, though. Dan
wrote a new version that will work even if you do not have Excel.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you are unable or
do not wish to do this, you may `download
hlpexecs.zip <https://data.kitware.com/api/v1/item/5f73fec050a41e3d19b9ec63/download>`__ containing the files hlp.exe,
hlp.mac, and hlp.lnx, the executable programs for Windows, Mac OS X, and
Linux, each compiled generically for an Intel CPU.



Last updated: 11 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Hidden
   Line <hlp>` > Download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
