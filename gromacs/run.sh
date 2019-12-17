echo "6" | gmx pdb2gmx -f kigaki.pdb -o kigaki.gro -p kigaki.top -i kigaki_posre.itp -water tip3p -ignh
gmx editconf -f kigaki.gro -o kigaki_box.gro -bt dodecahedron -d 1.0
gmx solvate -cp kigaki_box.gro -cs spc216.gro -o kigaki_solvated.gro -p kigaki.top
gmx grompp -f ions.mdp -po ions.out.mdp -c kigaki_solvated.gro -p kigaki.top -o ions.tpr -maxwarn 1
echo "13" | gmx genion -s ions.tpr -o kigaki_ions.gro -p kigaki.top -pname NA -nname CL -neutral -conc 0.1
gmx grompp -f em.mdp -po em.out.mdp -c kigaki_ions.gro -p kigaki.top -o em.tpr
gmx mdrun -v -deffnm em
gmx grompp -f eq.mdp -po eq.out.mdp -c em.gro -t em.trr -p kigaki.top -o eq.tpr -r em.gro
gmx mdrun -v -deffnm eq > eq.out
gmx grompp -f md.mdp -po md.out.mdp -c eq.gro -t eq.trr -p kigaki.top -o md.tpr
gmx mdrun -v -deffnm md > md.out
