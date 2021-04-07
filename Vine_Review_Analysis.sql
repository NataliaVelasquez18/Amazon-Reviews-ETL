-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

-- See table
SELECT * FROM vine_table LIMIT 5;

-- Create new table where total votes >= 20
SELECT * 
INTO votes_over_20
FROM vine_table
WHERE total_votes >= 20;

-- See my new created table
SELECT * FROM votes_over_20 LIMIT 5;

-- From votes_over_20 create new table where helpful_votes divided 
-- by total_votes is equal to or greater than 50%.

SELECT *
INTO helpful_votes_over50_percent
FROM votes_over_20
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

SELECT * FROM helpful_votes_over50_percent LIMIT 5;

-- New Table where review was written as part of the Vine program (paid)

SELECT *
INTO paid_reviews
FROM helpful_votes_over50_percent
WHERE vine = 'Y';

-- New Table where review was written as not part of the Vine program (unpaid)

SELECT *
INTO unpaid_reviews
FROM helpful_votes_over50_percent
WHERE vine = 'N';



-- Create a table for the number of total paid reviews
CREATE TABLE total_paid_reviews (
  total_reviews INT
);

--- fill up the new table for total paid reviews
INSERT INTO total_paid_reviews(total_reviews)
SELECT COUNT(vine)
FROM paid_reviews;

-- Check my table
SELECT * FROM total_paid_reviews;


-- Create a table for the number of total paid 5 star reviews
CREATE TABLE paid_five_star_reviews (
  paid_five_S_reviews INT
);

-- fill up second table for total_five_star_paid reviews
INSERT INTO paid_five_star_reviews(paid_five_S_reviews)
SELECT COUNT(vine)
FROM paid_reviews
WHERE star_rating = 5;


-- check my new table
SELECT * 
FROM paid_five_star_reviews;

-- FIND Tthe percentage of 5 star reviews out of total (paid)
SELECT TPR.total_reviews, PFSR.paid_five_S_reviews
INTO percentage_paid
FROM total_paid_reviews as TPR
INNER JOIN paid_five_star_reviews as PFSR
ON 1=1;

SELECT * FROM percentage_paid;

-- percentage of 5-star reviews for paid reviews: 
SELECT total_reviews, paid_five_S_reviews,
CONCAT(ROUND (CAST(paid_five_S_reviews AS FLOAT)/
	CAST(total_reviews AS FLOAT)*100), '%')
	As percent_paid_five
INTO percent_paid_five_analysis
FROM percentage_paid;

-------------------


SELECT *
FROM percent_paid_five_analysis;



-------------------





-- Create a table for the number of total unpaid reviews
CREATE TABLE total_unpaid_reviews (
  total_reviews INT
);

--- fill up the new table for total unpaid reviews
INSERT INTO total_unpaid_reviews(total_reviews)
SELECT COUNT(vine)
FROM unpaid_reviews;

-- Check my table
SELECT * FROM total_unpaid_reviews;


-- Create a table for the number of total unpaid 5 star reviews
CREATE TABLE unpaid_five_star_reviews (
  unpaid_five_S_reviews INT
);

-- fill up second table for total_five_star_unpaid reviews
INSERT INTO unpaid_five_star_reviews(unpaid_five_S_reviews)
SELECT COUNT(vine)
FROM unpaid_reviews
WHERE star_rating = 5;


-- check my new table
SELECT * 
FROM unpaid_five_star_reviews;

-- FIND Tthe percentage of 5 star reviews out of total (unpaid)
SELECT TUPR.total_reviews, UPFSR.unpaid_five_S_reviews
INTO percentage_unpaid
FROM total_unpaid_reviews as TUPR
INNER JOIN unpaid_five_star_reviews as UPFSR
ON 1=1;

SELECT * FROM percentage_unpaid;

-- percentage of 5-star reviews for unpaid reviews: 
SELECT 
total_reviews, 
unpaid_five_S_reviews,
CONCAT(ROUND (CAST(unpaid_five_S_reviews AS FLOAT)/
			  CAST(total_reviews AS FLOAT)*100), '%') 
			  As percent_unpaid_five 
--INTO percent_unpaid_five_analysis
FROM percentage_unpaid;


------------

SELECT *
FROM percent_unpaid_five_analysis;

-------------











