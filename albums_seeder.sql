USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Pink Floyd', 'The Dark Side of the Moon', '1973', '22.7', 'Progressive rock'),
('Michael Jackson', 'Thriller', '1982', '42.4', 'Pop, rock, R&B'),
('Whitney Houston', 'The Bodyguard', '1992', '27.2', 'Soundtrack, R&B, soul, pop'),
('Meat Loaf', 'Bat Out of Hell', '1977', '20.6', 'Hard rock, progressive rock'),
('Eagles', 'Their Greatest Hits(1971-1975)', '1976', '32.2', 'Rock, soft rock, folk rock'),
('AC/DC', 'Back in Black', '1980', '25.9' ,'Hard rock'),
('Bee Gees', 'Saturday Night Fever', '1977', '19', 'Disco'),
('Fleetwood Mac', 'Rumors', '1977', '27.9', 'Soft rock');
