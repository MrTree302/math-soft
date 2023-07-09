.PHONY: all clean

all: ellipsoid.pdf

ellipsoid.pdf: dimension.txt plot_ellipsoid.gnu
	gnuplot plot_ellipsoid.gnu

clean:
	rm -f ellipsoid.pdf
