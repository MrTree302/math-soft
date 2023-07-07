PROJ = lsq
SOURCE := $(PROJ).c
GENDATA := $(PROJ)_data
DATA = testdata.txt
IMAGE = output.eps
IMDATA = output.dat
REF = references.bib

all: exe $(GENDATA) doc 

exe: src/$(PROJ).c
	gcc -o $(PROJ) src/$(PROJ).c

$(GENDATA): src/$(GENDATA).c
	gcc -o $(GENDATA) src/$(GENDATA).c

$(IMDATA): $(GENDATA)
	./$(GENDATA)
	./$(PROJ)

$(IMAGE): $(IMDATA)
	graph -T ps < $(IMDATA) > doc/$(IMAGE)

# the relative path is relative to the xelatex environment.
# the output path of xelatex is the xelatex environment by default.
# the output path of bibtex is same to the input file.

doc: doc/$(PROJ).tex $(IMAGE) doc/$(REF) 
	cd doc && xelatex $(PROJ).tex
	cd doc && bibtex $(PROJ)
	cd doc && xelatex $(PROJ).tex
	cd doc && xelatex $(PROJ).tex


clean:
	cd doc && rm -rf *.aux *.bbl *.blg *.log *.out *.toc *.eps
	rm -rf  $(GENDATA) $(DATA) $(IMAGE) \
	*.nav *.snm *.dat

.PHONY: all clean
