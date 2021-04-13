# Analyzing Amazon Reviews

The purpose of this analysis is to determine whether Amazon reviews written by members of the paid Amazon Vine program are biased towards 5-star rating.

## Overview of approach:

Our CSV file contains 1,785,997 reviews.  The analysis was done using SQL.

## Results: 


* How many Vine reviews and non-Vine reviews were there?

<img src= "https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Resources/non_paid_reviews.png" width="180" height="100"/>

create table to show a table reviews >> vine # non vine #


* How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?

create new table for 5 star reviews >>> vine#, non vine#

<img src= "https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Resources/non_paid_reviews.png" width="180" height="100"/>



* What percentage of Vine reviews were 5 stars? 

<img src= "https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Resources/non_paid_reviews.png" width="180" height="100"/>

51%

* What percentage of non-Vine reviews were 5 stars?

<img src= "https://github.com/NataliaVelasquez18/Amazon-Reviews-ETL/blob/main/Resources/non_paid_reviews.png" width="180" height="100"/>

39%


## Summary 

It appears to be a significant difference between the 5 stars reviews of the vine program compared to the non paid reviews.  Therefore, the results indicate a potential bias for reviews in the vine program.  An additional analysis that could be done in the dataset to dive deeper into the matter is .......
