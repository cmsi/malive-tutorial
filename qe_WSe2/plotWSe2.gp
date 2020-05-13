set ylabel 'Energy (eV)'
set ytics 5
set grid

unset key

x1 = 0.5773
x2 = 0.9107
xmax = 1.5774
ymin = -3
ymax = 5
ef = 1.1868

set xrange [0:xmax]
set yrange [ymin:ymax]
set xtics ("{/Symbol G}" 0,"M" x1, "K" x2, "{/Symbol G}" xmax)
set arrow 1 nohead from x1,ymin to x1,ymax lt 2
set arrow 2 nohead from x2,ymin to x2,ymax lt 2

plot './WSe2.band.gnu' using 1:($2-ef) w l
