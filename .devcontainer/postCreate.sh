#!/bin/sh
echo "🚧 Setting up your environment. Please wait..."

# Define the export command
export_command='export OLLAMA_HOST=http://host.docker.internal:11434'

# Append the export command to .bashrc and .zshrc for the root user

chmod +x ~/.bashrc
chmod +x /.zshrc
echo "$export_command" >> ~/.bashrc
echo "$export_command" >> ~/.zshrc


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