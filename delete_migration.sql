use fenrir;

select artist from albums where release_date > 1991;
delete from albums where release_date > 1991;

select artist from albums where genre = 'Disco';
delete from albums where genre = 'Disco';

select artist from albums where artist = 'Whitney Houston';
delete from albums where artist = 'Whitney Houston';