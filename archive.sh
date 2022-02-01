#!/bin/sh

DIR="gromacs lammps qe_GaAs qe_WSe2 flexible_dmnrg"
for d in $DIR; do
  COPYFILE_DISABLE=1 tar zcvf $d.tgz --exclude ".DS_Store" $d
done
