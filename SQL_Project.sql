USE sakila;

SELECT first_name, last_name FROM actor;

SELECT CONCAT(first_name,' ', last_name) as 'Actor Name' FROM actor;

SELECT actor_id, first_name, last_name FROM actor
WHERE first_name = 'Joe';

SELECT last_name FROM actor
WHERE last_name LIKE '%GEN%';

SELECT last_name FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name;

SELECT country_id, country FROM country
WHERE country IN ('Afghanistan','Bangladesh','China');

ALTER TABLE actor 
ADD description MEDIUMBLOB;

ALTER TABLE actor 
DROP description;

SELECT last_name, count(last_name) FROM actor
GROUP BY last_name;

SELECT last_name, count(last_name) 'count' FROM actor
GROUP BY last_name
HAVING count(last_name) > 1;

UPDATE actor SET first_name = "GROUCHO"
WHERE first_name = "HARP0";

SELECT * FROM actor
WHERE first_name = "GROUCHO";

UPDATE actor SET first_name = "HARP0"
WHERE first_name = "GROUCHO";

SELECT * FROM actor
WHERE first_name = "GROUCHO";

SHOW CREATE TABLE address;

SELECT first_name, last_name, address FROM staff 
JOIN address USING (address_id);

SELECT CONCAT(first_name," ", last_name) "Full Name", sum(amount) FROM staff 
JOIN payment USING (staff_id)
Group BY CONCAT(first_name," ", last_name);

SELECT title, sum(actor_id) "Actor Count" FROM film 
INNER JOIN film_actor USING (film_id)
GROUP BY title;

SELECT count(film_id) "Count" FROM inventory
WHERE film_id in ( 
	SELECT film_id FROM film
    WHERE title = "Hunchback Impossible");

SELECT last_name, sum(amount) "Total Paid" from customer
JOIN payment USING (customer_id)
GROUP BY last_name
ORDER BY last_name ASC;

SELECT title FROM film 
WHERE title LIKE 'q%' OR title LIKE 'k%' 
AND language_id IN (
		SELECT language_id FROM language 
		WHERE name = "English");

SELECT first_name, last_name FROM actor 
WHERE actor_id IN (
	SELECT actor_id FROM film 
	WHERE film_id IN (
		SELECT film_id FROM film 
		WHERE title = "Alone Trip"));

SELECT first_name, last_name, email, country FROM customer 
JOIN address USING (address_id) 
JOIN city USING (city_id)
JOIN country USING (country_id)
WHERE country = "Canada";

SELECT * FROM category
GROUP BY name;

SELECT title, name FROM film 
JOIN film_category USING (film_id) 
JOIN category USING (category_id)
WHERE name = "Family";

SELECT title, count(rental_id) "Rental Frequency" FROM film
JOIN inventory USING (film_id)
JOIN rental USING (inventory_id)
GROUP BY title
ORDER BY count(rental_id) DESC;

SELECT store_id "Store", sum(amount) "Revenue (in $)" FROM payment
JOIN staff USING (staff_id)
JOIN store USING (store_id)
GROUP BY store_id;

SELECT store_id "Store", city, country FROM store
JOIN address USING (address_id)
JOIN city USING (city_id)
JOIN country USING (country_id);


