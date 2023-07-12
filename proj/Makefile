PROJ = step-3
SOURCE := $(PROJ).cc
IMAGE = solution
REPORT = final.tex

all: init plot write

init: $(SOURCE)
	mkdir build
	cd build && cmake ..
	cd build && make

plot: build/$(PROJ)
	cd build && ./$(PROJ)
	mkdir imag
	mv build/$(IMAGE).eps ./imag
	mv build/$(IMAGE).gpl ./imag
	mv build/$(IMAGE).vtk ./imag

write: $(REPORT)
	mkdir doc
	xelatex -output-directory=doc $(REPORT)

clean:
	rm -rf  build
	rm -rf  imag
	cd doc && rm -f *.aux *.log \
*.toc *.snm *.nav *.out \
*.thm *.bbl *.ps *.dvi *.blg \
*.bcf *.xml *.synctex.gz

clean_all:
	rm -rf  build
	rm -rf  imag
	rm -rf  doc

.PHONY: all clean clean_all

