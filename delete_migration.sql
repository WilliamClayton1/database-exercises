use fenrir;

select album from albums where release_date > 1991;
delete from albums where release_date > 1991;

select album from albums where genre = 'Disco';
delete from albums where genre = 'Disco';

select album from albums where artist = 'Whitney Houston';
delete from albums where artist = 'Whitney Houston';