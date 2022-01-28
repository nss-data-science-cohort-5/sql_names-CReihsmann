SELECT COUNT(*)
FROM names;
--1. 1957046 rows in names table

SELECT SUM(num_registered)
FROM names;
--2. 351653025 registered people

SELECT name, num_registered, year
FROM names
ORDER BY num_registered DESC
limit 5;
--3. Linda in 1947 with 99,689 people registered

SELECT MIN(year), MAX(year)
FROM names;
--4. The range of years is from 1880 to 2018

SELECT year, SUM(num_registered) AS total_registered
FROM names
GROUP BY year
ORDER BY total_registered DESC;
--5. 1957 is the year with the largest number of registrations

SELECT COUNT(DISTINCT name)
FROM names;
--6. There are 98400 distinct names in the dataset

SELECT gender, SUM(num_registered)
FROM names
GROUP BY gender;
--7. There are more males registered

SELECT name, num_registered
FROM names
WHERE gender = 'F'
ORDER BY num_registered DESC
LIMIT 1;

SELECT name, num_registered
FROM names
WHERE gender = 'M'
ORDER BY num_registered DESC
LIMIT 1;
--8. Linda and James

SELECT name, num_registered
FROM names
WHERE gender = 'F' 
AND year BETWEEN 2000 AND 2009
ORDER BY num_registered DESC
LIMIT 1;

SELECT name, num_registered
FROM names
WHERE gender = 'M' 
AND year BETWEEN 2000 AND 2009
ORDER BY num_registered DESC
LIMIT 1;
--9. Emily and Jacob 

SELECT year, COUNT(DISTINCT name) AS numb_names
FROM names
GROUP BY year
ORDER BY numb_names DESC
LIMIT 5;
--10. 2008 was the year with the most variety in names

SELECT name, SUM(num_registered) AS total_registered
FROM names
WHERE gender = 'F' AND name LIKE 'X%'
GROUP BY name
ORDER BY total_registered DESC;
--11. Ximena is the most popular girls name starting with X

SELECT DISTINCT(name)
FROM names
WHERE name LIKE 'Q%'
AND name NOT LIKE 'Qu%';
--12. There are 46 names that start with 'Q' but not followed by 'u'

SELECT name, SUM(num_registered) AS total_registered
FROM names
WHERE name = 'Stephen'
OR name = 'Steven'
GROUP BY name
ORDER BY total_registered DESC;
--13. "Steven" is the more popular spelling

SELECT COUNT(DISTINCT name)
FROM names
GROUP BY name
HAVING COUNT(DISTINCT gender) = 2;

SELECT (10773.0/98400)*100;
--14. 11% of all names are unisex

SELECT name, COUNT(name)
FROM names
GROUP BY name
WHERE count = ;