#!/bin/bash
#SBATCH -c 4 
#SBATCH -p g24
#SBATCH --gres=gpu:1

source /home/gkoren2/miniconda3/bin/activate
conda activate difsr
cd /home/gkoren2/code/git/gkoren2/DIF-SR


# yelp
python run_recbole.py --gpu_id=2 --model=SASRecDX2 --dataset='yelp' --config_files='configs/exp5/yelp_cat_city.yaml' --seed=5678
python run_recbole.py --gpu_id=3 --model=SASRecDX2 --dataset='yelp' --config_files='configs/exp5/yelp_cat_city.yaml' --seed=17028
