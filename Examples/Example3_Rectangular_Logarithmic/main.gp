reset 
set terminal cairolatex standalone color background rgbcolor 'white' \
size 12 cm, 7.5 cm

set output 'Figure.tex'

set key bottom right

set xrange [1E-2:1E+2]
set yrange [-1:1]

set ytics 0.5

set mxtics 5
set mytics 5

set grid xtics ytics mxtics mytics lt 1 lc 'grey' dt 1 lw 1

set format x '$10^{%T}$'

set arrow from 1, -1 to 1, +1 nohead linestyle 1 lc 'black' lw 2 dt 4

set logscale x

set xlabel '$x$'
set ylabel '$y$'
set title 'Logarithmic Scale'

plot 'Data.dat' using 1:2 with lines lw 2 dt 1 title '$\cos(2\pi/x)$'

