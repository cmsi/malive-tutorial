set ylabel 'Energy (cm^-1)'
unset key
x1 = 1
x2 = x1 + 0.5 
x3 = x2 + 0.707
xmax = x3 + 0.866
ymin = 0
ymax = 600

set xrange [0:xmax]
set yrange [ymin:ymax]
set xtics ("{/Symbol G}" 0, "X" x1, "W" x2, "L" x3,"{/Symbol G}" xmax)
set arrow 1 nohead from x1,ymin to x1,ymax lt 2
set arrow 2 nohead from x2,ymin to x2,ymax lt 2
set arrow 3 nohead from x3,ymin to x3,ymax lt 2

plot './Si.freq.gp' w l,'' u 1:3 w l,'' u 1:4 w l,'' u 1:5 w l,'' u 1:6 w l,'' u 1:7 w l
