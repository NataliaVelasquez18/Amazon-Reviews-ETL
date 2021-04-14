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

* The final data for visualization is read on a Pandas dataframe and plotted using Matplotlib. The [Visualization](https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Visualization.ipynb) file contains the code.


## Executive Summary:

* Total reviews of Vine Program: 94. Total 5-star reviews: 48. Percentage of 5-star reviews: 51% 
* Total reviews for non Vine Program products: 40,471. Total 5-star reviews: 15,663. Percentage of 5-star reviews: 39% 
* The results indicate a potential bias towards five star reviews for products belonging to the Vine Program. 

 

## Results: 

As we can see the number of unpaid reviews is the majority of our data.  Only 39% of the unpaid reviews have five star rating and 51% of the paid reviews have five star rating.

<img src="https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Resources/reviews_results.png" width="450" height="250" />

<img src="https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Resources/reviews.png" width="450" height="250" />




## Recommendations:

* Our results indicate that by subscribing to the Vine Program the positive rating of the product in the video game category will increase.  However, ethical considerations need to be taken in account and it is recommended that Dream Games keeps improving the product and delivering high quality for it's customers.
