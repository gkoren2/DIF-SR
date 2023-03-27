#!/bin/bash
#SBATCH -c 4 
#SBATCH -p g24
#SBATCH --gres=gpu:1

source /home/gkoren2/miniconda3/bin/activate
conda activate difsr
cd /home/gkoren2/code/git/gkoren2/DIF-SR


# yelp
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='yelp' --config_files='configs/exp1/yelp.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='yelp' --config_files='configs/exp1/yelp_L1.yaml'
