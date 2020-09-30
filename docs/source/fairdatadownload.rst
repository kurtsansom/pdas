=============================
Download the Fairdata Program
=============================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Fairdata <fairdata>` > Fairdata download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Fairdata Program
      :name: download-the-fairdata-program

-  Go to the page of :doc:`references for the fairdata <fairdatarefs>`
   program.
-  :download:`Download fairdata.zip <https://data.kitware.com/api/v1/item/5f73febb50a41e3d19b9ebff/download>`.

The archive file fairdata.zip contains the files:

========== ========================================================
readme.txt this file of general directions
fair.f90   the complete source code
\          The sample cases provided are
case1.nml  a sample case for y vs. x (non-parametric)
case1a.nml same as case1, but with added joints
case2.nml  a sample case for closed parametric data - cross section
case2a.nml same as case2, but with added joints
case3.nml  a sample case that turns back (parametric)
case3a.nml same as case3, but with added joints
case4.nml  a sample case - drag polar of an airfoil
case4a.nml same as case4, but with added joints
========== ========================================================

To compile this program for your computer, use the command

gfortran fair.f90 -o fair.exe

Linux and Macintosh users may prefer to omit the .exe on the file name.

The program asks for the name of the input file. The program makes the
file fair.out to be viewed or printed and three plotting files. The file
fair.dat has the original data points. The file fair.crv has a fairly
dense set of points on the spline. The file fair.jnt has the joints.
Using gnuplot, you can visualize the fit with the command

gnuplot> plot \'fair.dat\',\'fair.crv\' with lines,\'fair.jnt\'

Anothe file called fair.dbg contains a track of the calculation. You
might find the info in this file useful.

The namelist NAM1 has the following variables

+-------------+---------------------------------------------------------------+
| xData,yData | arrays of input data                                          |
+-------------+---------------------------------------------------------------+
| weights     | weight of each data point (preset to 1.0)                     |
+-------------+---------------------------------------------------------------+
| joints      | array of joints                                               |
+-------------+---------------------------------------------------------------+
| parametric  | .TRUE. if data is to be plotted against a parametric variable |
+-------------+---------------------------------------------------------------+
|             | .FALSE. if the data is to be treated as y vs. x               |
+-------------+---------------------------------------------------------------+
| closed      | .TRUE. if the data closes (last point==first point)           |
+-------------+---------------------------------------------------------------+
|             | .FALSE.                                                       |
+-------------+---------------------------------------------------------------+

Note - parametric and closed are preset to FALSE.

I have not really exercised this code extensively. I do see however,
that it can go unstable if you try to put too many joints into the fit.
There should be at least a few data points between each pair of joints.

It is best if you compile the programs using your Fortran compiler with
the appropriate options for your computer system. If you do not wish to
do this, you may `download
fairdataexecs.zip <https://data.kitware.com/api/v1/item/5f73febc50a41e3d19b9ec09/download>`__ containing the files
fairdata.exe, fairdata.mac, and fairdata.lnx, the executable program for
Windows, Mac OS X, and Linux, each compiled generically for an Intel
CPU.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > `:doc:Contents <contents16>` >
   :doc:`Fairdata <fairdata>` > Fairdata download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
