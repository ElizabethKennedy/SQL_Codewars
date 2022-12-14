/* #1: This is my solution to the Codewars 8 kayu kata titled "Adults only: SQL for Beginners #1" */

SELECT Name, Age FROM Users WHERE age >= 18


/* #2: This is my solution to the Codewars 8 kayu kata titled "Multiply" -- the SQL version */


/*SELECT price + amount AS total FROM items*/


SELECT (price::float * amount::float)
AS total
FROM items;


/*Opposite Number*/
SELECT -number AS res FROM Opposite;





/* #3: This is my solution to the Codewars 8 kayu kata titled "Easy SQL -- Ordering"*/

SELECT * FROM companies ORDER BY employees DESC


/* #4: This is my solution to the Codewars 8 kayu kata titled "Collect Tuition -- SQL for Beginners #4 "*/

SELECT *
FROM students
WHERE tuition_received = false;


/* #5: This is my solution to the Codewars 8 kayu kata titled "On the Canadian Border -- SQL for Beginners #2"*/

SELECT *
FROM travelers
WHERE country <> 'Canada' AND country <> 'Mexico' AND country <> 'US'




/* #6: This is my solution to the Codewars 7 kayu kata titled "Countries Capitals for Trivia Night -- SQL for Beginners #6"*/

SELECT capital
FROM countries
WHERE (country LIKE 'E%') AND (continent LIKE 'Afri%')
ORDER BY capital ASC
LIMIT 3

/* #7: This is my solution to the Codewars 8 kayu kata titled "Century from Year"*/


SELECT CEILING(yr/100.00) AS Century
FROM years



/* #8: This is my solution to the Codewars 8 kayu kata titled "SQL Basics: Simple Min/Max" */

SELECT
      MIN(age) AS age_min,
      MAX(age) AS age_max
FROM
    people

/* #9: This is my solution to the Codewars 8 kayu kata titled "Easy SQL: Rounding Decimals" */


SELECT
  FLOOR(number1) AS number1,
  CEIL(number2) AS number2
FROM
  decimals

/* Is n divisible by x and y? */


SELECT Id,
CASE
  WHEN n % x = 0 AND n % y = 0 THEN true
  ELSE false
END
AS res FROM kata;

  /* #10 Here's a little something extra, the original inspiration for my Hogwarts Sorting Hat app idea, my solution to
  the Codewars 7 kayu kata titled "SQL with Harry Potter: Sorting Hat Comparators"

/* Oh you may not think I'm pretty,
But don't judge on what you see,
I'll eat myself if you can find
A smarter hat than me. */

SELECT s.id, s.name, s.quality1, s.quality2
from students as s
WHERE (s.quality1 = 'evil' AND s.quality2 = 'cunning') -- Slytherin
      OR (s.quality1 = 'brave' AND s.quality2 != 'evil') -- Gryfindor
      OR (s.quality1 = 'studious' OR s.quality2 = 'intelligent') -- Ravenclaw
      OR (s.quality1 = 'hufflepuff' OR s.quality2 = 'hufflepuff') -- Hufflepuff
ORDER BY s.id ASC
