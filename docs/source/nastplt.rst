===============================
NASTRAN plotting post processor
===============================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > NastPlt

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: NASTRAN plotting post processor
      :name: nastran-plotting-post-processor

The NASTRAN NASTPLT Plotting Post Processor was developed to read
NASTRAN generated NASTPLT plot files, to check the file contents for
validity, and to translate the NASTPLT plot commands into appropriate
calls to plotting routines for either CalComp, Tektronix PLOT10, or
Versatec plotting systems. This program was originally written to
generate a summary of the contents of a NASTPLT plot file for the
purposes of debugging and checking the validity and characteristics of
the file contents. The summary information generated includes the
following information for each plot on the NASTPLT file: plot number,
draw-lines summary, draw-axis summary, draw-character summary, maximum
and minimum values in the x-range and y-range, and pen change
information. The summary information also includes the following
information for the NASTPLT file as a whole: the number of records read,
the number of commands, and the number of plots.

The summary generation program was extended to include the plot routine
calls for the CalComp, Tektronix PLOT10, and Versatec plotting systems.
The Post Processor is run interactively and prompts the user for all of
the required input. The user may request the summary information and
then use that information to determine which plots on the file are to be
output. The Post Processor is compatible with either VAX or IBM NASTRAN
generated NASTPLT files. ( Computer Sciences Corp. for NASA Goddard).

This program was released by NASA through COSMIC as GSC-12833. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  :download:`Download nastplt.zip <https://data.kitware.com/api/v1/item/5f73fecc50a41e3d19b9ed1a/download>`, containing the
   original source code in three different versions for the three
   different devices noted above.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > NastPlt

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
