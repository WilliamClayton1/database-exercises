USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'Pink FLoyd';

SELECT release_date FROM albums WHERE album = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE album = 'Nevermind';

SELECT * FROM albums WHERE release_date >= 1990 and release_date < 2000;

SELECT  * FROM albums WHERE sales < 20.0;

SELECT * FROM albums WHERE genre = 'Rock';