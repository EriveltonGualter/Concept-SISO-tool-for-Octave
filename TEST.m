
clear all
close all

pkg load control

s = tf('s');
sys = (s + 10)/(s*(s + 5)*(s + 15)*(s^2 + 25));
  
rlocus_dyn(sys);







        
