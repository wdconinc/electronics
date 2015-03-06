#set terminal postscript enhanced color solid 24
#set output 'pnp_follower.eps'

linewidth=4
pointsize=1
arrowwidth=2
#set style line 0 lt 0 lw linewidth pt 0 ps pointsize
set style line 1 lc rgb 'black'  lw linewidth/4 pt 7  ps pointsize  #circle
#set style line 1 lt 1 lw linewidth pt 7  ps pointsize  #circle
set style line 2 lt 1 lw linewidth pt 13 ps pointsize  #diamond
set style line 3 lt 3 lw linewidth pt 9  ps pointsize  #triangle up
set style line 4 lt 4 lw linewidth pt 11 ps pointsize  #triangle down
set style line 5 lt 5 lw linewidth pt 5  ps pointsize  #square
set style line 6 lt 1 lw linewidth pt 6  ps pointsize  #circle hollow
set style line 7 lt 2 lw linewidth pt 12 ps pointsize  #diamond hollow 
set style line 8 lt 8 lw linewidth pt 8  ps pointsize  #triangle up hollow 
set style line 9 lt 9 lw linewidth pt 10 ps pointsize  #triangle down hollow


V0=8;
Vd=2
w=1.4
Vin(t)=V0*cos(w*t)
Vout(t)=(Vin(t)+Vd)<0?(Vin(t)+Vd):0


set samples 500
set xlabel 't'
#set ylabel 'V'
set xzeroaxis
set yzeroaxis
set key  below
set lmargin screen .20
set label 1 '$V$' at screen .02, graph .5 rotate by 90

set ytics ('$-V_{0}$' -V0, '$V_{0}$' V0,  '$-V_{0}+0.6V$' -V0+Vd)

plot  \
 Vin(x) t '$V_{in}(t)$' w l ls 2 \
, Vout(x) t '$V_{out}(t)$' w l ls 3 \
, -V0+Vd t '' w l ls 0


