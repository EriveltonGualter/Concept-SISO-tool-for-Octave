

clear all, close all

ax1 = subplot(2,2,[1,2]); 
ax2 = subplot(2,2,3);
ax3 = subplot(2,2,4);

x=1:0.1:5;
y1 = sqrt(x);
y2 = x.^ 2;

plot(ax1, x, y1);

plot(ax2, x, y2);