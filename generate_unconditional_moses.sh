#!/bin/bash

# Adapt according to your installation.
CONDA_BASE_DIR=~/miniconda3/

# Activate the conda environment.
source "$CONDA_BASE_DIR/etc/profile.d/conda.sh"

conda activate torch

python generate/generate.py --model_weight unconditional_moses --num_props 0 --data_name moses2 --csv_name unconditional_moses_generated --vocab_size 94 --block_size 102 --gen_size 10000 --batch_size 512

