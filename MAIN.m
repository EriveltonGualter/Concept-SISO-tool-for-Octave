% Erivelton Gualter 
% 15/02/2018

clear all
close all

pkg load control

s = tf('s');

## Olter example of plants.
## sys = (s + 10)/(s*(s + 5)*(s + 15)*(s^2 + 25));
## sys = (s-1) / ( (s-3)*(s+4) )
## sys = 1/(s^2+2*s+5);

sys = 50*(s+3) / (s^ 3-s^ 2+11*s-51)
 
 
 % Defining position of the plots
 
ax1 = subplot(3,3,[2,3,5,6]); 
ax2 = subplot(3,3,1);
ax3 = subplot(3,3,4);
ax4 = subplot(3,3,[8,9]);
 
setAxes(ax2, ax3, ax4)
 

rlocus_dyn2(sys, ax1)

