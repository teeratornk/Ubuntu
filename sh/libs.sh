echo "$1" | sudo -S apt -y install --install-recommends gconf2
echo "$1" | sudo -S apt -y install --install-recommends libboost-all-dev libboost-filesystem-dev libboost-iostreams-dev libboost-program-options-dev libboost-timer-dev
echo "$1" | sudo -S apt -y install --install-recommends libeigen3-dev
echo "$1" | sudo -S apt -y install --install-recommends python3-ffc
echo "$1" | sudo -S apt -y install --install-recommends pkg-config
echo "$1" | sudo -S apt -y install --install-recommends zlib1g zlib1g-dev
echo "$1" | sudo -S apt -y install --install-recommends pybind11-dev
echo "$1" | sudo -S apt -y install --install-recommends python3-ply
echo "$1" | sudo -S apt -y install --install-recommends libhdf5-dev hdf5-tools libhdf5-103 libhdf5-cpp-103 libhdf5-mpi-dev python3-hdf5storage
echo "$1" | sudo -S apt -y install --install-recommends libparmetis-dev libparmetis4.0
echo "$1" | sudo -S apt -y install --install-recommends petsc-dev libpetsc-real-dev libpetsc-complex-dev
echo "$1" | sudo -S apt -y install --install-recommends libptscotch-dev libscotch-dev ptscotch scotch
echo "$1" | sudo -S apt -y install --install-recommends slepc-dev
echo "$1" | sudo -S apt -y install --install-recommends libsuitesparse-dev
echo "$1" | sudo -S apt -y install --install-recommends libgmp-dev libgmp3-dev libgmp-ocaml-dev
echo "$1" | sudo -S apt -y install --install-recommends libmpfr-dev libmpfrc++-dev
echo "$1" | sudo -S apt -y install --install-recommends libcgal-dev
echo "$1" | sudo -S apt -y install --install-recommends tetgen libtet1.5-dev
echo "$1" | sudo -S apt -y install --install-recommends libmshr-dev python3-mshr
echo "$1" | sudo -S apt -y install --install-recommends fenics
echo "$1" | sudo -S apt -y install --install-recommends gmsh
pip3 install numpy
pip3 install matplotlib
pip3 install petsc4py
pip3 install mpi4py
pip3 install slepc4py
pip3 install meshio[all]
pip3 install scikit-learn
pip3 install pandas
pip3 install scipy
pip3 install torch==1.5.1+cpu torchvision==0.6.1+cpu -f https://download.pytorch.org/whl/torch_stable.html
pip3 install gym
pip3 install box2d-py
pip3 install atari-py
pip3 install statsmodels
