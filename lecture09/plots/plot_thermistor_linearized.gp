set terminal postscript enhanced color solid 24
set output 'thermistor_linearized.eps'

linewidth=4
pointsize=1
arrowwidth=2
#set style line 0 lt 0 lw linewidth pt 0 ps pointsize
set style line 1 lc rgb "black"  lw linewidth/4 pt 7  ps pointsize  #circle
#set style line 1 lt 1 lw linewidth pt 7  ps pointsize  #circle
set style line 2 lt 1 lw linewidth pt 13 ps pointsize  #diamond
set style line 3 lt 3 lw linewidth pt 9  ps pointsize  #triangle up
set style line 4 lt 4 lw linewidth pt 11 ps pointsize  #triangle down
set style line 5 lt 5 lw linewidth pt 5  ps pointsize  #square
set style line 6 lt 1 lw linewidth pt 6  ps pointsize  #circle hollow
set style line 7 lt 2 lw linewidth pt 12 ps pointsize  #diamond hollow 
set style line 8 lt 8 lw linewidth pt 8  ps pointsize  #triangle up hollow 
set style line 9 lt 9 lw linewidth pt 10 ps pointsize  #triangle down hollow


Rth(t)=R0*exp(-g*(t-T0))
T0=20
R0=10
g=0.04

V_d(t)=Vcc*Rth(t)/(R+Rth(t))
#V_d(t)=V0*R/(R+Rth(t))
R=10
Vcc=1


set xlabel "Temperature ^oC"
set ylabel "V_{out}/V_{cc}"
set y2label "Thermistor resistance (kOhm)"
set y2tics
set ytics nomirror
plot [0:40] \
Rth(x) axis x1y2 t "R_{th}" w l ls 2 , V_d(x) t "V_{out}/V_{cc}" w l ls 3

