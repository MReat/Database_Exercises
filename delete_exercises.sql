USE codeup_test_db;

-- Write SELECT statements for:
-- Make sure to put appropriate captions before each SELECT.
-- Albums released after 1991
SELECT name AS 'Albums released after 1991' FROM albums WHERE release_date > 1991;
-- Albums with the genre "disco"
SELECT name AS 'Albums with the genre of disco' FROM albums WHERE genre LIKE 'disco';
-- Albums by "Whitney Houston" (...or maybe an artist of your choice)
SELECT name AS 'Albums by Whitney Houston' FROM albums WHERE artist LIKE 'Whitney Houston';
-- Convert the SELECT statements to DELETE.
DELETE name AS 'Albums released after 1991' FROM albums WHERE release_date > 1991;
-- Albums with the genre "disco"
DELETE name AS 'Albums with the genre of disco' FROM albums WHERE genre LIKE 'disco';
-- Albums by "Whitney Houston" (...or maybe an artist of your choice)
DELETE name AS 'Albums by Whitney Houston' FROM albums WHERE artist LIKE 'Whitney Houston';

-- Use the MySQL command line client to make sure your records really were removed.
-- Commit your changes after each step and push to GitHub.