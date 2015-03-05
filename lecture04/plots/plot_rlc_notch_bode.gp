im=sqrt(-1)


f(x,R)=(im*x*L+1/(im*x*C))/(R+im*x*L+1/(im*x*C))

R=10;
C=1;
L=1;


set macros
phase_ranage="-.5:0.5"
freq_range="0.01:100"
gain_range=":"


set multiplot layout 2,1
set lmargin at screen 0.2

set label 1 '$|$G$|$ (dB)'   at screen  .05 , screen .75 center  rotate by 90
set noylabel
#set xlabel '${\omega}/{\omega_{3db}}$' 
set logscale x
set format x ''
set ytics 10
set grid 
plot [@freq_range][@gain_range] \
  20*log10(abs(f(x,1))) t 'R=1' w l ls 1 \
 ,20*log10(abs(f(x,100))) t 'R=100' w l ls 2


set tmargin 0
set format x '%g'
set label 1 'Phase (rad)' at  screen  .05 , screen .30 center rotate by 90
#set ylabel 'Phase, rad' offset at screen  .05 , .0
set ytics ('$-\pi$' 1.0, '$\pi/4$' .25,  '$\pi/2$' .5, '0' 0.0, '$-\pi/4$' -0.25, '$-\pi/2$' -.5)
set xlabel '${\omega}/{\omega_{0}}$' 
plot [@freq_range][@phase_ranage] \
  arg(f(x,1))/pi t 'R=1' w l ls 1\
 ,arg(f(x,100))/pi t 'R=100' w l ls 2

unset multiplot 

