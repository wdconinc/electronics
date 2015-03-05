
im=sqrt(-1)

f(x)=1/(1+im*x/x0)
g(x)=1/(im*x/x0)

x0=1;

set macros
phase_ranage="-.5:0"
freq_range="0.01:100"
gain_range="-40:0"

load 'bode.gp_inc'

