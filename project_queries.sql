-- Ecommerce Funnel & Revenue Analysis (Oct 2019)

-- 1) Funnel counts
SELECT event_type, COUNT(*) AS total_events
FROM ecommerce_oct
GROUP BY 1
ORDER BY total_events DESC;

-- 2) Total purchases and revenue
SELECT
  COUNT(*) AS total_purchases,
  ROUND(SUM(price), 2) AS total_revenue
FROM ecommerce_oct
WHERE event_type = 'purchase';

-- 3) Daily revenue trend
SELECT
  DATE(event_time) AS day,
  ROUND(SUM(price), 2) AS revenue
FROM ecommerce_oct
WHERE event_type = 'purchase'
GROUP BY 1
ORDER BY 1;

-- 4) Top 10 categories by revenue
SELECT
  category_code,
  ROUND(SUM(price), 2) AS revenue
FROM ecommerce_oct
WHERE event_type = 'purchase'
GROUP BY 1
ORDER BY revenue DESC
LIMIT 10;

-- 5) Handle missing category codes (data cleaning)
UPDATE ecommerce_oct
SET category_code = 'unknown'
WHERE category_code IS NULL OR TRIM(category_code) = '';

-- 6) Top 10 brands by purchases
SELECT
  brand,
  COUNT(*) AS purchases
FROM ecommerce_oct
WHERE event_type = 'purchase'
  AND brand IS NOT NULL
  AND TRIM(brand) <> ''
GROUP BY 1
ORDER BY purchases DESC
LIMIT 10;

-- 7) Export summary tables (optional SQL-based prep)
DROP TABLE IF EXISTS daily_revenue;
CREATE TABLE daily_revenue AS
SELECT
  DATE(event_time) AS day,
  ROUND(SUM(price),2) AS revenue,
  COUNT(*) AS purchases
FROM ecommerce_oct
WHERE event_type = 'purchase'
GROUP BY 1;

DROP TABLE IF EXISTS category_revenue;
CREATE TABLE category_revenue AS
SELECT
  category_code,
  ROUND(SUM(price),2) AS reve

