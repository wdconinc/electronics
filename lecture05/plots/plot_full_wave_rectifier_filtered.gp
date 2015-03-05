#set terminal postscript enhanced color solid 24
#set output 'full_wave_rectifier_filtered.eps'
set terminal epslatex standalone clip size 4.0,3.8 \
	header \
		"\\usepackage{amsmath} \n \\usepackage[helvet]{sfmath} " \
	color colortext font 'phv' 10


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


V0=18;
Vd=2
T=4
w=2*pi/T
Ileak=-.3
Vin(t)=V0*cos(w*t)
C1=.2
C2=C1*10
V_cap(t,C)=(V0-2*Vd)+((asin(sin(w*t))>0)?acos(cos(w*t)):pi-acos(cos(w*t)))*Ileak/C
Vrec(t)=((abs(Vin(t))-2*Vd)>0?(abs(Vin(t))-2*Vd):0 ) 
Vout(t,C)= (V_cap(t,C)>Vrec(t))?V_cap(t,C):Vrec(t)


set samples 500
set xlabel 't'
#set ylabel 'V'
set label 1 'V' at screen .02, graph .5 rotate by 90
set xzeroaxis
set yzeroaxis
set key  below

set lmargin screen .2
set ytics ('$-V_{0}$' -V0, '$V_{0}$' V0,  '$V_{0}-2V_d$' (V0-2*Vd) )

plot  \
 Vin(x) t '$V_{in}(t)=V_0 \cos(\omega t)$' w l ls 2 \
, Vout(x,C1) t '$V_{out}(t),C1$' w l ls 3 \
, Vrec(x) t '$V_{rec}(t)$' w l ls 1 \
, Vout(x,C2) t '$V_{out}(t),C2>C1$' w l ls 4 \
, V0-2*Vd t '' w l ls 0 \


