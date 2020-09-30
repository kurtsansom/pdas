============================
Download the naca456 Program
============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoils <naca456>` > NACA456 download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the NACA456 Program
      :name: download-the-naca456-program

-  Go to the page of :doc:`references for the NACA456 <naca456refs>`
   program.
-  :download:`Download naca456.zip <https://data.kitware.com/api/v1/item/5f73fecb50a41e3d19b9ed06/download>`.

The archive file naca456.zip contains the files:

+--------------+------------------------------------------------------+
| readme.txt   | General description of naca456.                      |
+--------------+------------------------------------------------------+
| naca456.f90  | the main program source code                         |
+--------------+------------------------------------------------------+
| nacax.f90    | the source code to the module of auxiliary code      |
+--------------+------------------------------------------------------+
| splprocs.f90 | the source code for the spline procedures            |
+--------------+------------------------------------------------------+
| epspsi.f90   | the data module defining the epsilon and psi         |
|              | functions                                            |
+--------------+------------------------------------------------------+
| avd.f90      | the source code for the program that makes web pages |
|              | in HTML with the data from Abbott and von Doenhoff   |
+--------------+------------------------------------------------------+
| input.txt    | instructions for preparing input for naca456         |
+--------------+------------------------------------------------------+
| ver6.zip     | the source code, instructions and examples as        |
|              | distributed in versions 1-6 of the PDAS CD-ROM. This |
|              | includes source code from both of the Ladson-Brooks  |
|              | programs.                                            |
+--------------+------------------------------------------------------+
| airfols.zip  | The source code and sample cases for Airfols, the    |
|              | 1996 NASA program                                    |
+--------------+------------------------------------------------------+
| samples.zip  | a selection of test cases (input and output)         |
+--------------+------------------------------------------------------+
| samplnx.zip  | all of the above test cases with Unix end-of-line    |
|              | (ZIP)                                                |
+--------------+------------------------------------------------------+

To compile this program for your computer, use the command

gfortran naca456.f90 -o naca456.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.
All of the auxiliary modules will be included automatically.

To launch the program, type

naca456

at the command line. This program asks for the name of the input file.
This must be a file written as described in the file input.txt which
uses namelist input.

The program produces a file called naca.out that printed or scrolled to
your screen and a file called naca.gnu that may be plotted. Using
gnuplot, you plot the airfoil shape with

gnuplot> plot \'naca.gnu\' with lines

The default setting for gnuplot will expand the vertical scale to fit
the screen. This is useful for seeing the curvature, etc. of the airfoil
and I usually take a look at most airfoils with this expanded scale. But
you probably want to see the airfoil in true proportions. Say

gnuplot> set size ratio -1

and you will get a short but wide window with the correct proportions.

Alternately, you may command

gnuplot> set yrange [-0.5:0.5] gnuplot> set size square

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download naca456exec.zip <https://data.kitware.com/api/v1/item/5f73fecc50a41e3d19b9ed12/download>`__
containing the files naca456.exe, naca456.mac, and naca456.lnx, the
executable program for Windows, Mac OS X, and Linux, each compiled
generically for an Intel CPU.

If you download this program and find it useful, please make a
contribution to enable Public Domain Aeronautical Software continue
making open source software available to the engineering community. If
you click on the button below, you may contribute $20 through the PayPal
site.

|image1|



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoils <naca456>` > NACA456 download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. |image1| image:: https://www.paypalobjects.com/en_US/i/scr/pixel.gif
   :width: 1px
   :height: 1px
