#!/bin/bash

# Ensure that the script is being run in the project's root directory
cd "$(dirname "$0")"

# Check if the Python environment is already activated (for conda users)
# Uncomment the following line if using conda environment
# source activate your_env_name

# Install the required Python packages listed in requirements.txt
if [ -f requirements.txt ]; then
    echo "Installing required packages from requirements.txt..."
    pip install -r requirements.txt
else
    echo "requirements.txt not found. Please ensure it exists in the current directory."
    exit 1
fi

# Print a message indicating the installation is complete
echo "Installation of required packages is complete."
