================================================
Generalized digital contouring program (CONTOUR)
================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Contour

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Generalized digital contouring program (CONTOUR)
      :name: generalized-digital-contouring-program-contour

This is a digital computer contouring program developed by combining
desirable characteristics from several existing contouring programs. It
can easily be adapted to many different research requirements. The
overlaid structure of the program permits desired modifications to be
made with ease.

The contouring program performs both the task of generating a depth
matrix from either randomly or regularly spaced surface heights and the
task of contouring the data. Each element of the depth matrix is
computed as a weighted mean of heights predicted at an element by planes
tangent to the surface at neighboring control points. Each contour line
is determined by its intercepts with the sides of geometrical figures
formed by connecting the various elements of the depth matrix with
straight lines.

Although contour charts are usually thought of as being two-dimensional
pictorial representations of topographic formations of land masses, they
can also be useful in portraying data which are obtained during the
course of research in various scientific disciplines and which would
ordinarily be tabulated. Any set of data which can be referenced to a
two-dimensional coordinate system can be graphically represented by this
program. ( NASA Langley Research Center )

This program was released by NASA through COSMIC as LAR-10872. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  :download:`Download contour.zip <https://data.kitware.com/api/v1/item/5f73feb450a41e3d19b9eb8d/download>`, containing the
   original source code. Most of the source code is Fortran, but a
   substantial amount is in CDC 6600 assembly language. This program
   will probably remain *in progress*, but the code might prove useful
   to someone.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Contour

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
