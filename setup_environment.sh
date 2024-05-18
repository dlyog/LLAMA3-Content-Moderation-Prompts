#!/bin/bash

# Define the name of the virtual environment directory
ENV_DIR="venv"

# Check if the virtual environment already exists
if [ ! -d "$ENV_DIR" ]; then
    echo "Creating a new virtual environment..."
    python3 -m venv $ENV_DIR
else
    echo "Virtual environment already exists."
fi

# Activate the virtual environment
source $ENV_DIR/bin/activate

# Install the necessary packages
pip install --upgrade pip
pip install -r requirements.txt

echo "Environment setup complete. Virtual environment '$ENV_DIR' is activated."

