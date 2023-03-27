#!/bin/bash
#SBATCH -c 4
#SBATCH -p g24
#SBATCH --gres=gpu:1

source /home/gkoren2/miniconda3/bin/activate
conda activate difsr
cd /home/gkoren2/code/git/gkoren2/DIF-SR


# Amazon Beauty
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Beauty' --config_files='configs/exp1/Amazon_Beauty.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Beauty' --config_files='configs/exp1/Amazon_Beauty_L1.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Beauty' --config_files='configs/exp1/Amazon_Beauty_brand.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Beauty' --config_files='configs/exp1/Amazon_Beauty_brand_L1.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Beauty' --config_files='configs/exp1/Amazon_Beauty_cat_brand.yaml'
python run_recbole.py --gpu_id=0 --model=SASRecD --dataset='Amazon_Beauty' --config_files='configs/exp1/Amazon_Beauty_cat_brand_L1.yaml'

exit
