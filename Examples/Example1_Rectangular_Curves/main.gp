reset 
set terminal cairolatex standalone color background rgbcolor 'white' \
size 12 cm, 7.5 cm

set output 'Figure.tex'

set key top right

set xrange [0:20]
set yrange [-0.5:1]

set xtics 5
set ytics 0.5

set mxtics 5
set mytics 5

set grid xtics ytics mxtics mytics lt 1 lc 'grey' dt 1 lw 1

set arrow from 0.0, 0.0 to 20.0, 0.0 nohead linestyle 1 lc 'black' lw 2

set xlabel '$x$'
set ylabel '$J_{v}(x)$'
set title 'Bessel Functions'

plot 'Data.dat' using 1:2 with lines lw 2 dt 1 title '$J_{0}$', \
     'Data.dat' using 1:3 with lines lw 2 dt 1 title '$J_{1}$', \
     'Data.dat' using 1:4 with lines lw 2 dt 1 title '$J_{2}$', \
     'Data.dat' using 1:5 with lines lw 2 dt 1 title '$J_{3}$'

