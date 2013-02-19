.PHONY: default clean

default: git-unchained.pdf

git-unchained.pdf: git-unchained.org
	./build.el $<

clean:
	$(RM) *.aux *.log *.nav *.out *.pdf *.snm *.toc
