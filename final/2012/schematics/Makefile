# -*- make -*-
# FILE: "/mnt/light_huge_archive/home/evmik/jobs/wm/2010_spring_Analog_Electronics_252/week5/schematics/Makefile"
# LAST MODIFICATION: "Sat, 20 Feb 2010 20:52:01 -0500 (evmik)"
# (C) 2007 by Eugeniy Mikhailov, <evgmik@gmail.com>
# $Id:$

make = make


eps_sources  = $(wildcard *.ps)
pdf_targets  = $(eps_sources:%.ps=%.pdf)	


pdf:  $(pdf_targets)


$(pdf_targets): %.pdf : %.ps
	epstopdf  $< 


clean: 
	
	
clean_all: clean	
	rm -f $(pdf_targets)
