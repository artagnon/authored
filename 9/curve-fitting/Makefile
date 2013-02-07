.PHONY: default clean

seminar.pdf: seminar.tex
	pdflatex $<

default: draft.pdf

clean:
	$(RM) *.aux *.log *.nav *.out *.pdf *.snm *.toc
