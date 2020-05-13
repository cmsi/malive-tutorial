#!/bin/sh

DIR="gromacs lammps qe_GaAs qe_WSe2 flexible_dmnrg"
for d in $DIR; do
  tar zcvf $d.tgz $d
done
