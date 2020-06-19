# Ubuntu
My first steps after a clean Ubuntu installation. Tested in Ubuntu 18.04, 19.10 and 20.04.

## Usage

Edit the environment variables (lines 1-6) in firststeps.sh and run it.
```bash
export password="123456" # User password
export home="/home/username" # Home directory
export paraviewVersion="5.8" # Find the last Paraview version on https://www.paraview.org/download/ 
export paraviewVersionName="5.8.0-MPI-Linux-Python3.7-64bit" # Find the last Paraview version on https://www.paraview.org/download/ 
export useremail="user@mail" # Git Hub user email
export username="username" # Git Hub user name
```

This script will call the subroutines described below.

## Essential Packages (/sh/essential.sh)

This routine install essential packages (at least for me). These are:
- [Cmake](https://cmake.org/);
- [Deborphan](https://packages.ubuntu.com/focal/deborphan);
- [Git](https://github.com/);
- [Make](https://www.gnu.org/software/make/);
- [Pip](https://pypi.org/project/pip/);
- [Snap](https://snapcraft.io/);
- [Sublime-text](https://www.sublimetext.com/);
- [Texlive](https://www.tug.org/texlive/).

## Sublime Text Configuration (/sh/sublime3.sh)

This routine copies my configuration files to the newly installed Sublime Text folder. After that, the user must install the package manager (Package Control) on Sublime Text, which will automatically install and configure the packages "Cmake" and "LaTeXTools".

## Libraries (/sh/libs.sh)

This routine install the following packages (and dependencies):
- [Boost](https://www.boost.org/);
- [CGAL](https://www.cgal.org/);
- [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page);
- [FEniCS](https://fenicsproject.org/);
- [FFC](https://fenics.readthedocs.io/projects/ffc/en/latest/installation.html);
- [GMP](https://gmplib.org/);
- [HDF5](https://www.hdfgroup.org/solutions/hdf5/);
- [MPFR](https://www.mpfr.org/);
- [Mshr](https://bitbucket.org/fenics-project/mshr/src/master/);
- [ParMETIS](http://glaros.dtc.umn.edu/gkhome/metis/parmetis/overview);
- [PETSc](https://www.mcs.anl.gov/petsc/index.html);
- [Pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/);
- [Ply](https://www.dabeaz.com/ply/);
- [Pybind](https://github.com/pybind);
- [SCOTCH & PT-SCOTCH](https://www.labri.fr/perso/pelegrin/scotch/);
- [SLEPc](https://slepc.upv.es/);
- [SuiteSparse](http://faculty.cse.tamu.edu/davis/suitesparse.html);
- [TetGen](http://wias-berlin.de/software/index.jsp?id=TetGen&lang=1);
- [Zlib](https://zlib.net/).

### Python Libraries

Also, the following Python libraries are installed:
- [Matplotlib](https://matplotlib.org/);
- [Meshio](https://pypi.org/project/meshio/);
- [Mpi4py](https://pypi.org/project/mpi4py/);
- [NumPy](https://numpy.org/);
- [Petsc4py](https://pypi.org/project/petsc4py/);
- [Slepc4py](https://pypi.org/project/slepc4py/).

## Utilities (/sh/utilities.sh)

This routine removes Mozilla Firefox (which is standard in Ubuntu fresh installations) and install the following softwares:
- [Google Chrome](https://www.google.com/chrome/);
- [GIMP](https://www.gimp.org/);
- [Microsoft To-Do for Ubuntu](https://snapcraft.io/ao);
- [Mpv](https://mpv.io/);
- [Pinta](https://pinta-project.com/pintaproject/pinta/);
- [Spotify](https://www.spotify.com/br/);
- [WPS Office](https://www.wps.com/).

## Further Software

The routines in the /py folder install the following programs:
- [Dropbox](https://www.dropbox.com/);
- [Mendeley](https://www.mendeley.com/);
- [Multiphenics](https://github.com/mathLab/multiphenics);
- [ParaView](https://www.paraview.org/);
- [Skype](https://www.skype.com/).

## Final

The last two routines are used for git configuration (/sh/git.sh) and for fixing broken packages (update.sh). Finally, the last command adjust the system clock for fixing the time difference in Windows/Ubuntu.