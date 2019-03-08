clc;close all;clear all;
s=tf('s');
g=(1)/(s*(s^2+20*s+10));
k=1000;
bode(k*g);
margin(k*g);

