use codeup_test_db;
use employees;

SELECT CONCAT('Hello', 'Codeup', '!');
SELECT concat_ws('-', 'Fer','Mendoza','Rodriquez');

SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%';

select now();

select curdate();
SELECT curtime();

SELECT UNIX_TIMESTAMP();

SELECT CONCAT(
    'Teaching people to code for',
    ((((UNIX_TIMESTAMP()-UNIX_TIMESTAMP('2014-02-24'))/60)/60)/24)/365, ' days'
           );