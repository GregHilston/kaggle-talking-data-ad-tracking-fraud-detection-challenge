# Kaggle Talking Data Ad Tracking Fraud Detection Challenge


## Prompt

> Fraud risk is everywhere, but for companies that advertise online, click fraud can happen at an overwhelming volume, resulting in misleading click data and wasted money. Ad channels can drive up costs by simply clicking on the ad at a large scale. With over 1 billion smart mobile devices in active use every month, China is the largest mobile market in the world and therefore suffers from huge volumes of fraudulent traffic.

> TalkingData, China’s largest independent big data service platform, covers over 70% of active mobile devices nationwide. They handle 3 billion clicks per day, of which 90% are potentially fraudulent. Their current approach to prevent click fraud for app developers is to measure the journey of a user’s click across their portfolio, and flag IP addresses who produce lots of clicks, but never end up installing apps. With this information, they've built an IP blacklist and device blacklist.

> While successful, they want to always be one step ahead of fraudsters and have turned to the Kaggle community for help in further developing their solution. In their 2nd competition with Kaggle, you’re challenged to build an algorithm that predicts whether a user will download an app after clicking a mobile app ad. To support your modeling, they have provided a generous dataset covering approximately 200 million clicks over 4 days!

Since this is my first Kaggle competition, I came into it under the impression that I will not be submitting competitive solutions, but rather wanted to use this as an opportunity to learn as much as possible.

With that being said, I spent a large portion of my time dedicated to performing exploratory data analysis (EDA) on the **entire** training data set, which was about one hundred thirty five million rows, clocking in at about seven and a half gigabytes. This proved to be difficult and slightly frustrated due to how much RAM was needed to initially load the data set in and to process it. This self made requirement forced me to work with Amazon Web Services's (AWS's) Elastic Compute Cloud (EC2), as I did not posses anywhere near the required amount of RAM.


## Approach

My plan was to walk through a series of enhancements, where each step would produce a better model. Those steps were:

```
+------------------------+   +--------------+   +-----+   +--------------+
|Random Forest Classifier+--->Stratification+--->SMOTE+--->RandomSearchCV|
+------------------------+   +--------------+   +-----+   +--------------+

```

Before these steps we'll work through EDA and transforming out data to ensure out steps below are possible.


0. Random Forest Classifier
  - A basic Random Forest Classifier that is acting as our base line
1. Stratification
  - We'll use stratification to help evenly split our data's class variables
2. SMOTE
  - We'll use SMOTE to synthesize data for our class variable to ensure we have a more balanced dataset
3. RandomSearchCV
  - We'll use RandomSearchCV to brute force which parameters perform best for our Random Forest Classifier


## Install

I've provided an install script to make getting up and running quicker. I use this when spinning up a fresh EC2 instance. :

`$ ./install.sh`


## Run

I've provided a run script to make starting the notebook easier:

`$ ./run.sh`
