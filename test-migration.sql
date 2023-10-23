-- switch to db
use codeup_test_db;

-- deletes table if it exists
drop table if exists quotes;

-- creates a new table with
CREATE TABLE quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_first_name VARCHAR(50),
    author_last_name  VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    PRIMARY KEY (id)
);

