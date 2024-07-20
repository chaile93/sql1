--There are 2 actors with the last_name Wahlberg
select FIRST_NAME, LAST_NAME, ACTOR_ID
from actor
where LAST_NAME like 'Wahlberg';
--NO PAYMENTS WERE MADE IN AMOUNTS BETWEEN 3.99 AND 5.99
SELECT COUNT(*) AS num_payments
FROM Payment
WHERE Amount BETWEEN 3.99 AND 5.99;
-- Film Id 350, 8 copies
SELECT film_id, COUNT(*) AS num_copies
FROM inventory
GROUP BY film_id
ORDER BY num_copies DESC
LIMIT 1;

--1 CUSTOMER HAS THE LAST NAME WILLIAMS
select * 
from CUSTOMER 
where LAST_NAME like 'Williams';
--
select STAFF_ID
from SALES
--THERE ARE 2 DISTRICTS NAMES
select * 
from store

--Lambs Cincinatti
SELECT f.title, COUNT(fa.actor_id) AS num_actors
FROM film_actor fa
JOIN film f ON fa.film_id = f.film_id
GROUP BY f.film_id, f.title
ORDER BY num_actors DESC
LIMIT 1;

-- 13
SELECT COUNT(*) AS num_customers
FROM customer
WHERE store_id = 1
AND last_name LIKE '%es';

--
SELECT Amount, COUNT(*) AS NumRentalsAbove250
FROM Rental
WHERE BETWEEN 380 AND 430
GROUP BY Payment Amount
HAVING COUNT(*) > 250;
-- PG 13(1), 223
SELECT rating, COUNT(*) AS TotalMovies
FROM film
GROUP BY rating
ORDER BY TotalMovies DESC
LIMIT 1;







