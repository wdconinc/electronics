# -*- make -*-


ps_targets  = $(wildcard *.ps)
pdf_targets  = $(ps_targets:%.ps=%.pdf)	

pdf: $(pdf_targets) 


$(pdf_targets): %.pdf : %.ps
	epstopdf $<

clean:


real_clean: clean
	rm -f $(pdf_targets)

