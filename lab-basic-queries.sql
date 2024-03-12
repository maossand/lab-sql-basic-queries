USE sakila;
## 1. Display all tables in the database, including the views.
SHOW tables; 
## 2. Retrieve all the data from the tables actor, film and customer.
SELECT * from actor, film, customer;
## 3. Retrieve the following columns from their respective tables:
## 		3.1 Titles of all films from the film table
SELECT title from film;
## 		3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;
## 		3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;
## 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;
## 5. Counting records for database insights:

## 		5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS num_stores FROM store;
## 		5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS num_employees FROM staff;
## 		5.3 Determine how many films are available for rent and how many have been rented (how many rentals have occurred).
SELECT
  (SELECT COUNT(*) FROM film) AS total_films,
  (SELECT COUNT(*) FROM rental) AS rented_films;
## 		5.4 Determine the number of distinct last names of the actors in the database.
SELECT
  last_name AS "Last Name",
  COUNT(*) AS "Last Name Count"
FROM actor
GROUP BY last_name;
## 6. Retrieve the 10 longest films.
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 5;
## 7. Use filtering techniques in order to:

## 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * from actor
WHERE first_name = "SCARLETT";

## BONUS:
## 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT * from film
WHERE title like "%ARMAGEDDON%" AND length > 100;

## Hint: use LIKE operator. More information here.
## 7.3 Determine the number of films that include Behind the Scenes content
SELECT
  COUNT(*) AS "Films with Behind the Scenes"
FROM film
WHERE special_features like "%Behind the Scenes%";


