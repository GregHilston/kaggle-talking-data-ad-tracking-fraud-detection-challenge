#!/bin/bash

mkdir -p ~/Git
pushd ~/Git
git clone https://github.com/GregHilston/kaggle-talking-data-ad-tracking-fraud-detection-challenge
sudo apt-get install python3-pip jupyter jupyterlab htop -y
pip3 install -r requirements.txt -y
