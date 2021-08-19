#!/usr/local/bin/gnuplot -persist
# Last modified: 2019/10/30 16:28
set terminal postscript eps enhanced 28 lw 2
set output "free.eps"

unset ylabel
unset key
x1 = 1.0
x2 = 1.5
x3 = 2.2071
x4 = 3.0731
xmax = 4.4873
ymin = -0.5
ymax = 4.5
ef = 0.969723
unset ytics
set xrange [0:xmax]
set yrange [ymin:ymax]
set xtics ("{/Symbol G}" 0, "X" x1, "W" x2, "L" x3, "{/Symbol G}" x4, "X" xmax)
set arrow 1 nohead from x1,ymin to x1,ymax lt 2
set arrow 2 nohead from x2,ymin to x2,ymax lt 2
set arrow 3 nohead from x3,ymin to x3,ymax lt 2
set arrow 4 nohead from x4,ymin to x4,ymax lt 2
set arrow 5 nohead from 0,ef to xmax,ef lt 2
set title '(b) Empty Lattice Approximation'
set size 0.92,1
set origin 0,0
plot 'FCCfree.dat' using 1:2 w l
