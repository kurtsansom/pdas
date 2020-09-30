============================
Compressible Flow Calculator
============================

:Author: Ralph L. Carmichael, Public Domain Aeronautical Software

.. container:: banner

   Public Domain Aeronautical Software (PDAS)  

| Main
| Page

| 
| Gamma

| Isentropic
| Flow

| Normal
| Shock

| Oblique
| Shock

| Rayleigh
| Flow

| Fanno
| Flow

| Standard
| Atmosphere

.. container::
   :name: main

   This calculator is an aid in making calculations in compressible
   fluid dynamics, such as isentropic flow, normal shock, oblique shock,
   Rayleigh and Fanno flow. A page allows computation of the standard
   atmosphere at a given altitude and Mach number.

   There are several colored buttons across the top of the form. If you
   click on a button, a computing page appears for the desired
   calculation. There will be one or more input boxes to be filled in
   and choices that can be made about which input quantity is to be
   specified.

   After making your choices, click the Compute button and the desired
   results will appear in a window.

   You may dismiss the calculator by closing the browser tab.

   To return to this page, press the Main Page button.

   To go to the Public Domain Aeronautical Software home page, click
   :doc:`here <index>`.

.. container::
   :name: gamma

   .. rubric:: Ratio of Specific Heats (gamma)
      :name: ratio-of-specific-heats-gamma

   You may set the value of gamma, the ratio of specific heats of the
   gas to be computed. The default value is 1.4

   gamma =
   Apply

.. container::
   :name: isentropicFlow

   .. rubric:: Isentropic Flow
      :name: isentropic-flow

   Select the input quantity. Then type the value of the desired
   quantity in the input box. Finally, click (or tap) the Compute button
   to display the Output. Illegal values will be flagged with error
   messages.

   Input Quantity

Output data

Mach Number

Mach number, M =

temperature ratio, T/T\ :sub:`t`

compressibility factor, β =

pressure ratio, p/p\ :sub:`t`

pressure ratio, p/p\ :sub:`t`\ =

density ratio, ρ/ρ\ :sub:`t`

temperature ratio, T / T\ :sub:`t` =

q ratio, q/p

density ratio, ρ / ρ :sub:`t` =

q ratio, q/p\ :sub:`t` (M < 1.4)

q static ratio, q/p=

q ratio, q/p\ :sub:`t` (M > 1.4)

q total ratio, q/p\ :sub:`t`\ =

velocity ratio, V/a\ :sub:`\*`

velocity ratio, V / a\ :sub:`\*` =

area ratio, A/A\ :sub:`\*` (M < 1)

area ratio, A / A\ :sub:`\*` =

area ratio, A/A\ :sub:`\*` (M > 1)

Prandtl-Meyer angle, deg.=

Prandtl-Meyer angle, deg

Mach angle =

Mach angle, deg

gamma =

Input value

Compute

.. container::
   :name: normalShock

   .. rubric:: Normal Shock
      :name: normal-shock

   Select the input quantity. Then type the value of the desired
   quantity in the input box. Finally, click (or tap) the Compute button
   to display the Output. Illegal values will be flagged with error
   messages.

   Input Quantity

Output Data

Upstream Mach Number

Upstream Mach number, M\ :sub:`1`\ =

Downstream Mach Number

Downstream Mach Number, M\ :sub:`2`\ =

total pressure ratio, p\ :sub:`t2`/p\ :sub:`t1`

total pressure ratio, p\ :sub:`t2`/p\ :sub:`t1`\ =

Static pressure ratio, p\ :sub:`2`/p\ :sub:`1`

static pressure ratio, p\ :sub:`2`/p\ :sub:`1` =

static temperature ratio, T\ :sub:`2`/T\ :sub:`1`

static temperature ratio, T\ :sub:`2`/T\ :sub:`1` =

static density ratio, ρ\ :sub:`2`/ρ\ :sub:`1`

static density ratio, ρ\ :sub:`2`/ρ\ :sub:`1` =

p\ :sub:`t2`/p\ :sub:`1` =

gamma =

Input value

Compute

.. container::
   :name: obliqueShock

   .. rubric:: Oblique Shock
      :name: oblique-shock

   Select the input quantity. Then type the value of the desired
   quantity in the input box. Next, type the value of the upstream Mach
   number in its input box. Finally, click (or tap) the Compute button
   to display the output. Illegal values will be flagged with error
   messages.

   Input Quantity

Output data

