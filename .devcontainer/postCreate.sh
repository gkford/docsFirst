#!/bin/sh
echo "🚧 Setting up your environment. Please wait..."

# Create the conda environment
conda create -n docsFirst -y

# Activate the environment
# Note: 'conda activate' doesn't work directly in a subshell script
# So we use a source activate alternative.
source activate docsFirst || conda activate docsFirst

# Install pip
conda install pip -y

conda init bash

# Install the Python packages from requirements.txt
pip install -r requirements.txt
pip install git+https://github.com/paul-gauthier/aider.git

# Install ollama
curl https://ollama.ai/install.sh | sh


echo "✅ Setup completed. You can now use the environment!"