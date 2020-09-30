================================
Download the Atmosphere Programs
================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Atmos download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Download the Atmosphere Programs
      :name: download-the-atmosphere-programs

-  Go to the page of :doc:`references for the atmosphere <atmosrefs>`
   program.
-  :download:`Download atmos.zip <https://data.kitware.com/api/v1/item/5f73feb250a41e3d19b9eb5d/download>`.

The archive file atmos.zip contains the files:

readme.txt

general information

coesa.txt

definition of the 1976 US Atmosphere Standard to 86 km.

at62.for

the original grandfather of all these codes

press.py

the program used to compute pressures at boundaries (Python 3)

us1.prt

atmosphere table (long form) in U.S. units

si1.prt

atmosphere table (long form) in SI units

us2.prt

atmosphere table (short form) in U.S. units

si2.prt

atmosphere table (short form) in SI units

tablesHTML.f90

program that produces atmTabs.html

atmTabs.html

combined tables plus transport properties in HTML format

atmos76.f90

subroutine to compute atmosphere to 1000 km.

ussa1976.pas

Steven Pietrobon\'s program to compute upper atmosphere

ussa1976.dpr

same as ussa1976.pas, but as a Delphi console application

ussa1976.exe

executable for ussa1976 (using ussa1976.dpr)

uasa2000.pas

Pietrobon\'s program to compute approximate upper atmosphere

uasa2000.dpr

same as uasa2000.pas, but as a Delphi console application

uasa2000.exe

executable for uasa2000 (using uasa2000.dpr)

bb.f90

the baseball trajectory program

hotcold.f90

non-standard atmospheres (hot,cold,polar,tropical)

Files associated with the tables program

tables.txt

description of tables and notes for each language

language.txt

discussion of the differences between languages

tables.bas

the source code for tables in QBASIC

tables.c

the source code for tables in C

tables.cpp

the source code for tables in C++

tables.dpr

the source code for tables in Pascal (as a Delphi console app.)

tables.f90

the source code for tables in Fortran

tables.for

the source code for tables in Fortran 77

tables.py

the source code for tables in Python 3(by Rich Kwan)

tables2.py

the source code for tables in Python 2(by Rich Kwan)

tables.pro

the source code for tables in IDL (by Martin Shultz)

The program *tables*, which is given in several languages, produces four
atmosphere tables:

#. a table is US units from 0 to 280000 ft. by 5000 ft.
#. a table in SI units form 0 to 86 km by 2 km
#. a table in US units from 0 to 65000 ft. by 1000 ft., and
#. a table in SI units from 0 to 20 km by 0.5 km.

The goal is to produce exactly the same text in all programs, but there
are small differences.

The instructions for compiling each program are in the readme.txt file.

If you download these programs and find them useful, please make a
contribution to enable Public Domain Aeronautical Software continue
making open source software available to the engineering community. If
you click on the button below, you may contribute $20 through the PayPal
site.

|image1|



| Last updated: 8 October 2018 by Ralph Carmichael,
  pdaerowebmaster@gmail.com
| Public Domain Aeronautical Software

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Atmosphere download

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. |image1| image:: https://www.paypalobjects.com/en_US/i/scr/pixel.gif
   :width: 1px
   :height: 1px
