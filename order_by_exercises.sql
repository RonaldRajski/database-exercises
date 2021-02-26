use employees;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

# Last name with e
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

# Last name with e
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25'
  AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC;



# **********************************************************************






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
   OR first_name = 'Vidya'
ORDER BY first_name DESC, last_name DESC;


SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name ='Maya'
    OR first_name = 'Vidya')
  AND gender ='M';


# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name like '%e'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name like '%e';

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25'
  AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu';