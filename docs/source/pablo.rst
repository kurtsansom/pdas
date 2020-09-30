=================================================================
Potential Flow about Airfoils with Boundary Layer Coupled One-Way
=================================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Airfoil
   (PABLO)

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: PABLO
      :name: pablo

   .. container::
      :name: picasso

      |69|

Pablo is a pedagogical low-speed airfoil analysis program written in
MATLAB. It uses a one way coupled inviscid + boundary layer model.

The inviscid flow is solved using a Panel Method [1]. Three different
kinds of singularity distributions can be used. The boundary layer
equations use the inviscid flow velocity provided by the panel method,
but the effect of the boundary layer on the inviscid flow is not taken
into account, as in Panda [2]. The boundary layer model is described in
[3]. It uses Thwaites\' equations for the laminar part of the flow, and
Head\'s equations for the turbulent part. Michel\'s criterion is used to
locate transition. The drag coefficient is computed using the
Squire-Young formula.

I am including this program on the CD-ROM as a convenience. The way to
keep up-to-date with the latest version is to bookmark the `Pablo
website <http://www.nada.kth.se/~chris/pablo/pablo>`__ and download
from there.

Note added 6 September 2015: The KTH website seems to no longer exist.
If you want a copy of the Matlab source code, you may `download
it <https://data.kitware.com/api/v1/item/5f73fed050a41e3d19b9ed56/download>`__ from here. This is my copy as of 2004.

Pablo is maintained by

.. container::

   KTH- The Royal Institute of Technology
   Department of Aeronautics
   Stockholm, Sweden

Pablo was programmed by Christian Wauquiez in 1999. The KTH faculty
adviser was Arthur Rizzi (rizzi@flyg.kth.se ).

References
==========

#. Katz and Plotkin : Low Speed Aerodynamics, From Wing Theory To Panel
   Methods. McGraw-Hill Inc., 1991. 2nd edition 2001.
#. Ilan Kroo : PANDA - A Program for Analysis and Design of Airfoils. ©
   Desktop Aeronautics, 1988.
#. Jack Moran : An introduction to Theoretical and Computational
   Aerodynamics. John Wiley and sons, 1984. [now available in low-cost
   Dover edition]
#. I.H. Abbott and A.E. Von Doenhoff, Theory of wing sections, Dover
   Publications Inc,  New York, 1959



Last updated: 14 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Airfoil
   (PABLO)

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. |69| image:: images/69.gif
   :width: 170px
   :height: 250px
