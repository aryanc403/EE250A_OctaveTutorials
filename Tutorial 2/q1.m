clc;close all;clear all;
s=tf('s');
g=(s^2+5*s+10)/(s^2-2*s+1);
k=[0.01,0.1,1,10,100];

  %for i=1:5
  %  figure(i);
  %  nyquist(g*k(i));
  %end
  
figure(3);
nyquist(g*k(3)/2.5);
axis([-10 15 -10 10]);
text(5,-2,'conditionlly stable');
title('nyquist plot / name-(roll number)');
