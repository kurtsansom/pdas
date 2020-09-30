=====================================
Frequently Asked Questions about PDAS
=====================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > FAQ

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Frequently Asked Questions
      :name: frequently-asked-questions

   Some questions about Public Domain Aeronautical Software come up
   frequently.

All of the programs are free to download, but you charge for a
thumbdrive. Is there premium content? Why would anyone order a
thumbdrive?

There is no difference between the source code of the programs. Also no
difference between the sample cases and instruction files. The reference
documents for each program are not included in the download, but are
individually downloadable from the reference pages on the PDAS web site.

The thumbdrive or CD lets you have the entire collection along with the
references. This saves you from having to make 83 downloads for the
programs and hundreds of downloads for the individual references,
leaving you with several hundred files to organize and file on your
computer. The answer to the question is that it is the best solution for
someone for whom time is a more valuable resource than money.

Also, I have not included the executable code for the programs in the
download. I think it is always better for the user to compile the
program for the target machine. The thumbdrive or disc has these, but
always compiled for the most generic machine. For example, some users
have a single core cpu and 32-bit operating system, while others have
quad-core cpus and 64-bit operating systems and lots of combinations in
between. My distribution would have to be the most generic possible. If
any user does not have a Fortran compiler, I can email them a generic
executable for a given program.

How can I get a copy of the free gfortran compiler?

Go to the `gfortran web site. <http://gcc.gnu.org/fortran/>`__ From
there, you can get a copy for Windows, Macintosh, Linux or several other
platforms. The gfortran compiler is part of the Gnu Compiler Collection,
and you can install the entire collection, thereby giving you Fortran,
C, Java, and C++ compilers.

How can I get a copy of the free g95 Fortran compiler?

Go to the `g95 web site. <http://www.g95.org/>`__ From there, you can
get a copy for Windows, Macintosh, Linux or several other platforms.

How can I get a copy of gnuplot?

Go to the `Gnuplot Web Page <http://www.gnuplot.info>`__ for
instructions on downloading and installing a free copy of gnuplot. If
you use Linux, be sure to get gnuplot-x11 and not the generic gnuplot.

How can I get a printed copy of DATCOM?

| If you intend to be a serious user of digital DATCOM, you should get
  the manuals for the original DATCOM. You may download the entire set
  from this reference:
| Fink, R.: USAF Stability and Control DATCOM..
  `AFWAL-TR-83-3048 <https://docs.google.com/open?id=0B2UKsBO-ZMVgMXZqVmFjcnR3dlU>`__.
  McDonnell Douglas Corporation, Douglas Aircraft Division, for the
  Flight Controls Division, Air Force Flight Dynamics Laboratory,
  Wright-Patterson AFB, Ohio. October 1960, revised November 1965,
  revised April 1978.
| If you are thinking about having these documents as hard copy, you may
  wish to read my :doc:`printed DATCOM Manual <datcomb>` page that
  discusses your options.
| If you have a disc from 2012 or earlier or loaded the DATCOM reference
  document from this site in the past, be warned that there are missing
  pages. Go to `fixedDatcomDocs.html <fixedDatcomDocs>` to get a
  new copy of the entire document with the missing pages restored.

What does the variable SWAFB stand for in DATCOM?

Short answer: I don\'t know. Obviously, this was intended to be used for
something, but it was never implemented. I have scanned the entire
source code and can assure you that it is never used on the right hand
side of a = statement or in a subroutine or function call. Several users
have been a little worried because it appears in some examples. If
anyone has any inside information, I will include it in the
documentation.

What version of PanAir is distributed on the CD-ROM?

This version of PanAir is known as the ht2 version and is the last
public domain version dated 1993. The Boeing Company has continued the
development of PanAir, but not for public release.

Panair input is too difficult and Panin is incomplete and has errors.
Isn\'t there an input procedure for Panair that has a graphical user
interface?

People have wanted this for years, but no one has stepped up and taken
on the task. There is a new company, called `Hegedus
Aerodynamics <http://www.hegedusaero.com/>`__ that is in the process of
developing such a product. You may download the current version of this
product from their web site.

I see that you have some pages labelled as XHTML + MathML. What is this?

I think that MathML is the upcoming way of presenting pages on the web
that contain mathematical expressions. Go to my :doc:`MathML
page <mathml>` for more information.

How can I get a copy of the NASA report on the geometry of the NACA
airfoil sections?

In December 1996, NASA published a new report outlining the theory
behind the NACA airfoil sections. It is designated TM-4741 and you can
`download a
copy <https://docs.google.com/open?id=0B2UKsBO-ZMVgSzBfTkN4alpYX2M>`__
(PDF, 293 KB) from this server. There is a copy on the distribution as
well as a copy of the source code.

How can I get a copy of NACA Report 1135 with Equations, Charts and
Tables for Compressible Flow?

You can `download a
copy <https://docs.google.com/open?id=0B2UKsBO-ZMVgUnJQOUxxemVjSVU>`__
(PDF, 12.9 MB) from this server. There is a copy on the distribution.

When I try to run a program, it says that I cannot open a certain file
(usually a .out file). What is wrong?

The most likely reason this happens is if you are trying to run the
program from the CD-ROM and have set the default drive to the CD-ROM.
The problem is that the program is trying to open an output file on the
default device. Now, you cannot create a new file on the CD-ROM. It is
possible to run from the CD-ROM, but you must leave the default drive
set to a hard disk.

I copied a file from the CD-ROM. Now, when I want to modify it, my
editor says that I can\'t. What\'s wrong?

