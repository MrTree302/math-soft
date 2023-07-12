PROJ = step-3
SOURCE := $(PROJ).cc
IMAGE = solution.eps
REPORT = final.tex

all: init plot write

init: $(SOURCE)
	mkdir build
	cd build && cmake ..
	cd build && make

plot: build/$(PROJ)
	cd build && ./$(PROJ)
	mv build/$(IMAGE) ./

write: $(REPORT)
	xelatex $(REPORT)

clean:
	rm -rf  build
	rm -f *.aux *.log \
*.toc *.snm *.nav *.out \
*.thm *.bbl *.ps *.dvi *.blg \
*.bcf *.xml *.synctex.gz

clean_all:
	rm -rf  build
	rm -f *.aux *.log *.eps *.pdf\
*.toc *.snm *.nav *.out \
*.thm *.bbl *.ps *.dvi *.blg \
*.bcf *.xml *.synctex.gz

.PHONY: all clean clean_all

