pkg load control
clc
clear all
s=tf('s')
G=(s+2)/((s+3)*(s+4)*(s+6))
H=1
K=[1,1.2,3]
figure(1)
#step(feedback(K(1,1)*G,H),"r")
# in same figure. Octave terminology - HoldOn.
#hold on
#step(feedback(K(1,2)*G,H),"b")
#hold on
#step(feedback(K(1,3)*G,H),"g")
#can use grid on

for i=1:length(K)
  step(feedback(K(1,i)*G,H))
  hold on
end

xlim([0,20])
xlabel("Time (up to 20 s)")
ylabel("CL system output")
title("Step response of closed loop system for different values of K")

