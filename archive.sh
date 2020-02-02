#!/bin/sh

DIR="gromacs lammps qe_GaAs flexible_dmnrg"
for d in $DIR; do
  tar zcvf $d.tgz $d
done
