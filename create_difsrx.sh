#!/bin/bash
env_name='difsrx2'
echo "creating conda env ${env_name}"
anaconda_path=$CONDA_PREFIX_1
echo ${anaconda_path}

source ${anaconda_path}/etc/profile.d/conda.sh

conda deactivate
conda activate 

echo "Updating conda itself"
conda update conda -y



python_version='python=3.9'

conda_default_packages='pandas scikit-learn tqdm'

anaconda_packages='jupyter pillow h5py scikit-image scikit-learn'

conda_forge_packages='jupyter_contrib_nbextensions matplotlib gensim einops imageio scipy tqdm python-utils pygments'

pip_packages='colorama colorlog tensorboard opencv_python'

pytorch_packages='captum'


echo "Creating environment and installing Python + Pytorch"
conda create -y -n $env_name $python_version

echo "Installing pytorch version 1.13 with cuda 11.6 based on the command line from their site"
conda install -y -n $env_name pytorch==1.13.1 torchvision==0.14.1 torchaudio==0.13.1 pytorch-cuda=11.6 -c pytorch -c nvidia

echo "Installing default channel packages"
conda install -y  -n $env_name $conda_default_packages


echo "Installing anaconda packages"
conda install -y -n $env_name -c anaconda $anaconda_packages

echo "Installing conda-forge packages"
conda install -y -n $env_name -c conda-forge $conda_forge_packages

echo "Installing pytorch packages"
conda install -y -n $env_name -c pytorch $pytorch_packages


echo "Installing pip packages"
conda activate $env_name
pip install $pip_packages

echo "now go to transformers folder and install from source by 'pip install -e .'"

