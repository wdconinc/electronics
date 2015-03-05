im=sqrt(-1)


f(x)=(im*x*L)/(R+im*x*L)
g(x)=((im*x*L)/R)

R=1;
C=1;
L=1;
x0=R*C;

set macros
phase_ranage="0:0.5"
freq_range="0.01:100"
gain_range="-40:0"

load 'bode.gp_inc'

set multiplot layout 2,1

