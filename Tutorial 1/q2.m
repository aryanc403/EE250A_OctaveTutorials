pkg load control
s=tf('s')
G=(s+2)/(s^2+2*s+4)
H=(s+3)/(s+5)
K=[0.25,0.4,0.6,0.8]
figure(1)
step(feedback(K(1,1)*G,H),"r")
#in same figure. Use HoldOn.
hold on
step(feedback(K(1,2)*G,H),"b")
hold on
step(feedback(K(1,3)*G,H),"g")
hold on
step(feedback(K(1,4)*G,H),"y")
title("Step response of closed loop system for different values of K")

