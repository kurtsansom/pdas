=========================================
Sample cases for the NACA airfoil program
=========================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoils <naca456>` > Samples

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Sample Cases
      :name: sample-cases

Sample cases are shown that illustrate the input to the naca456 program
for a number of typical airfoils. Only the data between &NACA and / is
read by the program. The rest is helpful commentary.

0012
====

NACA 0012 - four digit airfoil First two digits indicate no camber Last
two digits indicate max t/c=12 percent &NACA NAME=\'NACA 0012\',
PROFILE=\'4\', TOC=0.12, CAMBER=\'0\'/

[ `Examine output <_static/naca0012.txt>`__ for this airfoil. Coarse
output.]

.. _section-1:

6412
====

NACA 6412 - This airfoil combines a 0012 thickness (four digit) with a
two-digit 64 camber line. A 64 camber line has 6% max camber at 40%
chord. &NACA NAME=\'NACA 6412\', dencode=2, PROFILE=\'4\', TOC=0.12,
CAMBER=\'2\', cmax=0.06, xmaxc=0.4/

[ `Examine output <_static/naca6412.txt>`__ for this airfoil. Fine
output. ]

.. _section-2:

16-015
======

NACA 16-015 - This airfoil is identical to a 0015-45 airfoil. The
modified four-digit thickness has a leading edge index of 4 and the
maximum thickness is at 50% chord &NACA NAME=\'NACA 16-015 [same as
0015-45]\' profile=\'4m\', leIndex=4, xmaxt=0.5, camber=\'0\'/

[ `Examine output <_static/naca16-015.txt>`__ for this airfoil. Fine
output. ]

.. _section-3:

23012
=====

NACA 23012 - This airfoil combines a 230 mean line (three-digit) with a
0012 thickness (four digit). A 230 mean line has CL=0.3 and maximum
camber at 15% chord. &NACA NAME = \'NACA 23012\', dencode = 3, PROFILE =
\'4\', TOC = 0.12, CAMBER = \'3\', CL = 0.3, XCMAX = 0.15/

[ `Examine output <_static/naca23012.txt>`__ for this airfoil. Very fine
output. ]

63A010
======

First three characters: 63A series thickness Fourth character: no camber
(CL design=0) Last two digits: 10 percent t/c &NACA NAME=\'NACA
63A010\', PROFILE=\'63A\', TOC=0.10, CAMBER=\'0\'/

[ `Examine output <_static/naca63a010.txt>`__ for this airfoil. Coarse
output. ]

63A409
======

NACA 63A409 First three characters: 63A series thickness Fourth
character: CL design=0.4 (63A airfoils always use 6-series modified mean
line) Last two digits: 9 percent t/c &NACA NAME=\'NACA 63A409\',
PROFILE=\'63A\', TOC=.09, CAMBER=\'6M\', CL=0.4/

[ `Examine output <_static/naca63a409.txt>`__ for this airfoil. Coarse
output. ]

64A005.92 and 64A004.29 (F-22)
==============================

F22 Airfoils - Sometimes, the thickness to chord ratio is not an exact
integer in percent. For example, the F-22 uses a uncambered 64A section
with 5.92 percent thickness at the root and 4.29 percent thickness at
the tip. If it were 6 percent, we would write it as 64A006, but to make
it 5.92 we write 64A005.92 for the designation. If there is a
possibility of confusion, parentheses are sometimes employed, as in
65A(3.7)(11.32) where the design cl is 0.37 and the thickness to chord
is 11.32 percent

NACA 64A005.92 First three characters: 64A series thickness Fourth
character: CL design=0.0 (uncambered) Last five characters: 5.92 percent
t/c &NACA name = \'NACA 64A005.92\', profile= \'64A\', toc = .0592,
camber = \'6M\', cl = 0.0, dencode=2/

[ `Examine output <_static/f22root.txt>`__ for this airfoil. Fine output.
]

NACA 64A004.29 First three characters: 64A series thickness Fourth
character: CL design=0.0 (uncambered) Last five characters: 4.29 percent
t/c &NACA name = \'NACA 64A004.29\', profile= \'64A\', toc = .0429,
camber = \'6M\', cl = 0.0, dencode=2/

[ `Examine output <_static/f22tip.txt>`__ for this airfoil. Fine output.
]



Last updated: 12 July 2017 by Ralph Carmichael, `pdaerowebmaster@ AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > :doc:`NACA
   Airfoils <naca456>` > Samples

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
