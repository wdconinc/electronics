
im=sqrt(-1)


f(x)=1/(1+im*x*R1*C1) * im*x*R2*C2/(1+im*x*R2*C2) 

R1=1000;
C1=1e-8;
R2=100000;
C2=.1e-8;

set macros
phase_ranage="-.5:0.5"
freq_range="100:1e7"
gain_range="-40:0"


set multiplot layout 2,1
set lmargin at screen 0.2

set label 1 '$|$G$|$ (dB)'   at screen  .05 , screen .75 center  rotate by 90
set noylabel
#set xlabel '${\omega}/{\omega_{3db}}$' 
set logscale x
set format x ''
set ytics 10
set grid 
plot [@freq_range][@gain_range]  20*log10(abs(f(x))) t '' w l ls 1


set tmargin 0
set format x '%g'
set label 1 'Phase (rad)' at  screen  .05 , screen .30 center rotate by 90
#set ylabel 'Phase, rad' offset at screen  .05 , .0
set ytics ('$-\pi$' 1.0, '$\pi/4$' .25,  '$\pi/2$' .5, '0' 0.0, '$-\pi/4$' -0.25, '$-\pi/2$' -.5)
set xlabel '${\omega}$ (1/s)' 
plot [@freq_range][@phase_ranage]  arg(f(x))/pi t '' w l ls 1

unset multiplot 
