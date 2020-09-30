===============================================
Algorithm for Binary Search of an Ordered Table
===============================================

:Author: Ralph Carmichael

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Binary Search

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Searching a Table by Bisection
      :name: searching-a-table-by-bisection

   The algorithm for searching an ordered table by bisection is given
   with example code in Fortran.

How do you find your place in an ordered table?

If we have an ordered table x\ :sub:`1`, x\ :sub:`2`, \... , x\ :sub:`n`
and a given value u, then the goal is to find the unique index i such
that x\ :sub:`i` <= u < x\ :sub:`i+1`. It is always distressing to read
programs that search each interval sequentially until a match is found.

::

     sequential:                         bisection:

     DO j=2,n                             i=1   
       IF (u < x(j)) THEN                 j=n 
         i=j-1                            DO 
         EXIT                               k=(i+j)/2   
       END IF                               IF (u < x(k)) THEN 
     END DO                                   j=k  
                                            ELSE
                                              i=k
                                            END IF
                                            IF (i+1 >= j) EXIT
                                          END DO

It may have a few more lines, but the number of comparisons needed to
exit the loop can be dramatically smaller, especially for large tables.
You can read a more thorough description in Numerical Recipes, section
3.4. or in Knuth\'s Sorting and Searching.

If you are writing a general routine, then you have to deal with such
problems as u being outside the range, or if the table turns out to be
not sorted.



Last updated: 10 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` >
   :doc:`Standard Atmosphere <atmos>` > Binary Search

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
