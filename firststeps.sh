export password="123456"
export home="/home/desktop1"
export petscVersion="3.13.0"
export paraviewVersion="5.8"
export paraviewVersionName="5.8.0-MPI-Linux-Python3.7-64bit"
export useremail="user@mail"
export username="name"

# Essential (at least for me) softwares
./sh/essential.sh ${password}

# Sublime3 configuration
./sh/sublime3.sh

# Git configuration
./sh/git.sh ${useremail} ${username}

# Boost, Eigen3, HDF5, FEniCS, among others
./sh/libs.sh ${password}

# Browser, office, image editors, etc 
./sh/utilities.sh ${password}

# For streaming content
./sh/popcorntime.sh ${password}

# Dropbox
python3 ./py/dropbox.py ${password} ${home}

# Find PETSc version on https://www.mcs.anl.gov/petsc/download/index.html
python3 ./py/petsc.py ${home} ${petscVersion}

# Find Paraview version on https://www.paraview.org/download/ 
python3 ./py/paraview.py ${password} ${home} ${paraviewVersion} ${paraviewVersionName}

# Mendeley
python3 ./py/mendeley.py ${password} ${home}