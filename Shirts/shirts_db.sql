DROP DATABASE IF EXISTS shirts_db;
CREATE DATABASE shirts_db;
USE shirts_db;

CREATE TABLE shirts
    (
        shirt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        article VARCHAR(50),
        color VARCHAR(50),
        shirts_size VARCHAR(10),
        last_worn INT
    );
    
DESC shirts;

INSERT INTO shirts(article, color, shirts_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

INSERT INTO shirts(color, article, shirts_size, last_worn) VALUES
('purple', 'polo shirt', 'M', 50);

SELECT * FROM shirts;

SELECT article, color FROM shirts;

SELECT article, color, shirts_size, last_worn FROM shirts
WHERE shirts_size = 'M';

UPDATE shirts SET shirts_size = 'L'
WHERE article = 'polo shirt';

SELECT * FROM shirts;

UPDATE shirts SET last_worn=0 WHERE last_worn=15;
 
SELECT * FROM shirts WHERE last_worn=15;
 
SELECT * FROM shirts WHERE last_worn=0;

UPDATE shirts SET shirts_size = 'XS', color = 'off white'
WHERE color = 'white';

SELECT * FROM shirts;

DELETE FROM shirts 
WHERE last_worn=200;

SELECT * FROM shirts;

DELETE FROM shirts
WHERE article='tank top';

SELECT * FROM shirts;

DELETE FROM shirts;

DROP TABLE shirts;

SHOW TABLES;