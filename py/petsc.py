import os
import subprocess
import sys

inputArg = []
for eachArg in sys.argv:
	inputArg.append(eachArg)

home = inputArg[1]
version = inputArg[2]
install_dir = home
petsc_dir = " PETSC_DIR=" + install_dir + "/petsc-" + version
petsc_arch = " PETSC_ARCH=arch-linux2-c-opt"
flags = " --with-cc=gcc --with-cxx=g++ --with-fc=gfortran --download-mpich --download-fblaslapack"

os.chdir(home + "/Downloads")

subprocess.call(["sh", "-c", "wget http://ftp.mcs.anl.gov/pub/petsc/release-snapshots/petsc-lite-" + version + ".tar.gz"])
subprocess.call(["sh", "-c", "tar xzvf petsc-lite-" + version + ".tar.gz"])
subprocess.call(["sh", "-c", "mv petsc-" + version + " " + install_dir])

os.chdir(install_dir + "/petsc-" + version)

subprocess.call(["sh", "-c", "./configure" + petsc_dir + petsc_arch + flags])
subprocess.call(["sh", "-c", "make" + petsc_dir + petsc_arch + " all test"])