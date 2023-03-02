#!/bin/bash
#SBATCH -c 8 
#SBATCH -p g24
#SBATCH --gres=gpu:4

source /home/gkoren2/miniconda3/bin/activate
conda activate difsr
cd /home/gkoren2/code/git/gkoren2/DIF-SR


# Amazon Beauty
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Beauty' --config_files='configs/Amazon_Beauty.yaml'
# Amazon_Sports_and_Outdoors
python run_recbole.py --gpu_id=1 --model=SASRecD --dataset='Amazon_Sports_and_Outdoors' --config_files='configs/Amazon_Sports_and_Outdoors.yaml'
# Amazon_Toys_and_Games
python run_recbole.py --gpu_id=2 --model=SASRecD --dataset='Amazon_Toys_and_Games' --config_files='configs/Amazon_Toys_and_Games.yaml'
# yelp
python run_recbole.py --gpu_id=3 --model=SASRecD --dataset='yelp' --config_files='configs/yelp.yaml'
