# SELECT * FROM employees.employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya');

use employees;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');


# Last name with e
SELECT *
FROM employees
WHERE last_name LIKE 'E%';


# hired in the 90's using like
SELECT *
FROM employees
WHERE hire_date LIKE '199%';

# hired in the 90's using between
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

# born on christmas-842
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

# Last name with q in last name
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# Last name with e
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

# Part 2

SELECT *
FROM employees
WHERE first_name = 'Irena'
    OR first_name ='Maya'
    OR first_name = 'Vidya';

SELECT *
FROM employees
WHERE (first_name = 'Irena'
   OR first_name ='Maya'
   OR first_name = 'Vidya')
    AND gender ='M';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name like '%e';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   AND last_name like '%e';

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25'
   AND hire_date like '199%';

SELECT *
FROM employees
    WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu';








