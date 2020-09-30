=========================================
Intersection of Two Straight Lines in 2-D
=========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Line
   Intersection

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Intersection of Two Straight Lines
      :name: intersection-of-two-straight-lines

*LineInt* is a simple geometry tool to calculate the intersection of two
lines in two-dimensional space. Each line is defined by two points. This
is hardly a difficult math problem, but you can eat up a lot of time and
make errors working out a set of intersections with pencil and
calculator.

The code was based on an article in Graphics Gems, describing the best
way to calculate the intersection - with the fewest number of
operations. You might find the code in xsect.pas interesting. The
solution requires a minimum of 9 additions or subtractions, 10
multiplications and 2 divisions for a total of 21 floating point
calculations. Can you beat this?

`Paul
Bourke <http://local.wasp.uwa.edu.au/~pbourke/geometry/lineline2d/>`__
has a web page that explains it all.

The `Geometric Tools <http://www.geometrictools.com/>`__ web site has
lots of background material on intersections of various geometrical
entities. Look under \'Documentation\'. There is a lot of good info at
this site from Dave Eberly.

| The usage is supposed to be self-evident. Fill in the blanks and press
  \"Compute\". When you are done, press Quit. You get a simple error
  message if you input parallel lines or try to define a line with two
  identical points.
| Check out a sample `Screen Shot <images/lineint.jpg>`__.

{ xsect.pas} { The following procedure was inspired by the routine
xlines.c by Mukesh Prasad in Graphics Gems II. However, it looks for an
intersection of the two infinite lines rather than the line segments }
PROCEDURE LinesIntersect(const x1,y1,x2,y2: EXTENDED; { first line}
const x3,y3,x4,y4: EXTENDED; { second line } VAR code : INTEGER; { =0
OK; =1 lines parallel} VAR x,y : EXTENDED); { intersection point } VAR
a1, a2, b1, b2, c1, c2 : EXTENDED; { Coefficients of line eqns.} denom :
EXTENDED; BEGIN a1:= y2-y1; b1:= x1-x2; c1:= x2*y1 - x1*y2; { a1*x +
b1*y + c1 = 0 is line 1 } a2:= y4-y3; b2:= x3-x4; c2:= x4*y3 - x3*y4; {
a2*x + b2*y + c2 = 0 is line 2 } denom:= a1*b2 - a2*b1; IF denom = 0
THEN BEGIN code:=1; EXIT END; x:=(b1*c2 - b2*c1)/denom; y:=(a2*c1 -
a1*c2)/denom; code:=0 END; (\* \-\-\-\-\-- End Procedure LinesIntersect
\*)

-  Go to the :doc:`download page <lineintdownload>` to download the
   Line Intersection program.
-  Go to the :doc:`HTML page <xsect>` to perform the calculations in
   your web browser. (Use the browser BACK button to return to this
   page.)

The link to the HTML page shown above is an example of using a web
browser (such as Firefox or Internet Explorer) to act as an application,
accepting input data and computing output using the builtin Javascript
language interpreter of the browser.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Line
   Intersection

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
