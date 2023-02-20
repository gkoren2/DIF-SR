to create the environment to run this project: 
```
 conda create -n difsr python=3.9
 conda activate difsr
```
install pytorch according to the instructions from their site. at the moment of creating the env, it was:
```
conda install pytorch torchvision torchaudio pytorch-cuda=11.6 -c pytorch -c nvidia
```
then continue with the following installations:
```
conda install -c anaconda jupyter
conda install -c conda-forge jupyter_contrib_nbextensions
conda install pandas scikit-learn tqdm
conda install -c conda-forge matplotlib   # not sure its necessary

pip install colorama colorlog tensorboard
```
