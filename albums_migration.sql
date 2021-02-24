CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
--                         id — auto-incrementing unsigned integer primary key
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--                          artist — string for storing the recording artist name
                        artist VARCHAR(50) DEFAULT 'NONE',
--                         name — string for storing a record name
                        name VARCHAR(100) NOT NULL,
--                         release_date — integer representing year record was released
                        release_date INT NOT NULL,
--                         sales — floating point value for number of records sold (in millions)
                        sales FLOAT NOT NULL,
--                         genre — string for storing the record's genre(s)
                        genre VARCHAR (50),
                        PRIMARY KEY (id)
-- );