set terminal pdfcairo enhanced
set output 'ellipsoid.pdf'

# set up the space coordinates
set xlabel 'X'
set ylabel 'Y'
set zlabel 'Z'
set title 'Parametric Ellipsoid'

# read information from dimension.txt
x_radius = system('sed -n 1p dimension.txt')
y_radius = system('sed -n 2p dimension.txt')
z_radius = system('sed -n 3p dimension.txt')

# plot the ellipsoid
set parametric
set isosamples 50, 10
set urange [0:2*pi]
set vrange [0:pi]
set key bottom outside horizontal center

splot x_radius*cos(u)*sin(v), y_radius*sin(u)*sin(v), z_radius*cos(v) with lines lc rgb 'blue'

exit