.PHONY: default clean

default: lecture1.pdf

lecture1.pdf: lecture1.tex
	pdflatex $<

clean:
	$(RM) *.aux *.log *.nav *.out *.pdf *.snm *.toc
