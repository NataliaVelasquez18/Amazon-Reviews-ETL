# Big Data with PySpark: Analyzing Bias in Amazon Paid Review Program

## Business Problem:

Dream Games is a videogame producer and distributor who has recently joined Amazon as a vendor.  Sales haven't been as expected and it is taking some time to Dream Games to accummulate enough reviews to look attractive compared to their competitors on the Amazon site.  The company is analyzing the possibility of joining the Amazon Vine Program. Amazon Vine invites customers to receive a product for free in exchange for a review. The executive team of DreamGames wants to know if by joining the Amazon paid review program will generate a positive return on investment (ROI).

## Purpose

The purpose of this study is to help the executive team of DreamGames to decide if by joining the Amazon paid review program will generate a positive return on investment (ROI).


## Overview of approach:

* [Public data of Amazon reviews](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt) is analyzed for the category video games

* Postgres was configured and selected as the Database Management System for the project

* The Postgres database is hosted on the cloud using Amazon Web Services Relational Database Service

* PySpark is used to perform the ETL process: Extract the data from the web, read the data into a dataframe, create 4 dataframes: customers, products, reviews,       vine, load the transformed data into Postgres.  The [Amazon_Reviews_ETL](https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Amazon_Reviews_ETL.ipynb) notebook contains the code.

*  After the data is loaded into Postgres, some queries are performed to create the final report for our analysis:      Percentage of five star reviews for Vine Program vs Non Vine Program. The SQL code is found in the [Vine Review Analysis](https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Vine_Review_Analysis.sql) file.

* Finally, the Postgres database is accessed using Python's library SQLAlchemy to extract the report with the findings.  Data is read in Python and some visualizations are created using Python's library matplotlib. The [Visualization](https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Visualization.ipynb) notebook contains the code.


## Executive Summary:

* Total reviews of Vine Program: 94. Total 5-star reviews: 48. Percentage of 5-star reviews: 51% 
* Total reviews for non Vine Program products: 40,471. Total 5-star reviews: 15,663. Percentage of 5-star reviews: 39% 
* The results indicate a potential bias towards five star reviews for products belonging to the Vine Program. 

 

## Results: 

As we can see the number of unpaid reviews is the majority of our data.  Only 39% of the unpaid reviews have five star rating and 51% of the paid reviews have five star rating.




## Recommendations:

* Our results indicate that by subscribing to the Vine Program the positive rating of the product in the video game category will increase.  However, ethical considerations need to be taken in account and it is recommended that Dream Games keeps improving the product and delivering high quality for it's customers.
