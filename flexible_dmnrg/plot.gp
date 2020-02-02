set xlabel 'Frequency {/Symbol w}'
set ylabel 'Spectral Function A({/Symbol w)'
plot [-1.5:1.5] 'spectral_func_U_0.00.dat' w l
replot 'spectral_func_U_0.25.dat' w l
replot 'spectral_func_U_0.50.dat' w l
replot 'spectral_func_U_0.75.dat' w l
replot 'spectral_func_U_1.00.dat' w l
