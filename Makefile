SRCFILE=qemu-tutorial.tex
PDFFILE=qemu-tutorial.pdf

all: pdf

pdf: ${SRCFILE}
	pdflatex qemu-tutorial.tex
	pdflatex qemu-tutorial.tex

open: ${PDFFILE}
	gnome-open ${PDFFILE}

clean:
	rm -rf ${PDFFILE} *.aux *.log *.nav *.out *.snm *.toc *.vrb *.dvi *.ps
