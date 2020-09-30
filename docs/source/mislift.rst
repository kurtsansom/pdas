=================================================================================================
Aerodynamic Lift On Wing-Body Combinations At Small Angles Of Attack In Supersonic Flow (MISLIFT)
=================================================================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > MisLift

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Aerodynamic Lift On Wing-Body Combinations At Small
      Angles Of Attack In Supersonic Flow (MISLIFT)
      :name: aerodynamic-lift-on-wing-body-combinations-at-small-angles-of-attack-in-supersonic-flow-mislift

Two separate and distinct theories are incorporated in this computer
program to estimate the lift-induced pressures existent on a wing-body
combination. These are

#. *the second-order shock-expansion theory, which is used to obtain the
   lifting pressures on the body alone at small angles of attack, and*
#. *the linear-theory integral equations, which is used to evaluate the
   lifting pressures induced by the wing.*

These equations relate the local surface slope at a point on the lifting
surface to the pressure differential at the point and the influence of
the pressures upstream of the point. The numerical solution of these
equations is effected by treating the wing planform as a composite of
elemental rectangles and applying summation techniques to satisfy the
necessary integral relations.

Most of the input required by this program is involved with the
description of the missile planform geometry. The output consists of the
computed value of the lifting pressure slope (the differential pressure
coefficient per degree angle of attack) for each of the elements in the
planform array. A force and moment summary is presented for the
configuration under consideration. ( NASA Langley Research Center )

This program was released by NASA through COSMIC as LAR-10932. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the MISLIFT <misliftrefs>`
   program.
-  :download:`Download mislift.zip <https://data.kitware.com/api/v1/item/5f73fec950a41e3d19b9ecee/download>`, containing the
   original source code.



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > MisLift

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
