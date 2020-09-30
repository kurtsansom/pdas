=====================================================
Aircraft Roll-Out Iterative Energy Simulation Program
=====================================================

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > ARIES

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  

.. container::
   :name: header

   .. rubric:: Aircraft roll-out iterative energy simulation program
      :name: aircraft-roll-out-iterative-energy-simulation-program

The ARIES program analyzes aircraft brake performance during rollout.
The program simulates a three degree of freedom rollout after nose gear
touchdown. The amount of brake energy dissipated during landing
determines the life expectancy of brake pads. ARIES incorporates brake
pressure, actual flight data, crosswinds, and runway characteristics to
calculate the following:

#. brake energy used during rollout for up to four independent brake
   systems,
#. time profiles of rollout distance, velocity, deceleration, and
   lateral runway position, and
#. all aerodynamic moments on the vehicle.

ARIES can be adapted for modeling most landing aircraft during unpowered
rollout. Optimum braking procedures can be developed with ARIES to
minimize brake deterioration while staying within specified lengths of
runway. ARIES has been used to evaluate several Shuttle Orbiter brake
pad failures.

After the input of initial runway and landing conditions, ARIES utilizes
three simulation models to evaluate the rollout at given time intervals.
The brake force simulation requires tire and brake information along
with actual flight data. The equations of motion allow force and moment
balances to be calculated. The aerodynamic effects are computed,
including lift, drag, axial and normal forces, and roll, pitch, and yaw
moments. The various aerosurface effects are obtained from interpolation
of the Rockwell Aero Sciences Group Design Data Book tables. The output
is in both printed and plotted form. ARIES iterates the calculations
until the computed forward velocity is below three knots. ( Rockwell
International Corp. for NASA Marshall)

This program was released by NASA through COSMIC as program MSC-20816.
The italicized text above is from the original NASA release to COSMIC.
The source code is reasonably well documented and is rather interesting.
However, the aero data is to be read from the Rockwell Data Book tables,
and these are not included with the program. The telemetry data from the
vehicle must be in the same format as that used in the NASA space
shuttle program. Overall, I think this program is too tightly bound to
Space Shuttle operations to be useful in its original format. If you
were going to write a new brake performance program for your
application, it would be nice to have this code for reference.

-  No references have been found for this program.
-  :download:`Download aries.zip <https://data.kitware.com/api/v1/item/5f73feb050a41e3d19b9eb3d/download>`, containing the original
   source code and its conversion to modern Fortran.



Last updated: 14 July 2017 by Ralph Carmichael, `pdaerowebmaster AT
gmail DOT com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: crumb

   :doc:`PDAS home <index>` > :doc:`Contents <contents16>` > ARIES

.. container:: newbanner

   Public Domain Aeronautical Software (PDAS)  
