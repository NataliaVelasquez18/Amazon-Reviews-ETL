# Big Data (ETL): Analyzing Bias in Amazon Paid Review Program

## Business Problem:

Dream Games is a videogame producer and distributor who has recently joined Amazon as a vendor.  Sales haven't been as expected and it is taking some time to Dream Games to accummulate enough reviews to look attractive compared to their competitors on the Amazon site.  The company is analyzing the possibility of joining the Amazon Vine Program. Amazon Vine invites customers to receive a product for free in exchange for a review. The executives of Dream Games would like to know whether reviews coming from the Vine Program are biased towards having higher ratings to assess the benefits of the program.


## Purpose

The purpose of this study is to help Dream Games to understand potential bias in the Amazon Vine Program before they make the decision to join it.  Dream Games wants to know if by joining the program and investing in giving free products to potential reviewers will help them to have high rating and greater volume of reviews.


## Overview of approach:

* [Public data of Amazon reviews](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt) is analyzed for the category video games.

* Postgres was configured and selected as a Database Management System

* The database is hosted on the cloud using Amazon Web Services Relational Database Service

* PySpark is used to perform the ETL process: Extract the data from the web, read the data into a dataframe, create 4 dataframes: customers, products, reviews,       vine, load the transformed data into PgAdmin.  The [Amazon_Reviews_ETL](https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Amazon_Reviews_ETL.ipynb) file contains the code.

*  After the data is loaded into PGAdmin, some queries are performed to create new tables, perform calculations, and summarize the main metrics for this analysis:      Percentage of five star reviews for Vine Program vs Non Vine Program. The SQL code is found in the [Vine Review Analysis](https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Vine_Review_Analysis.sql) file.

* 

*   
*     with only target columns, 
* 
* 
* with the purpose of making the data available for Dream Games, an instance of  is configured. 
* that you have a good idea of what AWS does, it's time to use it for hosting the database for your client. You decide to go with a Postgres database for the many benefits and host it on AWS.

* Due to the large size of the data,     The reviews data is read as a dataframe, 4 tables are created from the dataframe 



*  
*   
*     (Extract, Transform, Load).
* An instance of AWS RDS (Amazon Web Services Relational Database Service) is configured

In this project, you’ll have access to approximately 50 datasets. Each one contains reviews of a specific product, from clothing apparel to wireless products. You’ll need to pick one of these datasets and use PySpark to perform the ETL process to extract the dataset, transform the data, connect to an AWS RDS instance, and load the transformed data into pgAdmin. Next, you’ll use PySpark, Pandas, or SQL to determine if there is any bias toward favorable reviews from Vine members in your dataset. Then, you’ll write a summary of the analysis for Jennifer to submit to the SellBy stakeholders.

Our CSV file contains 1,785,997 reviews.  The analysis was done using SQL.

## Results: 

<img src="https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Resources/reviews_results.png" width="450" height="250" />

<img src="https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Resources/reviews.png" width="450" height="250" />


As we can see the number of unpaid reviews is the majority of our data.  Only 39% of the unpaid reviews have five star rating and 51% of the paid reviews have five star rating.


## Summary 

It appears to be a significant difference between the 5 stars reviews of the vine program compared to the non paid reviews.  Therefore, the results indicate a potential bias for reviews in the vine program.  An additional study can be done including more data of the verified purchases and of the different demographics. A sentiment analysis can be performed to identify the overall image of products on the web.
