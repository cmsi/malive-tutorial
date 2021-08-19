#!/usr/local/bin/gnuplot -persist
# Last modified: 2019/10/30 16:28
set terminal postscript eps enhanced 28 lw 2
set output "band_Cu.eps"

set ylabel 'Energy (eV)'
set ytics 5
unset key
x1 = 1.0
x2 = 1.5
x3 = 2.2071
x4 = 3.0731
xmax = 4.4873
ymin = -10
ymax = 5
ef = 12.6245
set xrange [0:xmax]
set yrange [ymin:ymax]
set xtics ("{/Symbol G}" 0, "X" x1, "W" x2, "L" x3, "{/Symbol G}" x4, "X" xmax)
set arrow 1 nohead from x1,ymin to x1,ymax lt 2
set arrow 2 nohead from x2,ymin to x2,ymax lt 2
set arrow 3 nohead from x3,ymin to x3,ymax lt 2
set arrow 4 nohead from x4,ymin to x4,ymax lt 2
set arrow 5 nohead from 0,0 to xmax,0 lt 2
set title '(a) Cu band structure'
set size 1
set origin 0,0
plot 'Cu.band.gnu' using 1:(($2)-ef) w l

