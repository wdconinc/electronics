im=sqrt(-1)


f(x)=(R)/(R+im*x*L)
g(x)=(R/(im*x*L))

R=1;
C=1;
L=1;


set macros
phase_ranage="-0.5:0"
freq_range="0.01:100"
gain_range="-40:0"

load 'bode.gp_inc'
