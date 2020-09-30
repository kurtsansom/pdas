==========================
Static aeroelastic program
==========================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Elastic

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Static aeroelastic program
      :name: static-aeroelastic-program

This software package contains three programs which compute geometric,
mass, aerodynamic, and structural characteristics of fighter type
aircraft. The programs were developed for computational support of a
parametric study of planform and aeroelastic effects on aerodynamic
center and stability derivatives. They calculate alpha- and q- stability
derivatives and induced drag for thin elastic aeroplanes at subsonic and
supersonic speeds. The programs are applicable to studies of steady
state aeroelastic effects on stability characteristics of airplanes, but
results are limited in validity to wings of typical fighter airplanes
with a weight of 40,000 pounds (178,000 Newtons) and wing structures
designed to withstand a limit load of 7.33 g\'s.

The programs represent the airplane at subsonic and supersonic speeds as
thin surface(s) (without dihedral) composed of discrete panels of
constant pressure for the aerodynamic effects, and as slender beam(s)
for the structural effects. They compute the static aeroelastic
angle-of-attack and pitch rate stability derivatives for a twisted and
cambered thin airplane configuration at various flight conditions. (
Kansas Univ. )

This program was released by NASA through COSMIC as LAR-11602. The
italicized text above is from the official NASA release.

-  Go to the page of :doc:`references for the Static
   Aeroelastic <elasticrefs>` program.
-  :download:`Download elastic.zip <https://data.kitware.com/api/v1/item/5f73feb950a41e3d19b9ebd7/download>`, containing the
   original source code for the three programs. These programs require
   the Control Data extensions to Fortran of OPENMS, READMS, and WRITMS
   and I will not be able to get this running until I get the modern
   equivalents into the programs.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > Elastic

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
