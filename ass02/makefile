TEX = navier-stokes.tex
BIB = references.bib
PDF = navier-stokes.pdf
all: $(PDF)

$(PDF): $(TEX) $(BIB)
	xelatex $(TEX)
	bibtex $(basename $(TEX))
	xelatex $(TEX)
	xelatex $(TEX)

clean:
	rm -f *.aux *.log *.pdf \
*.toc *.snm *.nav *.out \
*.thm *.bbl *.ps *.dvi *.blg \
*.bcf *.xml

.PHONY: all clean
