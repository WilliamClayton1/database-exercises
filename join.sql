-- Creates roles tables
CREATE TABLE roles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- Creates users table
CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

-- Inserts data into roles tables
INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

-- Inserts data into users table
INSERT INTO users (name, email, role_id)
VALUES  ('bob', 'bob@example.com', 1),
        ('joe', 'joe@example.com', 2),
        ('sally', 'sally@example.com', 3),
        ('adam', 'adam@example.com', 3),
        ('jane', 'jane@example.com', null),
        ('mike', 'mike@example.com', null),
        ('sarah', 'sarah@example.com', null),
        ('tyler', 'tyler@example.com', 2),
        ('jess', 'jess@example.com', 2),
        ('gerald', 'gerald@example.com', 2);

-- Inner Join
SELECT users.name, roles.name
FROM users
JOIN roles
ON users.role_id = roles.id;

-- Left Join
SELECT users.name, roles.name
FROM users
LEFT JOIN roles
ON users.role_id = roles.id;

-- Right Join
SELECT users.name, roles.name
FROM users
RIGHT JOIN roles
ON users.role_id = roles.id