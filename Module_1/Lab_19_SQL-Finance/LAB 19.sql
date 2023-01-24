USE olist;

SELECT * FROM olist.order_items;


-- 1. From the order_items table, find the price of the highest priced order and lowest price order.order_itemsorder_items

SELECT MAX(price) as highest_price,
MIN(price) as lowest_price
FROM order_items;

-- 2. From the order_items table, what is range of the shipping_limit_date of the orders?

select min(shipping_limit_date) as lower_shipping_limit_date, max(shipping_limit_date) as higher_shipping_limit_date from order_items;

-- 3. From the customers table, find the states with the greatest number of customers.

UNLOCK TABLES;

SELECT customer_state, COUNT(customer_id) FROM olist.customers GROUP BY customer_state ORDER BY COUNT(customer_id) DESC;

-- 4. From the customers table, within the state with the greatest number of customers, find the cities with the greatest number of customers.

SELECT customer_city, COUNT(customer_id) as city_customers_count
FROM customers
WHERE customer_state = (SELECT customer_state FROM customers GROUP BY customer_state ORDER BY COUNT(customer_id) DESC LIMIT 1)
GROUP BY customer_city
ORDER BY city_customers_count DESC;

-- 5. From the closed_deals table, how many distinct business segments are there (not including null)?

SELECT COUNT(DISTINCT business_segment) as nbr_distinct_segments
FROM closed_deals
WHERE business_segment IS NOT NULL;

/* 6. From the closed_deals table, sum the declared_monthly_revenue for duplicate row values in business_segment 
and find the 3 business segments with the highest declared monthly revenue (of those that declared revenue).
*/

SELECT business_segment, SUM(declared_monthly_revenue) as total_revenue
FROM closed_deals
WHERE declared_monthly_revenue IS NOT NULL
GROUP BY business_segment
ORDER BY total_revenue DESC
LIMIT 3;

-- 7. From the order_reviews table, find the total number of distinct review score values.

SELECT DISTINCT review_id, SUM(review_score)
FROM order_reviews;


-- 8. In the order_reviews table, create a new column with a description that corresponds to each number category for each review score from 1 - 5, then find the review score and category occurring most frequently in the table.

ALTER TABLE order_reviews
ADD DESCRIPTION VARCHAR(255) AS (CASE
WHEN review_score = 1 THEN 'Very bad score'
WHEN review_score = 2 THEN 'bad score'
WHEN review_score = 3 THEN 'medium score'
WHEN review_score = 4 THEN 'good score'
WHEN review_score = 5 THEN 'very good score'
ELSE 'NULL'
END);

SELECT review_score, description, COUNT(*) as count
FROM order_reviews
GROUP BY review_score, description
ORDER BY count DESC
limit 1;


-- 9. From the order_reviews table, find the review value occurring most frequently and how many times it occurs.

SELECT review_score, COUNT(*) AS count
FROM order_reviews
GROUP BY review_score
ORDER BY count DESC
LIMIT 1;

