
clear all
clc

s = tf('s');
sys = (s+2)/((s*s+0.25)*(s-3)*(s+10));

% polo: -10; 3; +0.5i; -0.5i
% zero: -2

olpol = pole(sys)
olzer = zero(sys)

olpol_new = vertcat(olpol, 2)

pt = [2,0];



min_pol = pt - olpol
abs_pol = abs(min_pol)
min_id = min(abs_pol)