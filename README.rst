Concept Idea for SISO tool on Octave
====================================

This repository contains some code I am working on about the concept for sisotool on Octave.

It is based in the current rlocus code found in octave control package.

First you can download or clone at:
 
   $ git clone git@github.com:EriveltonGualter/Concept-SISO-tool-for-Octave.git

Test code
=========

In another m file or in the command window:

   $ pkg load control
   
   $ s = tf('s');
   
   $ sys = (s + 10)/(s*(s + 5)*(s + 15)*(s^2 + 25));
   
   $ rlocus_dyn(sys);

References
----------

- https://wiki.octave.org/Interactive_plots


IT IS JUST A PRELIMINARY WORK TO PROOF THE CONCEPT
