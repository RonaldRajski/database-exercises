use employees;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%e'
ORDER BY last_name DESC , first_name ASC;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY last_name DESC , first_name ASC, hire_date DESC;
