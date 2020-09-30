===================
What\'s New at PDAS
===================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS Home <index>` > What\'s new

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: What\'s New
      :name: whats-new

   The intent of this page is to list new developments and news that may
   be of interest. A related page is the :doc:`Bug List <bug16>` page,
   where I collect all notices of problems people might have in using
   the programs and work-arounds, if possible. If you `report a
   bug <mailto:pdaerowebmaster@gmail.com>`__, I will put your notice on
   the bug list page.

| 22 December 2018
| Starting in January 2019, the standard way to distribute the complete
  set of programs by mail will change from CD to USB flashdrive. This
  reflects the technological shift in computer hardware away from CD
  drives. I will still make a CD for anyone who prefers this format.

| 8 November 2018
| The file atmos.zip has been updated to incorporate the revised version
  of atmos76.f90 which had an error. This new version of atmos.zip can
  be downloaded from `atmosdownload.html <atmosdownload>`.

| 18 July 2017
| I have put a link to the corrected tables that make up the appendices
  to the book Theory of Airfoil Sections on the main page. The tables
  have been on the site since 2001 and have been a popular item, but you
  had to look around to actually find them. Now, it is not so much of a
  scavenger hunt.

| 6 July 2017
| The tables program for the standard atmosphere that was written for
  Python 2 has a problem when run with Python 3. I have fixed tables.py
  so that it now runs properly with Python 3, but the unfortunate side
  effect is that it no longer runs with Python 2. I have added
  tables2.py which does exactly the same calculations under Python 2.
  The package atmos.zip may be obtained from the :doc:`download
  page <atmosdownload>` for Atmosphere.

| For those interested, there is only one line in the program that is
  different between the versions. It is in the procedure that does a
  binary search for the atmosphere layer that contains the altitude of
  interest. The tabel index is recomputed from earlier estimates with
  the equation
| k=(i+j)/2
| which, in Python 2, will use integers i and j to compute a new integer
  k using integer arithmetic. For example, if i=4 and j=7, k will be
  computed as 5 (integer). But with Python 3, this calculation would
  yield 5.5 (floating point) and this will be deemed unusable as a table
  index. The way to get the desired result in Python 3 is with the
  command
| k=(i+j)//2
| which will return 5 as desired.

| 16 January 2015
| Still more entries on the :doc:`Sources of Aeronautical
  Software <aerosoft>` page.

| 6 January 2014.
| There are some new entries on the :doc:`Sources of Aeronautical
  Software <aerosoft>` page.

| 3 October 2013.
| I have made some improvements to the Line Intersection program as a
  web application. The program now displays the results in graphical
  format. This page is an example of a web application that includes
  input with error checking, self-contained calculation, and graphical
  display of the results, all within a single HTML 5 file of 267 lines
  with no external files or procedures used outside of the web browser.
  I encourage you to examine the source code and use it as a guide for
  your applications. The :doc:`Line Intersection <lineint>` program
  page has a link to the new HTML page.

| 14 August 2013.
| I have added a new web page that complements the application for
  computing the intersection of two straight lines in 2D. The existing
  program is implemented as an application under Microsoft Windows using
  the Delphi programming language. The new web page solves the
  mathematical problem as a web application with the numerical
  calculations performed in the Javascript programming language. The
  advantage of this approach is that the calculation can be performed on
  any platform that supports a web browser, such as Firefox or Internet
  Explorer. This includes not only desktop and laptop computers with any
  operating system or CPU, but also tablets, smartphones, and handheld
  devices such as the Kindle Fire and ipod touch. As some say, \"Code
  once, run anywhere\". The :doc:`Line Intersection <lineint>` program
  page has a link to the new page. Try it on your phone, tablet, and
  computer.

I encourage you to examine the source code for this new page. There you
can see how the page is formatted using HTML and CSS and how the input
data is gathered using HTML input tags. Then the calculations are
performed and results displayed using the Javascript programming
language. The page is totally self-contained with no external links
needed. You can have many good arguments with your colleagues if you
declare that this is the future of engineering programming. I look
forward to your comments.

| 21 April 2013.
| There is now one Table of Contents page replacing the separate pages
  for released programs and those that are \"in progress\". This
  supercedes the message of 15 March 2009.

| 5 January 2013.
| There is an error in the source code to the Celestial Coordinate
  Transformation package, CELEST. The best way to correct this is to
  download a new copy of celest.zip from the :doc:`CELEST program
  page <celest>`. Thanks to Nathaniel Cook for finding this
  error.

| 7 October 2012.
| I have made predictions of the trajectories of various balls falling
  from high altitudes in preparation for the Red Bull team attempt to
  have a human achieve supersonic speeds in a jump from 36 km altitude.
  The link to my calculations is from the Atmosphere page or you may :doc:`go
  to the Falling Objects page <falling>` directly from here.

| 26 September 2012.
| The files containing the DATCOM reference manual have missing pages!
  See the page `fixedDatcomDocs.html <fixedDatcomDocs>` for
  instructions on getting a good copy. Thanks to Steve Peterson for
  spotting this.

| 30 June 2012.
| There is now a page of references for the program called Aircraft
  Motions or by its code `ATC. <atc>` Many thanks to Robert
  Clarke of Dryden for tipping me off to the references and the authors,
  Ralph Bach and Rodney Wingrove of NASA Ames.

| 19 June 2012.
| Back in March of 2009, I promised that I would continue to make
  executables for people with older Macs if they contacted me for a
  special order. My standard disc has executables for Macs with Intel
  chips. The disk on my old iMac with the G5 chip has gone belly-up and
  I don\'t plan to replace it. So, I am afraid I must retract my
  promise. I can always get you a file from an old master disc, but it
  will be from an older source code. You will be frozen in 2007. Sorry
  about that, but it is time to upgrade.

| 17 December 2011.
| I have discontinued processing credit cards and will now exclusively
  use PayPal for online payments. You may still use your credit card for
  a purchase, but it will be through PayPal. For those who do not like
  to use PayPal, you may order a disc and pay by check by sending mail
  to PDAS at PO Box 1438, Santa Cruz CA 95061.
| Since you can now download any program without charge and have the
  source code immediately, there should be no need for express
  shipments. This option has been removed from the PDAS store.

| 8 October 2011.
| All of the programs in the collection are now downloadable free of
  charge. Each program page now has a hot link permitting you to
  download the program as well as instructions and test cases (if
  available). I will still offer the complete collection on CD-ROM as a
  convenience to those who want a secure archive to keep on the shelf.

| 28 September 2010.
| All of the web pages have been converted to HTML 5. You shouldn\'t see
  any difference on a computer browser, but if you use a handheld device
  to browse the web, there is some better assurance that things will
  display properly.

| 26 March 2010.
| There is a new version of the `Panair user\'s
  manual <https://docs.google.com/file/d/0B2UKsBO-ZMVgS1k5VElNamx1cUk/edit?usp=sharing>`__
  available. None of the content is changed, but there is now also a set
  of bookmarks that make it easy to navigate the document and find what
  you are looking for. You may now search for arbitrary words or phrases
  as well. Many thanks to Peter Gasparovic for making this new version
  of the manual.

