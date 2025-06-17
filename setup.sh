#!/bin/bash

echo "Setting up audiobook-tts environment..."

# Install dependencies
sudo apt update
sudo apt install -y opus-tools python3.12-venv

# Clone Silero models
git clone https://github.com/snakers4/silero-models.git

# Create Python virtual environment
python3 -m venv silero_env
source silero_env/bin/activate

# Install required Python packages
pip install -r ./silero-models/requirements.txt
pip install num2words numpy

echo "Setup complete. Run the program using: source silero_env/bin/activate && python make_book.py"
