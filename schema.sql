CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);

SELECT *
FROM vine_table
WHERE vine = 'N';

SELECT *
FROM vine_table
WHERE vine = 'Y';

SELECT COUNT (review_id)
INTO review_count_N
FROM vine_table
WHERE vine = 'N';
-- N's 1781706

SELECT COUNT (review_id)
INTO review_count_Y
FROM vine_table
WHERE vine = 'Y';
-- Y's 4291

SELECT ROUND(AVG (helpful_votes), 2)
INTO avg_helpful_votes_n
FROM vine_table
WHERE vine = 'N';

SELECT ROUND(AVG(helpful_votes), 2) 
INTO avg_helpful_votes_y
FROM vine_table
WHERE vine = 'Y';

SELECT COUNT (star_rating)
INTO five_star_n
FROM vine_table
WHERE vine = 'N' AND star_rating = '5';

SELECT COUNT (star_rating)
INTO five_star_y
FROM vine_table
WHERE vine = 'Y' AND star_rating = '5';
