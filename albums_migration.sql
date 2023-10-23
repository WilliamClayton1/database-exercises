USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums (
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    album  VARCHAR(50) NOT NULL,
    release_date INT(4) NOT NULL,
    sales DECIMAL(3, 1) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);