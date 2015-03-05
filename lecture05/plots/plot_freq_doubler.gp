#set terminal postscript enhanced color solid 24
#set output 'freq_doubler.eps'

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


V0=8;
Vd=2
w=1.4

g=.051
lorentz(x,x0)=g**2/((x-x0)**2+g**2)

f=1
Vin(x)=10*lorentz(x,f)
Vout(x)=5*lorentz(x,2*f)+2*lorentz(x,4*f)+1*lorentz(x,4*f)+0.2*lorentz(x,6*f)


set samples 500
set xlabel '$\omega/\omega_0$'
set ylabel 'V'
set xzeroaxis
set yzeroaxis
set ytics ''
#set key  below

#set ytics ('-V_{0}' -V0, 'V_{0}' V0,  'V_{0}-Vd' V0-Vd)

plot  [0:8][0:11]\
 Vin(x) t '$V_{in}(t)=V_0 \cos(\omega t)$' w l ls 2 \
, Vout(x) t '$V_{out}(\omega)$' w l ls 3 


