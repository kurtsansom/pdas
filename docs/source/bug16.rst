================================================
Bug List for Public Domain Aeronautical Software
================================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > Bug List

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: The Bug List for Public Domain Computer Programs for the
      Aeronautical Engineer
      :name: the-bug-list-for-public-domain-computer-programs-for-the-aeronautical-engineer

| Last updated 8 November 2018
| This list is maintained with the most recent item on top.

| 8 November 2018
| The file atmos76.f90 in the folder atmos on the CD has an error. You
  can download a new copy of atmos.zip from the page
  `atmosdownload.html <atmosdownload>`. Thanks to Ryan Zehr and
  Keith Owens for pointing out the error. The error only applied to
  altitudes greater than 86 km.

| 16 September 2017
| The file sink.for was missing from therm1d.zip and has been restored.
| Thanks to Laurant Costa for spotting this omission.

| 17 March 2015
| The file hotcold.f90 was missing from atmos.zip and has been restored.

| 5 January 2013.
| There is an error in the source code to the Celestial Coordinate
  Transformation package, CELEST. The best way to correct this is to
  download a new copy of celest.zip from the program page
  http://www.pdas.com/celest.html and thanks to Nathaniel Cook for
  finding this error. The error is in subroutine GalacticToEquatorial,
  roughly 33-34 lines from the top.
| The lines

|   lambdaLocal=lambdaLocal*DEG2RAD
|   betaLocal=betaLocal*DEG2RAD

should be deleted, as they are performed in the lines that follow.

| 26 September 2012.
| The files containing the DATCOM reference manual have missing pages!
  See the page `fixedDatcomDocs.html <fixedDatcomDocs>` for
  instructions on getting a good copy. Thanks to Steve Peterson for
  spotting this.

10 November 2010 - There is a typo in the naca456 program. The error is
in file nacax.f90 in subroutine GetRk1 in the definition of array KTAB.
The proper statement is

REAL,PARAMETER,DIMENSION(5):: KTAB = (/ 361.4, 51.64, 15.957, 6.643,
3.23/) ! typo fixed 7 Nov 2010 \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--^

The erroneous value was 15.967, which leads to an error of one part in
1595, so I doubt if anyone has been harmed by this typo. But, you may
want to patch your source code. Thanks to sharp-eyed Robert Stone of
Northrop Grumman for spotting this one.

8 August 2009 - Another file missing from the CD. The file named
input.txt from the Mass Properties program is not present. You can
`download a copy <_static/masspropinput.txt>`__ from the PDAS web site.
Another catch from Graham Feltham!

7 August 2009 - In the readme.txt for the Vortex Lattice Minimum Drag
program, you are promised a copy of NASA TN D-8090 on the CD. But, it
isn\'t there! Oops, my error. You can `, download a
copy <https://docs.google.com/open?id=0B2UKsBO-ZMVgS1dycnRvalN2VVk>`__
from the PDAS web site. Thanks to Graham Feltham for noticing this.
[Fixed in 2010].

7 May 2009 - There is a bug in wavedrag that may give a zero or negative
fuselage cross-section area when enriching the area distribution
function. The fix was to change the zero threshhold from 1E-8 to 1E-7 in
the fitting algorithm. You may download
:download:`wavedrag.zip <https://data.kitware.com/api/v1/item/5f73fee650a41e3d19b9eec8/download>`
for a revised copy of d2500.for
plus executables d2500.exe, d2500.mac, and d2500.lnx for the different
platforms. Again, thanks to the U. Sydney folks for those sharp eyes.

26 April 2009 - The wingbody program was shipped with an error that came
to light when I changed from the Lahey fortran compiler to gfortran.
Download :download:`wingbody.zip <https://data.kitware.com/api/v1/item/5f73fee750a41e3d19b9eede/download>`
for replacement files.
Thanks to Kai Lehmkuehler and the U. Sydney design team for spotting
this.

22 April 2009 - The kernel program has a problem compiling correctly
with gfortran. I will look into this.

18 March 2009 - Some of the test cases for VASP do not work correctly.
Example 4 is especially dangerous because it goes into an infinite loop
with write statements and will fill your hard disk. Beware!

18 March 2009 - Problem 5 in Gas Properties gives zero output. Something
is wrong here.

18 March 2009 - There is still a problem with the program hab2wgs in the
/2wgs directory. I will try to get this going soon.

| 6 April 2001 - If you are running PanAir on a Unix system, you may
  encounter fatal execution errors if you use the sample files on the
  disc as test cases. This is because they are MS-DOS style text files
  and each line is terminated with a carriage return and a line feed.
  For Unix, you want the line feed but not the carriage return. There
  are a number of utilities on Unix that will do this conversion. The
  command
|     col -bx
| seems to do the job and some text editors will do it (you might have
  to Import rather than Open).
| Thanks to Sven Kassbohm for pointing out this one.



Last updated: 9 November 2018 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > Bug List

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
