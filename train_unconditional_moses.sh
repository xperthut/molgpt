#!/bin/bash

# Adapt according to your installation.
CONDA_BASE_DIR=~/miniconda3/

# Activate the conda environment.
source "$CONDA_BASE_DIR/etc/profile.d/conda.sh"

conda activate torch

python train/train.py --run_name unconditional_moses --data_name moses2 --batch_size 384 --max_epochs 10 --num_props 0

