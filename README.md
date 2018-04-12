# Kaggle Talking Data Ad Tracking Fraud Detection Challenge


## Install

I've provided an install script to make getting up and running quicker. I use this when spinning up a fresh EC2 instance. Simply run:

`$ ./install.sh`


## Run

I've provided a run scipt to make running easier. Simply run:

`$ ./run.sh`


## Copy Files

`$ scp -Ci ~/.ssh/aws_ec2_personal.pem data/train_sample.csv ubuntu@[EC2_Instance_IPv4_Address]:/home/ubuntu/Git/kaggle-talking-data-ad-tracking-fraud-detection-challenge/data
train.csv`

`$ scp -Ci ~/.ssh/aws_ec2_personal.pem data/train.csv ubuntu@[EC2_Instance_IPv4_Address]:/home/ubuntu/Git/kaggle-talking-data-ad-tracking-fraud-detection-challenge/data
train.csv`
