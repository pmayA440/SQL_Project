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



