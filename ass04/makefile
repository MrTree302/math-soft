all: interp.pdf clean

interp.pdf: interp.tex interp.eps
	xelatex interp.tex

interp.eps: interp.dat
	graph -T ps < interp.dat > interp.eps

interp.dat: output
	./output > interp.dat

output: code.c
	gcc -o output code.c -lgsl -lgslcblas -lm

clean:
	rm -f output interp.aux interp.log interp.dat interp.out interp.synctex.gz


