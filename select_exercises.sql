USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'Pink FLoyd';

SELECT release_date FROM albums WHERE album = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE album = 'Nevermind';

SELECT * FROM albums WHERE release_date between 1990 and 1999;

SELECT  * FROM albums WHERE sales < 20.0;

SELECT * FROM albums WHERE genre = 'Rock';