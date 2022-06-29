USE world;

-- Q1 Using COUNT, get the number of cities in the USA.
SELECT COUNT(ct.id) FROM city ct
 INNER JOIN country co ON ct.countrycode = co.code
WHERE ct.countrycode = 'USA';

-- Q2 Find out the population and life expectancy for people in Argentina.
SELECT Population, LifeExpectancy FROM country
WHERE name  = 'Argentina';

-- Q3 Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?
SELECT * FROM country;
SELECT Name, LifeExpectancy FROM country
ORDER BY LifeExpectancy DESC LIMIT 1;

-- Q4 Using JOIN ... ON, find the capital city of Spain.
SELECT ct.name FROM city ct
INNER JOIN country co ON ct.id = co.capital
WHERE co.name ="spain"; 

-- Q6 Using a single query, list 25 cities around the world that start with the letter F.
SELECT NAME FROM city WHERE NAME LIKE 'f%' 
ORDER BY NAME ASC LIMIT 25 ;

-- Q7 Using COUNT and JOIN ... ON, get the number of cities in China.
SELECT COUNT(ct.name) FROM city ct
 INNER JOIN country co ON ct.countrycode = co.code
WHERE co.code = "CHN";

-- Q8 Using COUNT and JOIN ... ON, get the number of cities in China.
SELECT `Name`, Population FROM country
HAVING Population IS NOT NULL AND Population != 0
ORDER BY Population ASC LIMIT 1;

-- Q9 Using aggregate functions, return the number of countries the database contains.
SELECT COUNT(Code) FROM country ;

-- Q10 What are the top ten largest countries by area?
SELECT * FROM country ;

-- Q11 List the five largest cities by population in Japan.
SELECT * FROM city
WHERE Name = 'Japan' ;

-- Q12 List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!


-- Q14 List every unique world language.
SELECT * FROM countrylanguage
WHERE UNIQUE(Language) countrylanguage ;




