.PHONY: default clean

default: git-object-store.pdf

git-object-store.pdf: git-object-store.org
	./build.el $<

clean:
	$(RM) *.aux *.log *.nav *.out *.pdf *.snm *.toc
