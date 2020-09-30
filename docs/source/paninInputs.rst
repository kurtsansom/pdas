==========================================
PANIN - PanAir Input PreProcessor Commands
==========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Panair
   Input <panin>` > Panin Commands

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: The PanIn command file
      :name: the-panin-command-file

All input to PanAir other than the geometry definition or off-body
xyz-points is contained in the auxiliary file that is composed by the
user. Each record in the auxiliary file starts with a key word. The key
word may be upper or lower case and may be preceeded by blanks. The key
word is usually followed on the same record with a numeric value which
is the value of the variable described by the key word. For some key
words, a series of numerical values follows while for others no values
are required. Comments may be added after the numeric value for most of
the keywords.

Currently the keywords are:

ABUTPR ALPC compressibility angle of attack, degrees ALPHA list of
angles of attack (degrees) (max of 4) AVERAGE if any networks are
modeled as thin surfaces they are listed on this record BETA list of
angles of sideslip (degrees) (max of 4) BETC compressibility angle of
sideslip BOUN the boundary conditions to be applied to each network.
This will be a list of KT values, one for each network. However, if any
network has KT=30, the number 30 must be followed by 4 additional
boundary condition inputs. A value of -18 is used for the special case
of fuselage base wake, or wakes that abut other wakes. BWAKE followed by
3 numbers to define a body edge wake network. This is also used for
wakes attached to upstream wakes. The first is the network to which the
wake is attached; the second is the edge number to which it is attached;
third is the x-coor of downstream edge. CBAR length of the reference
chord CHECK =0 for a full run; =1 to stop after computing abutments.
CUTS name of a file that has a list of plane definitions each record has
6 numbers, 3 for point, 3 for normal EAT abutment tolerance FORCE list
of networks to be used for calculation of configuration force and moment
summary. If this record is not present, the default is to use all the
networks that have kt=1 boundary conditions. GRID definition of an
off-body grid. There must be 9 numbers following the keyword GRID and
they must be on the same record. The nine items are (xorigin, yorigin,
zorigin), (dx,dy,dz), and (nx,ny,nz). HMIN min step size for streamlines
HMAX max step size for streamlines ISINGS =1 to print singularity data;
=0 to suppress IGEOIN =0 to print network geometry before liberalized
abutment mods =-1 to suppress this printout IGEOUT =0 to NOT print
network geometry after liberalized abutment mods =1 to print this
information IGEOMP =1 to print geometry diagnostic data; =0 to suppress
ISINGP =1 to print singularity spline data; =0 to suppress ICONTP =1 to
print control point loc, normals; =0 to suppress =2 to print upper
surface normal only IBCONP =1 to print boundary condition diagnostic
data; =0 to suppress IEDGEP =1 to print edge-matching diagnostic data;
=0 to suppress IPRAIC =1 to print control point sequence number; =0 to
suppress IOUTPR =-1 to omit flow parameter output =0 to output 48 flow
parameters =1 to output 12 flow parameters IFMCPR =-1 to omit network
force and moment output =0 to output network force,moment summary per
col, per net, accum =1 to output network force,moment summary per net
and accumulation IGNORE if any networks are not to be included in the
force and moment calculations, they are listed on this record. IVCORR =1
to apply the McLean velocity correction =2 to apply the Boctor velocity
correction =0 to make no corrections MACH free stream Mach Number
MAXSTREAM maximum number of points along any single streamline (default
100) MNSWITCH (may also be spelled MNSWCH) any networks that should have
rows and columns interchanged are listed on this record NEXDGN =1 to
print edge control point data; =0 to suppress NOF do not add trailing
filaments for Trefftz plane drag analysis OFFNETS list of networks used
for calculation of off-body velocities or streamlines. Default is to use
all networks. PEA [not implemented yet] PRECISION number of decimals
printed in all fields of the a502 input file produced by this program.
RESTART if the job has been run previously with a SAVE and there are
files on the CSF archive, the job may be restarted without recomputation
of the aerodynamic matrix. =1 if additional angles of attack or sideslip
are to be done =2 if the same angles are used SPAN reference span SREF
reference area STREAM name of a file that has a list of (x,y,z)
(dx,dy,dz) triples six numbers per record SYMM =0 for asymmetric
configuration; =1 for symmetric TITLE1 a title that appears on the
printed output TITLE2 second line of the title UPSTREAM streamlines go
upstream instead of downstream. WAKE followed by 3 numbers to define a
trailing edge wake network. The first is the network to which the wake
is attached; the second is the edge number to which it is attached;
third is the x-coor of downstream edge. WGS name of the WGS file XREF
x-coordinate of the moment reference point XYZ name of a file which has
a list of (x,y,z) triples, defining the off-body points at which
velocities are to be computed. one triple per record. YREF y-coordinate
of the moment reference point ZREF z-coordinate of the moment reference
point no changes in angles or Mach number, this commands a restart. The
principal use is for off-body points.

Default Values
==============

In order to make the creation of this auxiliary file as simple as
possible, all of the keywords have preset defaults which are used if the
user does not supply a value. For many of the items, the default value
will be the desired value and the auxiliary file can be quite short. The
following items all have default values of 0: MACH, XREF, YREF, ZREF,
ALPC, BETC, ALPHA, BETA, ISINGS, IGEOMP, ISINGP, ICONTP, IBCONT, IEDGEP,
IPRAIC, NEXDGN, IOUTPR, IFMCPR, IVCORR, IGEOIN, IGEOUT, CHECK. The
quantities SREF, CBAR, SPAN, and SYMM have default values of 1.0 and
MAXSTREAM has a default value of 100. HMIN defaults to 0.1 and HMAX to
0.5. TIME has a default value of 100 and NAME is given the string
\"A502\". The keywords MNSWITCH, FORCE, IGNORE, and AVERAGE refer to
lists of network numbers. If any of these are not specified, the list is
taken to have no members. If XYZ or STREAM is not included in the
auxiliary file, then no off-body points or streamlines will be computed.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`Panair
   Input <panin>` > Panin Commands

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
