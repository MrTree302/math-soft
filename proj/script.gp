set terminal epslatex color
set output "imag/solution_gnu.eps"
set isosamples 50, 10
set size square
set title "Laplace Solution"
set xlabel "X"
set ylabel "Y"
set zlabel "Z"
splot "imag/solution.gpl" with lines
