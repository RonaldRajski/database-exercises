use employees;

# limit allows us to return a certain amount of results

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
ORDER BY last_name, first_name
LIMIT 15;

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY last_name, first_name
LIMIT 15 OFFSET 250;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY last_name, first_name;
