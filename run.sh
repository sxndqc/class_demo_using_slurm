#!/bin/bash
#SBATCH --job-name=demo               # name of your job
#SBATCH --output=logs/%j_demo.log     # std and log, suggested to be put in a special "log/" folder to make it clean.
#SBATCH --error=logs/%j_demo.log      # error log, suggested to come along with standard output and warning logs.
#SBATCH --nodelist=student-gpu-001    # which node, use 1 and 2 dedicated for the class.
#SBATCH --gres=gpu:1                  # num of gpus, don't apply for more than 1 because (1) 1 GPU is enough for your assignment (2) other students need to use them (3) Distributed training means a totally different script writing.
#SBATCH --cpus-per-task=10            # num of cpus, don't apply for too many because they are NOT shared.
#SBATCH --mem=96G                     # memory to use, it's fine to ask for the maximum because it is shared.
#SBATCH --time=24:00:00               # running time (HH:MM:SS), you can ask for the maximum time but normally your script should finish in 10 hours.

# Step 1: login to the cluster: ask for permission to add your name to user group (SHA256 key)
# Step 2: sync your files to the cluster
# Step 3: try to run your job with interactive pty for debugging
# Step 4: submit your job to handover
# Step 5: Use /data/$USER_NAME to store your model (which is fine for this class)
# Step 6: Etiquette for using shared cluster resources:
    # Be mindful of resource usage and avoid monopolizing resources.
    # Regularly monitor your jobs and terminate any that are no longer needed.
    # Clean up temporary files and data after job completion to free up space.

# which python
# using uv as the environment would be better
/home/g/phd/shb/miniconda3/bin/python huggingface_demo.py
