#!/bin/bash

# Update & Upgrade packages
pkg update -y && pkg upgrade -y

# Install required package
pkg install -y p7zip git python

# Clone the repository
git clone https://github.com/TEAM-NTVANSH/NTV-OSINT.git

# Change directory
cd NTV-OSINT || { echo "NTV-OSINT folder not found!"; exit 1; }

# Extract File
7z x Osint.7z

# Change directory
cd Osint || { echo "Osint folder not found!"; exit 1; }

# Install Python requirements
pip install -r requirements.txt

# Run the tool
python main.py
