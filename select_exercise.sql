USE codeup_test_db;

-- In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:
-- The name of all albums by Pink Floyd.
SELECT name AS 'The name of all albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
-- The genre for Nevermind
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums in the rock genre. Is this all the rock albums in the table?

