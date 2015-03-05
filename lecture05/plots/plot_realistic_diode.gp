#set terminal postscript enhanced color solid 24
#set output 'realistic_diode.eps'

linewidth=8
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


Vpn=1
x1(t)=(t<Vpn)?t:Vpn;
y1(t)=(t<Vpn)?0:t;

Vth=1
I0=.5
Id(V)=I0*(exp(V/(.5*Vth))-1)

V0=Vth+.4
I0s=Id(V0)/(V0-Vth)
Is(V)=I0s*(V-Vth)



set parametric
set samples 500

set xtics ('0' 0, '$V_{pn}$' Vpn)
set ytics ('0' 0, '$I_0$' -I0)

set xlabel 'V'
set ylabel 'I'
set xzeroaxis
set yzeroaxis

plot [-5:5][-5:5][-1:10] t,Id(t) t ''  w l ls 3, t,Is(t) t '' w l ls 1


