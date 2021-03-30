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

-- From votes_over_20 create new table wherehelpful_votes divided 
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
INTO nonpaid_reviews
FROM helpful_votes_over50_percent
WHERE vine = 'N';

-- total number of reviews: 40,565
SELECT COUNT( DISTINCT review_id)
FROM helpful_votes_over50_percent;

-- number of 5-star reviews: 15,711
SELECT COUNT( DISTINCT review_id)
FROM helpful_votes_over50_percent
WHERE star_rating = 5;

-- percentage of 5-star reviews for paid reviews: 48
SELECT 
(COUNT(DISTINCT review_id) * 100
FROM helpful_votes_over50_percent
WHERE star_rating = 5
AND vine = 'Y') / 
 
(SELECT COUNT( DISTINCT review_id)
FROM helpful_votes_over50_percent
WHERE star_rating = 5 );


-- percentage of 5-star reviews for unpaid reviews: 15,663
SELECT 
(COUNT(DISTINCT review_id) * 100
FROM helpful_votes_over50_percent
WHERE star_rating = 5
AND vine = 'N') / 
 
(SELECT COUNT( DISTINCT review_id)
FROM helpful_votes_over50_percent
WHERE star_rating = 5 );

-- * percentage of HELPFUL PAID reviews:
SELECT 
(COUNT(DISTINCT review_id) * 100
FROM helpful_votes_over50_percent
WHERE vine = 'Y') / 
 
(SELECT COUNT( DISTINCT review_id)
FROM helpful_votes_over50_percent;


-- * percentage of Helpful reviews for unpaid reviews
SELECT 
(COUNT(DISTINCT review_id) * 100
FROM helpful_votes_over50_percent
WHERE vine = 'N') / 
 
(SELECT COUNT( DISTINCT review_id)
FROM helpful_votes_over50_percent;


