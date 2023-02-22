USE sakila;

SELECT customer_id, payment_date, amount, 
       SUM(amount) OVER (PARTITION BY customer_id ORDER BY payment_date) AS running_total
FROM payment;

SELECT DATE(payment_date) AS payment_dt, amount, 
       RANK() OVER (PARTITION BY DATE(payment_date) ORDER BY amount DESC) AS rnk,
       DENSE_RANK() OVER (PARTITION BY DATE(payment_date) ORDER BY amount DESC) AS dense_rnk
FROM payment;

SELECT c.name AS category, f.title AS film_title, f.rental_rate, 
       RANK() OVER (PARTITION BY c.name ORDER BY f.rental_rate DESC) AS rnk, 
       DENSE_RANK() OVER (PARTITION BY c.name ORDER BY f.rental_rate DESC) AS dens_rank
FROM film f 
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id;

SELECT category, film_title, rental_rate, rnk, dens_rank, row_num
FROM (
    SELECT c.name AS category, f.title AS film_title, f.rental_rate, 
           RANK() OVER (PARTITION BY c.name ORDER BY f.rental_rate DESC) AS rnk, 
           DENSE_RANK() OVER (PARTITION BY c.name ORDER BY f.rental_rate DESC) AS dens_rank,
           ROW_NUMBER() OVER (PARTITION BY c.name ORDER BY f.rental_rate DESC) AS row_num
    FROM film f 
    JOIN film_category fc ON f.film_id = fc.film_id
    JOIN category c ON fc.category_id = c.category_id
) ranked
WHERE row_num <= 5;

SELECT payment_id, customer_id, amount, payment_date,
       amount - LAG(amount) OVER (PARTITION BY customer_id ORDER BY payment_date) AS diff_from_prev,
       LEAD(amount) OVER (PARTITION BY customer_id ORDER BY payment_date) - amount AS diff_from_next
FROM payment;