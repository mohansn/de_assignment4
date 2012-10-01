all:assignment4.pdf
assignment4.pdf:assignment4.dvi
	dvipdf assignment4.dvi
assignment4.dvi:assignment4.tex
	latex assignment4.tex
.PHONY:clean
clean:
	-rm -fv *.toc *.log *.dvi *.pdf *~ *.aux
.PHONY:rebuild
rebuild:
	make clean all
.PHONY:force
force:
	latex assignment4.tex && make assignment4.pdf
