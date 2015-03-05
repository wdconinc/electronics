im=sqrt(-1)

R=1
C=1;
V0=1;

Vin(t)=V0*exp(im*w*t)
I_r(t)=Vin(t)/(R+1/(im*w*C))
V_c(t)=I_r(t)*(1/(im*w*C))

x0=1;

w=0.1*1/(R*C);


set parametric

set xlabel 'V$_{in}$'
set ylabel 'V$_{out}$'
#set format x '%P'
set nokey
set grid 
plot [0:2*2*pi/w][-1:1][-1:1] \
(real(Vin(t))),(real(V_c(t)))  t 'V$_{in}$' w l ls 1 \



