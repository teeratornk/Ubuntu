export password="password"

# Essential (at least for me) softwares
./sh/essential.sh ${password}

# Sublime3 configuration
./sh/sublime3.sh ${password}

# Boost, Eigen3, HDF5, FEniCS, among others
./sh/libs.sh ${password}

# Browser, office, image editors, etc 
./sh/utilities.sh ${password}

# For streaming content
./sh/popcorntime.sh ${password}

# Dropbox
python3 ./py/dropbox.py ${password}

# Find PETSc version on https://www.mcs.anl.gov/petsc/download/index.html
python3 ./py/petsc.py "3.13.0"

# Find Paraview version on https://www.paraview.org/download/ 
python3 ./py/paraview.py ${password} "5.8" "5.8.0-MPI-Linux-Python3.7-64bit"

# Mendeley
python3 ./py/mendeley.py ${password}