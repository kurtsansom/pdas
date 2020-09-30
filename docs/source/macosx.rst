===============
Macintosh Usage
===============

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > Macintosh

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Macintosh Usage
      :name: macintosh-usage

Those of you who are Macintosh users may find the use of the PDAS
programs a bit strange. You have to remember that these are legacy
programs written for a command line environment. If you try to launch
the application by double-clicking on it in Finder, you may be
distressed when you get an error message.

In Macintosh terminology, these are \'console applications\'. To run a
program, you first launch the Terminal program. You will find it in
Utilities under Applications. After launching, you will have a nice
blank window open on your screen ready to accept commands from the
keyboard. Now, if you have never worked from Terminal, you have a bit of
work before you. I would suggest reading a beginner\'s guide to OS X on
the topic of Terminal. I like the book by David Pogue, called Mac OS X,
The Missing Manual. Refer to Chapter 15, \'Terminal, Doorway to Unix\'.

If you are somewhat comfortable with the concept of using Terminal, then
you launch your application by typing its pathname. By pathname, we mean
the name of the program and the folder where it is located. For example,
on my Mac, I have all the CD-ROM files in a folder called PDAS. So, for
example, to launch panair, I would type

/Users/ralph/pdas/panair/panair.mac

and I would get the prompt to enter the name of the input file. If it is
in the current directory, then you simply enter its name. Otherwise, you
type its complete pathname.

One thing you need to learn right away is how to change directories and
to be aware of the current directory. You need to understand the
commands \'cd\' and \'pwd\' and be able to keep track of where your
files are. Many of the programs write an output file in the course of
execution. This always goes into the current directory.

If you have used DOS or command windows under Microsoft Windows, you may
be accustomed to the convention that applications in the working
directory may be launched by simply typing the name of the file. In Mac
OS, this doesn\'t work. For example, if you are in the folder that
contains panair.mac, the Panair application, you must indicate this by
using the command string

./panair.mac

to launch the application. The single dot is an old Unix convention for
referring to the working directory.

Last updated: 14 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > Macintosh

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
