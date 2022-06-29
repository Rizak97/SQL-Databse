USE sakila;

-- Q1 List all actors.
SELECT * FROM actor; 

-- Q2 Find the surname of the actor with the forename 'John'
SELECT last_name FROM actor WHERE first_name = 'john';

-- Q3 Find all actors with surname 'Neeson'
SELECT * from actor WHERE last_name = 'Neeson'; 

-- Q4 Find all actors with ID numbers divisible by 10.
SELECT * FROM actor WHERE actor_id / 10; 

-- Q5 What is the description of the movie with an ID of 100?;
SELECT description FROM film WHERE film_id = 100;

-- Q6Find every R-rated movie.
SELECT * FROM film WHERE rating = 'R' ;

-- Q7 Find every non-R-rated movie.
SELECT * FROM film WHERE rating != 'R';

-- Q8 Find the ten shortest movies.
SELECT length FROM film ORDER BY length > 47  LIMIT 10;

-- Q9 Find the movies with the longest runtime, without using LIMIT.
SELECT length FROM film WHERE length;

-- Q10 Find all movies that have deleted scenes.
SELECT * FROM film WHERE special_features = 'Deleted Scenes'; 

-- Q11 Using HAVING, reverse-alphabetically list the last names that are not repeated.
SELECT last_name FROM actor GROUP BY last_name 
HAVING count(*)>=1 ORDER BY last_name DESC;

-- Q12 Using HAVING, list the last names that appear more than once, from highest to lowest frequency.
SELECT last_name, COUNT(*) name_count 
FROM actor GROUP BY last_name 
HAVING name_count>1 ORDER BY count(last_name) DESC;

-- Q13 Which actor has appeared in the most films? *
SELECT a.first_name "First name", a.last_name "Last name", count(f.film_id) "films" FROM actor a
JOIN film_actor f ON a.actor_id = f.actor_id
GROUP BY f.actor_id ORDER BY count(f.film_id) DESC;

-- Q14 When is 'Academy Dinosaur' due? *
SELECT return_date
FROM rental r 
INNER JOIN inventory i ON i.inventory_id = r.inventory_id 
INNER JOIN  film f ON f.film_id = i.film_id 
WHERE f.title = "Academy Dinosaur";


-- Q15 What is the average runtime of all films?
SELECT AVG(length) FROM film;
 
-- Q16 List the average runtime for every film category. 
SELECT c.name, AVG(f.length) FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON f.film_id = fc.film_id
GROUP BY c.category_id
ORDER BY AVG(f.length) DESC;

-- Q17 List all movies featuring a robot.
SELECT * FROM film
WHERE description LIKE '%robot%';

-- Q18 How many movies were released in 2010?
SELECT * FROM film
WHERE release_year LIKE '%2010%';

-- Q19 Find the titles of all the horror movies.
SELECT f.title, ca.`name`, ca.category_id FROM film f
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category ca ON fc.category_id = ca.category_id
WHERE ca.`name` = 'Horror';

-- Question 20 List the full name of the staff member with the ID of 2.
SELECT first_name, last_name FROM staff
WHERE staff_id = 2;

-- Question 21 List all the movies that Fred Costner has appeared in.
SELECT f.title, a.actor_id FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
INNER JOIN actor a ON fa.actor_id = a.actor_id
WHERE a.first_name = "fred" AND a.last_name = "costner";

--  Question 22 How many distinct countries are there?
 SELECT * FROM country;

 -- Question 23 List the name of every language in reverse-alphabetical order.
SELECT * FROM film WHERE language_id 
GROUP BY language_id HAVING count(*)>=1 
ORDER BY language_id DESC ;

-- Question 24
SELECT first_name, last_name FROM actor 
WHERE last_name LIKE '%son' ORDER by first_name asc;

-- Question 25 Which category contains the most films?





















