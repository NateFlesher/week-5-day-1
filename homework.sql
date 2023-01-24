--#1 How many actors are there with the last name Wahlberg?
SELECT COUNT(last_name)
FROM actor
WHERE last_ame = 'Wahlberg'
-- #2 How many payments were made between 3.99 and 5.99
SELECT COUNT(amount)
-- #3 What film does the store have the most of?
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- #4 How many customers have the last name William?
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';


-- #5 What store employee sold the most rentals?
SELECT staff_id, COUNT(staff_id) 
FROM payment
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;

-- #6 hOW MANY DIFFERENT DISTRICT NAMES ARE THERE?
SELECT COUNT (DISTINCT district)
FROM address;

-- #7 What film has the most actors in it??
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT (actor_id) DESC;

-- #8 From store_id1, how many customers have a lat name ending with 'es'?
SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;

-- #9 How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430??
SELECT COUNT (DISTINCT amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250;

--#10 Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT COUNT(rating), rating
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;
