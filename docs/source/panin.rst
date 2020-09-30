=================================
PANIN - PanAir Input PreProcessor
=================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Panair
   Input

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Input Pre-Processor for PanAir
      :name: input-pre-processor-for-panair

   The input file for PanAir is error-prone and unforgiving. This
   program accepts a free-form file and creates a properly formatted
   input file for PanAir.

The program referred to as A502 is a pilot version of the production
computer code known as PANAIR. Both PANAIR and A502 were developed by
the Boeing Company under contract to the NASA Ames Research Center. The
contract was funded by several agencies of the Department of Defense
along with NASA Ames and Langley Research Centers.

These programs solve for the fluid flow about an arbitrary configuration
at subsonic or supersonic speeds, using linearized potential flow
theory. The A502 code was never intended for wide distribution and only
modest efforts were made to document the input file format and explain
the usage of the program. Recent developments have led to the more
widespread use of A502 and the program must become available to a
greater number of users. The purpose of this paper and the computer
program it describes is to make the A502 version of PanAir accessible to
a users in a simple fashion.

A502 Input Format
=================

The input to A502 is described in the user\'s manual which is found on
the disc. The input data is organized in specific columns. Editing an
input file is a rather error-prone process. The PANIN program was
written to enable a user to select the flow properties and all other
program options by editing a short free-format file called an auxiliary
file. One entry in the auxiliary file is the name of a file that
contains the geometrical information. The format of this file is that of
the NASA standard for wireframe geometry as described in reference 2.
This file is usually referred to as a WGS file, standing for Wireframe
Geometry Standard. The program reads the various items of control
information from the auxiliary file and combines this information with
the panel geometry in the WGS file to produce a combined file that is a
properly formatted input file for PanAir.

Preparing the WGS File
======================

The first and most difficult part of preparing a case for PANAIR or any
panel code is the definition of the surface geometry as a set of
quadrilateral panels. A variety of techniques exist for the creation of
this data. A program call MAKEWGS in this collection is available for
definition of simple geometries. Those familiar with the geometry
programs in use at Langley may find it preferable to use QUICK or GEMPAK
to produce inputs. The ultimate solution lies in the use of a
Computer-Aided-Design (CAD) system that has a wireframe output option.
There is a program A502WGS that will convert A502 input decks to WGS.

Putting It All Together
=======================

Once the WGS geometry file and the auxiliary file have been created and
stored, the PanAir input file is created by invoking the program panin.

After the panin program has completed execution, two files have been
produced. These files take their names from the data in the NAME record
in the auxiliary file with extensions of .sh and .in. For example, if
the record in the auxiliary file is NAME mycase, then the two files
produced are mycase.in and mycase.sh. The .in file is the a502 input
data.

Disclaimer
==========

Although a considerable effort has been expended in making the program
free of errors or omissions, the user should inspect the input file and
script carefully. There are many problems in forcing data to fit the
fixed field format and inadvertent roundoff may result. The PRECISION
keyword can be helpful, but there are many potential sources of error.
The principal problem area is overflow of an output field when one is
trying to keep the geometric accuracy high by printing many decimals.
Two popular places for this error to occur are the x-coordinates of the
trailing edges of wakes and the value of reference area. It is usually
useful to scan the PanAir input file for asterisk characters.

There are many options in the PanAir input file and it would be
virtually impossible to incorporate all of them in this program. For
example, in PanAir you can select different reference lengths for yawing
moment and rolling moment. PanIn simply asks for SPAN. And there are
lots more.

-  Go to the page of :doc:`references for the Panair
   Preprocessor <paninrefs>` program.
-  Examine the :doc:`Panin command file definition <paninInputs>`.
-  Examine an :doc:`example <paninExample>` of the use of Panin.
-  Go to the :doc:`download page <panindownload>` to download the
   Panair Preprocessor Program.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Panair
   Input

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
