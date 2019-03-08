clc;close all;clear all;
s=tf('s');
g=(s+10)/(s+1);
w=logspace(-2,8);
bode(g,w);
margin(g);

