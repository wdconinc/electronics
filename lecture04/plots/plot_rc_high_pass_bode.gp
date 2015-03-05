#set terminal postscript enhanced color solid
#set output 'rc_high_pass_bode.eps'


im=sqrt(-1)


f(x)=(im*x/x0)/(1+im*x/x0)
g(x)=(im*x/x0)

R=1;
C=1;
x0=R*C;

set macros
phase_ranage="0:0.5"
freq_range="0.01:100"
gain_range="-40:0"

load 'bode.gp_inc'
