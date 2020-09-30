===============================================
The Langley Wireframe Geometry Standard (LaWGS)
===============================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > LaWgs

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: LaWGS
      :name: lawgs

   .. rubric:: The NASA Langley Wireframe Geometry Standard
      :name: the-nasa-langley-wireframe-geometry-standard

| From NASA TM 85767:
| The Langley Wireframe Geometry Standard is a format for describing
  configuration geometry with discrete points. These points are
  coordinates of the locus of points for contour lines over the
  configuration. In the LaWGS context,a contour line can be thought of
  as a set of points that when connected by straight lines will follow
  the contour of the object. Additionally, when respective points on all
  adjoining contour lines of the object are similarly connected, the
  mesh or wireframe object is created. Thus a LaWGS file consists of
  coordinates of the sets of contour points that are the nodes for this
  wireframe structure (see Figures 1, 2, 3, and 4).

A configuration, as defined in LaWGS, may consist of a single object or
a collection of objects. The description of each object is identical in
form to that of the others and as previously mentioned consists of sets
of discrete points that define contours over the object. The order in
which these object contours and their points are listed is not specified
by LaWGS, but is a choice of the person who creates the LaWGS
description. However, to insure that the LaWGS file will be interpreted
correctly, consistency should be observed. For example, if the points of
the first input contour of an object are arranged along the x-axis in
increasing order (i.e., fore to aft), then each subsequent contour for
the object should be defined in like manner. If the next contour listed
for this same object is clockwise from the first contour, then likewise
the third contour should be clockwise from the second, the fourth from
the third, and so on for the remainder of the object. The key
consideration when creating a LaWGS file is to maintain consistency,
particularly in applications where differentiating between the interior
and exterior of the wireframe model is important. For these applications
where the direction of surface normal vectors must be considered,
guidelines for ordering points are provided in Appendix C.

Each object may be defined in either of two ways: 1) relative to a
global coordinate system that exists for the configuration or 2)
relative to its own local coordinate system, i.e., independently of the
other objects in the configuration. Both the global and the local
coordinate systems used in LaWGS are right-handed Cartesian coordinate
systems. The x-axis corresponds to the longitudinal axis of the vehicle
positive from nose-to-tail; The z-axis is usually vertical, positive
upwards, and the y-axis is positive in the right-wing direction. For
objects described in the global coordinate system only, the LaWGS file
will contain an alphanumeric identification of the configuration and an
alphanumeric identification of each object, an integer identification
number which is unique to each object, the number of contour lines to be
listed for each object, the number of points to be listed for each
contour line (note: every contour line on the object must have the same
number of points), and the point coordinates of the object. The global
symmetry parameter can be used to indicate symmetry about one of the
three global axis planes. For objects described in local coordinate
systems, additional parameters are provided to locate the object
relative to the global coordinate system. The local symmetry parameter
can be used to indicate symmetry about one of the three local axis
planes. Also, the object may be rotated, translated, and scaled to
achieve its desired orientation in the global system relative to the
other objects. The orientation of an object depends on the order in
which the transformations are applied. In LaWGS, object transformations
are applied in the following order:

#. local symmetry
#. rotation about the x-axis, rotation about y, rotation about z.
#. translation in x-direction, translation in y, translation in z;
#. scale in x-direction, scale in y, scale in z;
#. global symmetry.

Data is entered into a LaWGS file in list-directed format which complies
with the American National Standards Institute (ANSI) FORTRAN 77
language described in document X3.9-1978. List-directed input/output
processes coded data without a FORMAT statement. The input data values
are free-form with separators rather than fixed-size fields. Separators
can be one or more blanks, commas, or slashes, any of which can be
preceded or followed by any number of blanks. Character strings must be
enclosed in single quotes. The standard format is presented in the
following section.

THE LANGLEY WIREFRAME GEOMETRY STANDARD (LaWGS) FORMAT
======================================================

Record

Variable Name

Description

1

IDCOMF

| Identification of LaWGS configuration
| (1-80 alphanumeric characters enclosed in single quotes)

(Repeat record sets 2, 3, and 4 for each object.)

2

IDOBJ

Object identification (1-80 alphanumeric characters enclosed in single
quotes).

3

NOBJ

Object number (integer identification unique to object).

NLINE

Number of contour lines to be listed for object

NPNT

Number of points listed for each contour line.

ISYML

| In its local coordinate system, the object is
| = 0, not symmetrical.
| = 1, symmetrical about its local X-Z axis.
| = 2, symmetrical about its local X-Y axis.
| = 3, symmetrical about its local Y-Z axis.

| RX
| RY
| RZ

Rotation of the object about its local X, Y, Z axes, respectively (roll,
pitch, yaw), in degrees.

| TX
| TY
| TZ

Translation of the object along the X, Y, Z axes, respectively, to move
the object to the global system from its local system, in units
consistent with object input points.

| XSCALE
| YSCALE
| ZSCALE

Scale factors applied to the X, Y, Z coordinates, respectively, that
will transform the object points into global units.

ISYMG

| In the global coordinate system, the object is
| = 0, not symmetrical.
| = 1, symmetrical about the global X-Z axis.
| = 2, symmetrical about the global X-Y axis.
| = 3, symmetrical about the global Y-Z axis.

4

(x,y,z)\ :sub:`m,n`

Point coordinates of the object, where m=1 to NPNT for each n=1 to
NLINE.

| Begin a new record image for each contour:

| (x,y,z)\ :sub:`1,1` \-\-- (x,y,z)\ :sub:`NPNT,1`
| (x,y,z)\ :sub:`1,2` \-\-- (x,y,z)\ :sub:`NPNT,2`
| \-\--
| \-\--
| (x,y,z)\ :sub:`1,NLINE` \-- (x,y,z)\ :sub:`NPNT,NLINE`



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > LaWgs

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
