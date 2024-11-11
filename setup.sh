#!/bin/bash

# Step 1: Create a conda environment
conda create -n flux-ai python=3.10 -y

# Step 2: Activate the environment
conda activate flux-ai

# Step 3: Clone ComfyUI repository
git clone https://github.com/comfyanonymous/ComfyUI.git

# Step 4: Change directory to ComfyUI
cd ComfyUI

# Step 5: Install the required Python packages
pip install -r requirements.txt

# Step 6: Change directory to custom_nodes
cd custom_nodes

# Step 7: Clone the ComfyUI-Manager repository
git clone https://github.com/ltdrdata/ComfyUI-Manager

# Step 8: Go back to the ComfyUI directory
cd ..

# Step 9: Install Git LFS
git lfs install

# Step 10: Clone the flux-3d-cartoon repository from HuggingFace
git clone https://huggingface.co/riverallzero/flux-3d-cartoon

# Step 11: Change directory to flux-3d-cartoon
cd flux-3d-cartoon

# Step 12: Pull the large files using Git LFS
git lfs pull

# Step 13: Move clip_l.safetensors to models/clip
mv clip_l.safetensors ../models/clip

# Step 14: Move t5xxl_fp8_e4m3fn.safetensors to models/clip
mv t5xxl_fp8_e4m3fn.safetensors ../models/clip

# Step 15: Move flux1-dev-fp8.safetensors to models/unet
mv flux1-dev-fp8.safetensors ../models/unet

# Step 16: Move ae.sft to models/vae
mv ae.sft ../models/vae

# Step 17: Move 3d_avatar-000018.safetensors to models/loras
mv 3d_avatar-000018.safetensors ../models/loras

# Step 18: Return to the previous directory
cd ..
