#set terminal postscript enhanced color solid 

linewidth=4
pointsize=1
arrowwidth=2
#set style line 0 lt 0 lw linewidth pt 0 ps pointsize
set style line 1 lc rgb "black"  lw linewidth pt 7  ps pointsize  #circle
#set style line 1 lt 1 lw linewidth pt 7  ps pointsize  #circle
set style line 2 lt 1 lw linewidth pt 13 ps pointsize  #diamond
set style line 3 lt 3 lw linewidth pt 9  ps pointsize  #triangle up
set style line 4 lt 4 lw linewidth pt 11 ps pointsize  #triangle down
set style line 5 lt 5 lw linewidth pt 5  ps pointsize  #square
set style line 6 lt 1 lw linewidth pt 6  ps pointsize  #circle hollow
set style line 7 lt 2 lw linewidth pt 12 ps pointsize  #diamond hollow 
set style line 8 lt 8 lw linewidth pt 8  ps pointsize  #triangle up hollow 
set style line 9 lt 9 lw linewidth pt 10 ps pointsize  #triangle down hollow

im=sqrt(-1)

R=1
C=1;
V0=1;

Vin(t)=V0*exp(im*w*t)
I_r(t)=Vin(t)/(R+1/(im*w*C))
V_c(t)=I_r(t)*(1/(im*w*C))

x0=1;

w=10*1/(R*C);


set parametric

set ylabel "V$_{in}$, V$_{out}$, I"
set xlabel "time (t/T)" 
#set format x "%P"
set grid 
plot [0:2*2*pi/w] \
  (t/(2*pi*w)),(real(Vin(t))) t 'V$_{in}$' w l ls 1 \
, (t/(2*pi*w)),(real(I_r(t))) t 'I'      w l ls 2 \
, (t/(2*pi*w)),(real(V_c(t))) t 'V$_c$ = V$_{out}$' w l ls 3 



