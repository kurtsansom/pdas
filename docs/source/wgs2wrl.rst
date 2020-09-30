===========================
LaWGS Objects -> VRML World
===========================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > VRML

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: VRML World
      :name: vrml-world

This is an experimental program in the initial phases of testing. I hope
to learn how to define VRML world objects and eventually couple this to
some of the aerodynamic programs to display streamlines and surface
pressures, and maybe more. You are invited to have a good look and
perhaps make some comments that will aid me in the development. It
produces a file in VRML 1.0 format.

The origin of this program came from several user requests that I offer
a version of a program called FAST, developed at NASA Ames, which in
turn was an outgrowth of a program called PLOT3D. The idea is to display
the data (input and output) from a general class of CFD programs.

Further investigation indicated that there was a large quantity of code
specific to the Silicon Graphics workstation; I do not want to start
supporting programs that required expensive workstations! Actually, the
OpenGL part of the program is becoming available on the PC platform, so
the project might be feasible.

However, there is an alternate approach that seemed more intriguing,
namely capitializing on the VRML (Virtual Reality Modelling Language)
work being done by many people. It seems to me all I have to do is write
a file in the approved VRML format, and all those smart people at
Silicon Graphics and Platinum and Microsoft will take care of everything
concerning viewing angles, lighting, navigation in 3D, colors, etc.

So, what you have on the CD-ROM is the first effort. The program asks
for the name of the input file. This must be a file in LaWGS format.
After reading the input data, the program produces a file called wgs.wrl
that may be used as input to a VRML browser. I am experimenting with the
Microsoft VRML plug-in for Internet Explorer 5 and with the Cosmo Viewer
2.1. I am far from an expert but I am having fun. If you want to try
some of this, go ahead. I will put more information on the web site as
the work develops.

The first thing I will work on is coupling the output from PanAir to
this program so that we can encode the surface pressures as color and
visualize the streamlines and flow field properties. I would be glad to
hear what you think of this and appreciate any tips you might offer.

Keep in touch!

-  Go to the page of :doc:`references for the VRML <vrmlrefs>`
   program.
-  Go to the :doc:`download page <vrmldownload>` for the VRML program.



Last updated: 14 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > VRML

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
