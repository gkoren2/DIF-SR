#!/bin/bash
#SBATCH -c 4 
#SBATCH -p g24
#SBATCH --gres=gpu:1

source /home/gkoren2/miniconda3/bin/activate
conda activate difsr
cd /home/gkoren2/code/git/gkoren2/DIF-SR


# Amazon_Sports_and_Outdoors
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Sports_and_Outdoors' --config_files='configs/exp1/Amazon_Sports_and_Outdoors.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Sports_and_Outdoors' --config_files='configs/exp1/Amazon_Sports_and_Outdoors_L1.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Sports_and_Outdoors' --config_files='configs/exp1/Amazon_Sports_and_Outdoors_brand.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Sports_and_Outdoors' --config_files='configs/exp1/Amazon_Sports_and_Outdoors_brand_L1.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Sports_and_Outdoors' --config_files='configs/exp1/Amazon_Sports_and_Outdoors_cat_brand.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Sports_and_Outdoors' --config_files='configs/exp1/Amazon_Sports_and_Outdoors_cat_brand_L1.yaml'

exit

