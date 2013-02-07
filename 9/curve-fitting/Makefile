.PHONY: default clean

default: seminar.pdf

seminar.pdf: seminar.tex
	pdflatex $<

clean:
	$(RM) *.aux *.log *.nav *.out *.pdf *.snm *.toc
