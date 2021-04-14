# Big Data (ETL): Analyzing Bias in Amazon Paid Review Program

## Business Problem:

Dream Games is a videogame producer and distributor who has recently joined Amazon as a vendor.  Sales haven't been as expected and it is taking some time to Dream Games to accummulate enough reviews to look attractive compared to their competitors on the Amazon site.  The company is analyzing the possibility of joining the Amazon Vine Program. Amazon Vine invites customers to receive a product for free in exchange for a review. The executives of Dream Games would like to know whether reviews coming from the Vine Program are biased towards having higher ratings.


## Purpose

The purpose of this study is to help Dream Games to understand potential bias on the Amazon Vine Program before they make the decision to join it.  Dream Games wants to know if by joining the program and investing in giving free products to potential reviewers will help them to have high rating and greater volume of reviews.


In this project, you’ll have access to approximately 50 datasets. Each one contains reviews of a specific product, from clothing apparel to wireless products. You’ll need to pick one of these datasets and use PySpark to perform the ETL process to extract the dataset, transform the data, connect to an AWS RDS instance, and load the transformed data into pgAdmin. Next, you’ll use PySpark, Pandas, or SQL to determine if there is any bias toward favorable reviews from Vine members in your dataset. Then, you’ll write a summary of the analysis for Jennifer to submit to the SellBy stakeholders.



The purpose of this analysis is to determine whether Amazon reviews written by members of the paid Amazon Vine program are biased towards 5-star rating.

## Overview of approach:

Our CSV file contains 1,785,997 reviews.  The analysis was done using SQL.

## Results: 

<img src="https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Resources/reviews_results.png" width="450" height="250" />

<img src="https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Resources/reviews.png" width="450" height="250" />


As we can see the number of unpaid reviews is the majority of our data.  Only 39% of the unpaid reviews have five star rating and 51% of the paid reviews have five star rating.


## Summary 

It appears to be a significant difference between the 5 stars reviews of the vine program compared to the non paid reviews.  Therefore, the results indicate a potential bias for reviews in the vine program.  An additional study can be done including more data of the verified purchases and of the different demographics. A sentiment analysis can be performed to identify the overall image of products on the web.
