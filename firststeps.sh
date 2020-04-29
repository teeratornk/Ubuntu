# Essential softwares (for me)
./sh/essential.sh

# Sublime3 configuration
./sh/sublime3.sh

# Browser, office, image editors, etc 
./sh/utilities.sh

# For streaming content
./sh/popcorntime.sh

# Find Paraview version on https://www.paraview.org/download/ 
python3 -W ignore ./py/paraview.py "5.8" "5.8.0-MPI-Linux-Python3.7-64bit"

# Find PETSc version on https://www.mcs.anl.gov/petsc/download/index.html
python3 -W ignore ./py/petsc.py "3.13.0"

# Boost, Eigen3, HDF5, FEniCS, among others
./sh/libs.sh

# Mesh conversion library
pip3 install meshio[all]

# Fix broken pkg, update everything and clean unneeded pkg
./update.sh