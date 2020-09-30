============================
Download the Conplot Program
============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Conplot <conplot>` > Conplot download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Conplot Program
      :name: download-the-conplot-program

-  There are no referencees for this program.
-  :download:`Download conplot.zip <https://data.kitware.com/api/v1/item/5f73feb450a41e3d19b9eb83/download>`, containing the
   source code and sample cases.

The archive file conplot.zip contains the files:

============ ==================================================
arc11441.txt the original program description from COSMIC
readme.txt   general description
conplot.f90  the source code in modern Fortran
original.src the original copy of the source code (from COSMIC)
test1.f90    a sample program using a function coded in Fortran
test2.f90    a sample program that reads data
test2dat.txt some example data for test2
test2con.txt some example contours for the data in test2dat.txt
============ ==================================================

The principal items of code are the modules Smooth and Contour. Conplot
is not a program, but a module that you use in your programs. I have
supplied two programs that let you practice.

test1 plots contours using data points that you compute in the main
program. To compile this program, use the command

gfortran test1.f90 -o test1.exe

To launch the program, enter \"test1.exe\" at the command line. There is
no input data. The program makes a file called test.gnu that may be used
with gnuplot. For example,

gnuplot>plot \'test.gnu\' with lines

To avoid distortion of the image use the plotting command

gnuplot> set size ratio -1

test2 plots contours using data points that are read from a file. The
program will ask for the name of this data file. Each line of the input
data contains three numbers - x, y, f(x,y). The program reads until
there is no more data and then inquires about a file of contour values.
This file contains one value per record containing the contour level for
each contour line to be plotted. There is a sample case called
test2dat.txt that represents the pressure coefficients on a delta wing
in supersonic flow. It is taken from NASA TN D-1264 by Harry Carlson.
The file called test2con.txt has some contour values that may be used.
You can experiment with smoothing and see the change in contours. To
begin, try saying that you want smoothing and then try iexp=3 and
jexp=4. I am not really sure what these mean, but you might figure it
out from the source code.

Test2 also produces a file called test.gnu that may be used with gnuplot
as shown above.

Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Conplot <conplot>` > Conplot download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
