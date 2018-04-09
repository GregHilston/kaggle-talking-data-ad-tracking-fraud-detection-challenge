#!/bin/bash

echo "## Creating our Git repo"
mkdir -p ~/Git
pushd ~/Git
git clone https://github.com/GregHilston/kaggle-talking-data-ad-tracking-fraud-detection-challenge
pushd ~/Git/kaggle-talking-data-ad-tracking-fraud-detection-challenge

echo "## Updating apt's repository"
sudo apt-get update

echo "## Installing apt packages"
sudo apt-get install build-essential tmux python3-pip htop -y

echo "## Installing pip3 packages"
pip3 install -r requirements.txt
