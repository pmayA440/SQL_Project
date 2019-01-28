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






