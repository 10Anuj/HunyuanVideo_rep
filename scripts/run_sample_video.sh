#!/bin/bash
# Description: This script demonstrates how to inference a video based on HunyuanVideo model

python3 sample_video.py \
    --video-size 720 1280 \
    --video-length 5 \
	--infer-steps 16 \
    --prompt "A cat walks on the grass, realistic style." \
    --seed 42 \
	--embedded-cfg-scale 6.0 \
    --flow-shift 7.0 \
    --flow-reverse \
    --use-cpu-offload \
    --dit-weight "ckpts/hunyuan-video-t2v-720p/transformers/mp_rank_00_model_states_refactored.pt" \
    --save-path ./results
