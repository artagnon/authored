.PHONY: default clean

draft.pdf: draft.tex
	pdflatex $<

default: draft.pdf

clean:
	$(RM) *.aux *.log *.nav *.out *.pdf *.snm *.toc
