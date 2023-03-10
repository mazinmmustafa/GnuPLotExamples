reset 
set terminal cairolatex standalone color background rgbcolor 'white' \
size 12 cm, 7.5 cm

set output 'Figure.tex'

set key top right

set xrange [0:2]
set yrange [-2:2]

set xtics 0.5
set ytics 1

set mxtics 5
set mytics 5

set grid xtics ytics mxtics mytics lt 1 lc 'grey' dt 1 lw 1

set arrow from 0.0, 0.0 to 2.0, 0.0 nohead linestyle 1 lc 'black' lw 2

set xlabel '$x$'
set ylabel '$f(x)$'
set title 'Noisy Data'

plot 'Data1.dat' using 1:2 with lines lw 2 dt 1 title '$\cos(2\pi x)$', \
     'Data2.dat' using 1:2 with points pt 7 ps 0.5 title '$f(x)+n(x)$'

