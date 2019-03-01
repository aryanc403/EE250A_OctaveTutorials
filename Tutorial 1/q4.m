%pkg load control
s=tf('s')
G=5/(s^3+5*s^2+9*s+4)
figure(1)
bode(G)

w=0.001:0.01:10^5;
%length(w)
for i=1:length(w)
  y=5/sqrt((4-5*w(1,i)^2)^2+(9*w(1,i)-w(1,i)^3)^2);
  M(1,i)=20*log10(y);
  A(1,i)=-atan((9*w(1,i)-w(1,i)^3)/(4-5*w(1,i)^2)^2+(9*w(1,i)))*(180/pi);
end
figure(2)
subplot(2,1,1)
plot(log10(w),M)
grid on
subplot(2,1,2)
plot(log10(w),A)
grid on