| 10 February 2010.
| Version 15.0 is ready for distribution. There are several additions
  and improvements. The programs **boom**, **celest**, and **tol** have
  been moved from the in-progress category into general release. A
  number of new reference documents have been located and placed on the
  disc.

| 5 November 2009.
| There are some examples posted for using the **getmac** program for
  computing the mean aerodynamic chord of an arbitrary planform. Go to
  the :doc:`getmac <getmac>` page to see the link to these examples.

| 21 September 2009.
| The documents for the segmented mission analysis program are now
  on-line and may be downloaded. Go to the :doc:`NSEG <nseg>` page for
  links to these documents.

| 1 September 2009.
| The document describing the Takeoff and Landing program has been
  found. Go to the :doc:`TOL <tol>` page for a link to this document.

| 2 June 2009.
| The program documentation for the Space Shuttle Synthesis Program
  (SSSP) has been found. Go to the :doc:`SSSP <sssp>` page for links
  to four good documents with lots of good background info on launch
  trajectories, space vehicle weight estimation, etc. Thank to Joe
  Huwaldt for locating these documents.

| 1 June 2009.
| My `Math Page <ralph/math>` with references to mathematics and
  mathematical software has been revised and all of those pesky broken
  links have been fixed. Thanks to Eva Lynch for some valuable help for
  some replacements for broken links.

| 7 May 2009.
| Check the :doc:`Bug List <bug14>` page for some info on wavedrag and
  wingbody.

| 18 March 2009.
| Version 14.0 is ready for distribution. There are several additions
  and improvements. As of this release, I am compiling all of the
  programs with gfortran instead of my usual commercial compilers. The
  gfortran compiler is absolutely free, runs on Windows, Mac, and Linux
  and other platforms. I have received many comments and complaints that
  people could not modify some of the programs because they could not
  afford a Fortran 95 compiler. Many programs needed modifications to
  allow compilation with gfortran and I think we can now be assured that
  these codes are up to 1995 standards. I am also checking that all
  codes function properly with the g95 compiler (also free). See the FAQ
  page for more info about these free Fortran compilers.

| 15 March 2009.
| I have a number of programs in the PDAS archives that appear to be of
  some value, but are lacking in some of the requirements for general
  release. As of today, I have decided to make them available, even
  though they have problems that prevent me from standing behind them
  with support. There is a link near the end of the :doc:`Contents
  Page <contents16>` that will take you to a page describing
  these programs. All are available for free download so you may examine
  them. I am hoping that some of you will be able to locate the missing
  documentation or can decipher the input requirements from the source
  code.

| 15 March 2009.
| Starting immediately, all of the executable files for the Macintosh
  are coded for the Intel chips. They will not run on older Macs with
  the Power PC chip set. Last year, they were compiled for the Power PC
  and Mac Intel people had to run them in legacy mode. Now they will run
  at top efficiency on the modern Macs. If you have an older Mac, this
  does not mean that I am abandoning you. I am keeping my G5 Imac
  running OS 10.4 for the indefinite future and I can still compile
  programs with g95 or with the Absoft F90 compiler. However, if you
  order a disc and want an executable for Power PC, be sure to tell me
  so I can make you an extra disc with these files. They will not be on
  the regular CD.

| 28 January 2007.
| The CD-ROM now contains the full text of the 1500 page USAF DATCOM
  theory document which forms the basis for Digital Datcom. Also, the
  NASA documents for ORACLS and VASP are now on the CD-ROM.

| 2 May 2005.
| There is a new page on the web site describing :doc:`the use of the
  programs on a Macintosh system <macosx>`. These programs are
  console applications and run under Terminal.



Last updated: 22 December 2018 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

`PDAS Home <index>` > What\'s New

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
