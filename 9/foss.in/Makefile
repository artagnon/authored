.PHONY: default clean

default: haskell-internals.pdf unladen-swallow.pdf hs/euler5 hs/euler12 \
	hs/euler14

haskell-internals.pdf unladen-swallow.pdf: haskell-internals.org unladen-swallow.org
	./build.el $<
	latex -interaction=nonstopmode haskell-internals || :
	latex -interaction=nonstopmode unladen-swallow || :
	bibtex haskell-internals
	bibtex unladen-swallow
	./build.el $<

hs/euler5: hs/euler5.hs
	ghc -o $@ $<

hs/euler12: hs/euler12.hs
	ghc -o $@ $<

hs/euler14: hs/euler14.hs
	ghc -o $@ $<

clean:
	$(RM) *.aux *.log *.nav *.out *.pdf *.snm *.toc hs/*.hi hs/*.o \
	hs/euler5 hs/euler12 hs/euler14
