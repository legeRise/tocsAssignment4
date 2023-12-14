#!/bin/bash -x

# Print current working directory
echo "Current working directory: $(pwd)"

# Define virtual environment name
venvname="venv"

# Check if the virtual environment exists
if [ ! -d "$venvname" ]; then
    echo "Creating virtual environment..."
    ls
    python -m venv "$venvname" || { echo "Failed to create virtual environment"; exit 1; }
fi

# Activate the virtual environment
source "$venvname/bin/activate" || { echo "Failed to activate virtual environment"; exit 1; }

# Print Python version
echo "Using Python version: $(python --version)"

# Install Flask and Gunicorn
pip install flask gunicorn || { echo "Failed to install dependencies"; exit 1; }

# Start the application with Gunicorn
gunicorn -w 4 -b 0.0.0.0:5230 --reload wsgi:app
