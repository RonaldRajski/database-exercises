use codeup_test_db;

# SELECT * FROM albums WHERE release_date <2000;
#
# SELECT * FROM albums WHERE genre LIKE '%rock%';
#
# SELECT * FROM albums WHERE genre LIKE 'rock%';
# # Rock first word followed by following word
#
# SELECT * FROM albums WHERE genre LIKE '%rock';
#
# SELECT * FROM albums WHERE release_date LIKE '198%';

SELECT * FROM albums WHERE sales BETWEEN 20.0  AND 35.0;

SELECT * FROM albums WHERE release_date LIKE '198%'AND 35.0 AND sales BETWEEN 20.5 and 35.0;

SELECT * FROM albums WHERE artist IN ('Michael Jackson', 'Eagles', 'Whitney Houston');

# use employees;
# SELECT emp_no, title
# FROM titles,