All files on a CD-ROM are read-only. Sometimes, depending on how you do
the copy, this attribute gets carried over to the copy of the file. If
this happens, bring up the Properties page for the file and uncheck
Read-only. (Right-click to get Properties). This should never happen on
Linux or Macintosh.

The program on this disc gives coordinates for NACA airfoils, but I am
interested in a [\... airfoil name \...]. Can you help?

The best source for help is the `Airfoil Data
Site <http://www.ae.illinois.edu/m-selig/ads>`.

What airfoil is used on the [\... airplane name \...]?

I once started a list of airplanes and the associated airfoils. Then I
ran across `The Incomplete Guide to Airfoil
Usage <http://www.ae.illinois.edu/m-selig/ads/aircraft>` and was
amazed at the depth of coverage. There are hundreds of airplanes in the
list with the corresponding root and tip airfoils. I quietly threw my
meager list away and now consult this page. You can all thank Dave
Lednicer for maintaining this list and send him any info you may have
for additions to the list.

NASA has written hundreds, maybe thousands of flight simulator programs.
Why don\'t you put some of these on the distribution?

The simplest answer to this is that Flight Sims tend to be very
graphical and this will tie the program to one platform. In addition,
there are numerous commercial products that are better value to an end
user than a research code from NASA. If you want a flight simulator that
you can look inside and modify to your needs, have a look at the
`FlightGear <http://www.flightgear.org>`__ open source flight simulator.
If you want more information on commercial flight simulators for the PC,
you might begin at the `AvSim <http://www.avsim.com/>`__ site or the
`Thirty-Thousand
Feet <http://memweb.newsguy.com/~ericmax/flightsi.htm>`__ page. There
are many add-in or add-on files for setting up simulators for a
particular airplane or scenery - even cockpit gauges.

I want to get copies of the books Fluid Dynamic Drag and Fluid Dynamic
Lift by Hoerner. They do not seem to be available in bookstores. Can I
get copies through PDAS?

No, not from me. But if you write

| Hoerner Fluid Dynamics
| PO Box 21992
| Bakersfield CA 93390
| 661-665-1065

| you should find out the current price, etc.
| I think you can order through Amazon, also.

What book should I read to learn about [\... aeronautical topic \...]?

The best thing I can do is to refer you to `Dan Raymer\'s book
list <http://www.aircraftdesign.com/books>`. He has collected a
most comprehensive list of important books for aero folks with comments,
etc. His whole site is worth a visit.

Why don\'t you put a copy of Theory of Airfoil Sections by Abbott and
von Doenhoff on the distribution?

Simple. It is copyrighted and I will get myself sued. However, there is
a copy of NACA 824. This report by Abbott, von Doenhoff and Stivers was
the prototype of the book. The report has some interesting material that
is not in the book. The distribution also has a copy of NACA Report 452
by Theodore Theodorsen with a thorough treatment of airfoil theory that
overlaps much of the material in the book. You should be aware that
there are many typos in the numerical tables in the three appendices to
the book. There are :doc:`corrected pages <avd>` at this web site.
Anyway, you should all buy a copy of Abbott and von Doenhoff and also
print the corrected pages from this web site for any airfoil you wish to
examine. The inexpensive Dover edition is a bargain among the expensive
textbooks of the modern day.

How can I get a job in the aviation industry in the USA?

I get asked this a lot and I really don\'t have a good answer. If anyone
can help me out with a reference or a web site that deals with this
question, I would really appreciate it.

How can you make the best approximation of pi, using only six decimal
digits?

| So, what does this have to do with aeronautical engineering? Probably
  nothing, but I will share this way to win a free beer now and then.
  Most folks will answer this with 3.14159, but you can amaze them with
  the fact that 355/113 is 3.14159292\... which is better than 3.14159.
  But, to really top them all, you can use the fact that

.. container::

   Sqrt(Sqrt(2143/22)) = 3.14159265\...

Can I use my credit card to order a copy of Public Domain Computer
Programs for the Aeronautical Engineer?

All purchases and donations are now handled thru PayPal. PayPal allows
you to use all popular credit cards to charge your purchase.

How can one place orders from outside the USA without using PayPal or a
credit card?

To place an order from outside the United States, you should go to a
major international bank and have them write you a check to Public
Domain Aeronautical Software (PDAS) for $99 US. They will charge you the
equivalent in local currency plus money exchange fees. An alternative
approach is to get an International Money Order, usually through a local
post office. If you are willing to accept the small risk of your letter
being lost in the mail, you may send the cash equivalent of US $99 in
your own currency. I like to get pounds and euros. As for other
currencies, maybe you will inspire me to visit your country.

I want to use a non-postal carrier, such as UPS or FedEx. Is this
possible?

The simple answer is yes. But, of course, it costs more to do that. Send
me e-mail and I will tell you what it will cost. If you are in North
America or Western Europe, you have to be in an fantastic hurry, because
most people receive their discs in about five days. In other parts of
the world, I can appreciate that the local mail service sometimes leaves
a bit to be desired. The prices vary from location to location, but
expect to pay an additional $80 for air express to eastern Europe,
Middle-east or Asia and $40 to North America or western Europe.

Why do you put a low value on the customs declaration form for non-USA
shipments?

The value that should be declared is the cost of sending another package
if this one is lost or destroyed in the mail. From this point of view,
the value is the cost of the blank media plus the envelope and wrappers
- about $5 at most.



Last updated: 22 December 2018 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > FAQ

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
