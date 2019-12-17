set title "Stress-Strain Plot"
set xlabel "Strain"
set ylabel "Stress (GPa)"
set mxtics 5
set mytics 5
set title font "Arial,15"
set xlabel font "Arial,15"
set ylabel font "Arial,15"
set tics font "Arial,15"
set key font "Arial,15"
set xrange [0:0.2]
set yrange [0:7]
plot "Al_comp_100.def1.txt" u ($1*-1):($2*-1) w l t "x", "Al_comp_100.def1.txt" u ($1*-1):($3*-1) w l t "y", "Al_comp_100.def1.txt" u ($1*-1):($4*-1) w l t "z"
