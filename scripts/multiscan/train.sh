#!/bin/bash
BASE_DIR='./'
EXP_DIR="${BASE_DIR}/experiments/release/multiscan/exp0"
cfg=./configs/multiscan/release.conf

CUDA_VISIBLE_DEVICES=0 OMP_NUM_THREADS=1 python train.py --num_epochs=30 --DECAY_STEP_LIST 25 28 --cfg $cfg  --fullsize_eval=1 --use_test=0
