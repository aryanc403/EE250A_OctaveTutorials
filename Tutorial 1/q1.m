pkg load control
s = tf('s')
G = 30/(s-30)
step(G)
h = (s+1)/(s+2)
step(h)
sys_cl = feedback(G,h)
step(sys_cl)
sys_cl = feedback(G*h,1) #series
sys_cl = feedback(series(G,h),1)
step(sys_cl)
# By default negative feedback.

