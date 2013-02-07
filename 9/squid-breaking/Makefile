.PHONY: default clean

default: draft.pdf

draft.pdf: draft.tex
	pdflatex $<

clean:
	$(RM) *.aux *.log *.nav *.out *.pdf *.snm *.toc
