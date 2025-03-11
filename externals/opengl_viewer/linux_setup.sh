#!/bin/sh

# Exit on any error
set -e

# Ensure required dependencies are installed
echo "Installing dependencies..."
sudo apt-get update
sudo apt-get install -y unzip wget

# Download and unzip Eigen (corrected URL)
echo "Downloading Eigen 3.3.4..."
wget https://gitlab.com/libeigen/eigen/-/archive/3.3.4/eigen-3.3.4.zip -O eigen-3.3.4.zip

echo "Extracting Eigen..."
unzip eigen-3.3.4.zip -d externals

# Rename the folder (check the correct extracted folder name)
mv externals/eigen-3.3.4 externals/eigen
rm eigen-3.3.4.zip

# Download and unzip GLEW
echo "Downloading GLEW 2.0.0..."
wget https://github.com/nigels-com/glew/releases/download/glew-2.0.0/glew-2.0.0.zip -O glew-2.0.0.zip

echo "Extracting GLEW..."
unzip glew-2.0.0.zip -d externals
mv externals/glew-2.0.0 externals/glew
rm glew-2.0.0.zip

echo "Setup completed successfully!"
