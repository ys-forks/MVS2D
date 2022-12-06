#!/bin/bash
BASE_DIR='./'
EXP_DIR="${BASE_DIR}/experiments/release/multiscan/exp0"
cfg=./configs/multiscan/release.conf

CUDA_VISIBLE_DEVICES=2 python train.py --num_epochs=15 --DECAY_STEP_LIST 12 14 --cfg $cfg  --fullsize_eval=1 --use_test=0
