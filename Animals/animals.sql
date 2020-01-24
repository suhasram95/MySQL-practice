DROP DATABASE IF EXISTS animals;
CREATE DATABASE animals;
USE animals;

CREATE TABLE cats (
    cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT
);

DESC cats;

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

SELECT * FROM cats;

UPDATE cats SET name = 'Jack'
WHERE name = 'Jackson';

UPDATE cats SET breed = 'British Shorthair'
WHERE name = 'Ringo';

UPDATE cats SET age = 12
WHERE breed = 'Maine Coon';

SELECT * FROM cats;