export password="password"

# Essential softwares (for me)
python3 -W ignore ./apps/essential.py password

# Sublime3 configuration
python3 -W ignore ./apps/sublime3.py password

# Browser, office, image editors, etc 
python3 -W ignore ./apps/utilities.py password

# For streaming content
python3 -W ignore ./apps/popcorntime.py password

# Find Paraview version on https://www.paraview.org/download/ 
python3 -W ignore ./apps/paraview.py password "5.8" "5.8.0-MPI-Linux-Python3.7-64bit"

# Find PETSc version on https://www.mcs.anl.gov/petsc/download/index.html
python3 -W ignore ./apps/petsc.py "3.13.0"

# Mendeley
python3 -W ignore ./apps/mendeley.py password

# Dropbox
python3 -W ignore ./apps/dropbox.py password

# Boost, Eigen3, HDF5, FEniCS, among others
python3 -W ignore ./apps/libs.py password

# Fix broken pkg, update everything and clean unneeded pkg
./update.sh