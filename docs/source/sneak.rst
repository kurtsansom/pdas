======================
Sneak Circuit Analysis
======================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > SNEAK

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Sneak Circuit Analysis
      :name: sneak-circuit-analysis

Input to this program consists of data representing the circuit to be
analyzed. The data is prepared by converting the schematic of the
circuit into a \"wire list\". In this wire list all switches are assumed
closed with special circumstances, e.g. double throw switches, being
noted as switchable continuity. The output consists of any paths that
meet the criteria for sneak circuits. These areas of suspicion must then
be submitted to manual analysis, but the number of paths to be analyzed
is greatly reduced by the criterion of opposing power and ground.
Post-analysis consists of checking switch logic to sift out paths that
cannot be switched on and then determining any systems effects of the
remaining possible sneak circuits. The computer output is designed to
present the path tracing information in a format that readily assists
manual analysis of the suspected sneak circuits.

The automated sneak circuit analysis is accomplished in three processing
phases. The first phase is the data reduction phase. In this phase the
\"wire list\" is generated. Input may be in several different formats
and even segmented such that separate groups or contractors may prepare
\"wire lists\" covering subsystems with discontinuities at interfaces.
The \"wire list\" is merged with an in-line disconnect table
establishing continuity at the interface between any subsystems. This
\"wire list\" is then reduced to an ISAM file containing a branch
cross-reference table, in which each to-node/from-node branch is
uniquely identified and stored with its associated characteristics. The
second phase is the path derivation phase. In this process the data in
the branch cross-reference table is used to examine all possible paths
to see which meet the above mentioned two-fold criteria for a possible
sneak circuit. The third phase is the path regeneration phase. The paths
flagged are listed in branch sequence number and then in to-from
connector sequence. The output report generated is in a highly usable
format that allows the engineer to verify the suspected sneak circuit
path by locating the wire segments on the circuit schematic drawings.

Potential users of this package are informed that this is not a
ready-to-use system. Although the documentation is massive, certain
aspects of the system such as preparation of input data from schematics
are not explained in a convenient, detailed format. Users will have to
intensively review the manual and the code itself to gain full knowledge
of the operation of the sneak program. Neither training nor technical
assistance in the use of this program can be provided by COSMIC or NASA.
(Boeing Co.)

This program was released by NASA through COSMIC as HQN-10517. The
italicized text above is from the official NASA release.

-  There are no references for this program.
-  :download:`Download sneak.zip <https://data.kitware.com/api/v1/item/5f73fedb50a41e3d19b9edfa/download>`, containing the original
   source code. This is a Cobol program.



Last updated: 13 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > SNEAK

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
