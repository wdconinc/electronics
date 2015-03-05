# -*- make -*-
# FILE: "/mnt/light_huge_archive/home/evmik/jobs/wm/2010_spring_Analog_Electronics_252/week5/plots/Makefile"
# LAST MODIFICATION: "Sat, 20 Feb 2010 23:10:28 -0500 (evmik)"
# (C) 2007 by Eugeniy Mikhailov, <evgmik@gmail.com>
# $Id:$

make = make


gnuplot_sources  = $(wildcard *.gp)
eps_targets  = $(gnuplot_sources:plot_%.gp=%.eps)	
pdf_targets  = $(eps_targets:%.eps=%.pdf)	


pdf:  $(pdf_targets)


$(pdf_targets): %.pdf : %.eps
	epstopdf  $< 

$(eps_targets): %.eps : plot_%.gp
	gnuplot $<

clean: 
	
	
clean_all: clean	
	rm -f $(pdf_targets)
