import os,subprocess, sys

password=[]
for eachArg in sys.argv:
	password.append(eachArg)

password=password[0]

subprocess.call(["sh","-c","echo "+password+" | sudo -S apt -y install --install-recommends pybind11-dev"])
subprocess.call(["sh","echo "+password+" | sudo -S apt -y install --install-recommends libboost-all-dev"])
subprocess.call(["sh","echo "+password+" | sudo -S apt -y install --install-recommends libhdf5-dev"])
subprocess.call(["sh","echo "+password+" | sudo -S apt -y install --install-recommends libeigen3-dev"])
subprocess.call(["sh","echo "+password+" | sudo -S apt -y install --install-recommends zlib1g-dev"])
subprocess.call(["sh","echo "+password+" | sudo -S apt -y install --install-recommends pkg-config"])
subprocess.call(["sh","echo "+password+" | sudo -S apt -y install --install-recommends python3-ply"])
subprocess.call(["sh","echo "+password+" | sudo -S apt -y install --install-recommends libmshr-dev"])
subprocess.call(["sh","echo "+password+" | sudo -S apt -y install --install-recommends python3-mshr"])
subprocess.call(["sh","echo "+password+" | sudo -S apt -y install --install-recommends fenics"])
subprocess.call(["sh","pip3 install numpy"])
subprocess.call(["sh","pip3 install meshio[all]"])