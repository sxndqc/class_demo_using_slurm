#!/bin/bash
#SBATCH --job-name=demo               # name of your job
#SBATCH --output=logs/%j_finetune.log # std and log
#SBATCH --error=logs/%j_finetune.log  # error log
#SBATCH --nodelist=student-gpu-001    # which node
#SBATCH --gres=gpu:1                  # num of gpus
#SBATCH --cpus-per-task=10            # num of cpus
#SBATCH --mem=96G                     # memory to use
#SBATCH --time=24:00:00               # running time (HH:MM:SS)

# Step 1: login to the cluster: ask for permission to add your name to user group (SHA256 key)
# Step 2: sync your files to the cluster
# Step 3: try to run your job with interactive pty for debugging
# Step 4: submit your job to handover
# Step 5: Use /data/$USER_NAME to store your model (which is fine for this class)
# Step 6: Etiquette for using shared cluster resources:
    # Be mindful of resource usage and avoid monopolizing resources.
    # Regularly monitor your jobs and terminate any that are no longer needed.
    # Clean up temporary files and data after job completion to free up space.

/home/g/phd/shb/miniconda3/bin/python huggingface_demo.py