Ramp angle, δ, deg. (weak)

Ramp angle, deg., δ =

Ramp angle, δ deg. (strong)

Shock angle, deg, θ =

Shock angle, θ, deg.

total pressure ratio, p\ :sub:`t2`/p\ :sub:`t1`\ =

total pressure ratio, p\ :sub:`t2`/p\ :sub:`t1`

static pressure ratio, p\ :sub:`2`/ p\ :sub:`1` =

static pressure ratio, p\ :sub:`2`/p\ :sub:`1`

static temperature ratio, T\ :sub:`2`/T\ :sub:`1` =

static temperature ratio, T\ :sub:`2`/T\ :sub:`1`

static density ratio, ρ\ :sub:`2`/ ρ\ :sub:`1` =

static density ratio, ρ\ :sub:`2`/ρ\ :sub:`1`

pressure coeff., (p\ :sub:`2`-p\ :sub:`1`)/q =

downstream Mach number, M\ :sub:`2`

downstream Mach number, M\ :sub:`2` =

upstream normal Mach number, M\ :sub:`1n`

M\ :sub:`1n` =

gamma =

Input value

Compute

| 
| Upstream Mach number

.. container::
   :name: rayleighFlow

   .. rubric:: Rayleigh Flow
      :name: rayleigh-flow

   Select the input quantity. Then type the value of the desired
   quantity in the input box. Finally, click (or tap) the Compute button
   to display the output. Illegal values will be flagged with error
   messages.

   Input Quantity

Output data

Mach Number

Mach number, M =

T\ :sub:`t`/T\ :sub:`t`\ :sup:`\*` (M < 1)

total temperature ratio, T\ :sub:`t` / T\ :sub:`t`\ :sup:`\*` =

T\ :sub:`t`/T\ :sub:`t`\ :sup:`\*` (M > 1)

static temperature ratio, T / T\ :sup:`\*` =

T/T\ :sup:`\*` (M < 0.85)

static pressure ratio, p / p :sup:`\*` =

T/T\ :sup:`\*` (M > 0.85)

total pressure ratio, P\ :sub:`t` / P\ :sub:`t`\ :sup:`\*` =

p/p\ :sup:`\*`

velocity ratio, V / V\ :sup:`\*` =

P\ :sub:`0`/P\ :sub:`0`\ :sup:`\*` (M < 1)

static density ratio, ρ / ρ\ :sup:`\*` =

P\ :sub:`0`/P\ :sub:`0`\ :sup:`\*` (M > 1)

S\ :sub:`max` / R =

V/V\ :sup:`\*`

gamma =

ρ / ρ\ :sup:`\*`

Input value

Compute

.. container::
   :name: fannoFlow

   .. rubric:: Fanno Flow
      :name: fanno-flow

   Select the input quantity. Then type the value of the desired
   quantity in the input box. Finally, click (or tap) the Compute button
   to display the output. Illegal values will be flagged with error
   messages.

   Input Quantity

Output data

Mach Number

Mach number, M =

T / T\ :sup:`\*`

static temperature ratio, T/T\ :sup:`\*` =

P/P\ :sup:`\*`

static pressure ratio, P/P\ :sup:`\*` =

P\ :sub:`t` / P\ :sub:`t`\ :sup:`\*` (M<1)

total pressure ratio, P\ :sub:`t`/P\ :sub:`t`\ :sup:`\*` =

P\ :sub:`t` / P\ :sub:`t`\ :sup:`\*` (M>1)

density ratio, ρ / ρ\ :sub:`t` =

V/V\ :sup:`\*`

velocity ratio, V / V\ :sup:`\*` =

(fL\ :sub:`max`/D) (M < 1)

fL\ :sub:`max`/D =

(fL\ :sub:`max`/D) (M > 1)

S\ :sub:`max`/R =

gamma =

Input value

Compute

.. container::
   :name: atmosphere

   .. rubric:: Atmosphere
      :name: atmosphere

   1. Select the units. SI         US

   | 2. Enter the altitude

   3. Enter the Mach number

   4. Click (or tap) the Compute button. Compute

   .. container::
      :name: atmosphereResults

| Last updated: 16 July 2020 by Ralph L. Carmichael, Public Domain
  Aeronautical Software (fc6)
| `pdaerowebmaster AT gmail DOT
  com <mailto:pdaerowebmaster@gmail.com>`__

.. container:: banner

   Public Domain Aeronautical Software (PDAS)  
