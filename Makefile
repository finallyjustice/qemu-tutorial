SRCFILE=qemu-usage.tex
PDFFILE=qemu-usage.pdf

all: pdf

pdf: ${SRCFILE}
	pdflatex qemu-usage.tex
	pdflatex qemu-usage.tex

open: ${PDFFILE}
	gnome-open ${PDFFILE}

clean:
	rm -rf ${PDFFILE} *.aux *.log *.nav *.out *.snm *.toc *.vrb *.dvi *.ps
