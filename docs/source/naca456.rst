========================
NACA Airfoil Coordinates
========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > NACA
   Airfoil

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: NACA Airfoil Coordinates
      :name: naca-airfoil-coordinates

During the 1930\'s several families of airfoils and camber lines were
developed by the National Advisory Committee for Aeronautics (NACA).
Many of these airfoil shapes have been successfully used over the years
as wing sections or tail sections for general aviation and military
aircraft, as well as propellers and helicopter rotors.

The ordinates for numerous specific airfoils of these families at a
coarse set of data points were published in a series of NACA reports.
However, when performing parametric studies on effects of such variables
as thickness, location of maximum thickness, leading- edge radius,
location of maximum camber and others, it is not always easy to obtain
the ordinates of the desired shapes rapidly and accurately. To remedy
this problem the NASA Langley Research Center sponsored the development
of computer programs for generation of ordinates of standard NACA
airfoils.

Two separate programs were written by Charles Ladson and Cuyler Brooks
of the NASA Langley Research Center in 1974-1975. The first was
documented in NASA TM X-3284 and produces ordinates for NACA 4-digit,
4-digit modified, 5-digit, and 16-series airfoils. These thickness
families are defined by algebraic equations. These thickness families
are combined with appropriate mean lines to produce the final thick
cambered airfoil.

The second program was documented in NASA TM X-3069 and produces
ordinates for NACA 6-series and 6A-series airfoils. Unlike the other
airfoils, these thickness distributions are not defined by algebraic
equations, but use conformal mapping of a circle into an airfoil shape.
These thicknesses are combined with 6-series mean lines to produce the
final thick cambered airfoil. Both of these computer programs have been
included in the collection from Public Domain Aeronautical Software
since the release of Version 1.0 in January 1996.

In December 1996, NASA published a new report NASA TM 4741 outlining the
theory behind the NACA airfoil sections and a revised computer program
incorporating the features of both of the 1974-1975 programs. It was the
intent of the authors that the program would be distributed on a NASA
Langley software server, but this never became operational. I received a
test release of this program from one of the authors, but I can\'t be
sure that it is the final version for release. You can download a copy
`download airfols.zip <https://data.kitware.com/api/v1/item/5f73feaf50a41e3d19b9eb1d/download>`__ from this site.

In 2001, I wrote an entirely new program based on all of the previous
work that incorporated many suggestions from users of the original
programs. The program is documented in `my AIAA
paper <_static/aiaa5235.pdf>`__ on the subject.

For additional information, proceed to any of the following pages:

-  :doc:`Computational procedure for the PDAS program
   naca456 <naca456pdas>`
-  :doc:`Input description for naca456 <naca456input>`
-  `Sample cases (input and output) for naca456 <naca456samples>`
-  :doc:`Corrected appendices from the book Theory of Airfoil
   Sections <avd>`
-  Read the `History of the NACA High Speed Airfoil
   Program <http://www.hq.nasa.gov/pao/History/SP-445/cover.htm>`__ from
   the book The High-Speed Frontier by John V. Becker of NASA.
-  Go to the page of :doc:`references for NACA airfoils <naca456refs>`
   program.
-  Go to the :doc:`download page <naca456download>` for the NACA456
   program.


Last updated: 6 September 2020 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > NACA
   Airfoil

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
