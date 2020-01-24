DROP DATABASE IF EXISTS community;
CREATE DATABASE community;
USE community;

CREATE TABLE people(first_name VARCHAR(50), last_name VARCHAR(50), age INT);

INSERT INTO people(first_name, last_name, age) VALUES
('Tina', 'Belcher', 13),
('Bob', 'Belcher', 42),
('Linda', 'Belcher', 45),
('Philip', 'Frond', 38),
('Calvin', 'Fischoeder', 70);

CREATE TABLE cats(
name VARCHAR(50) NOT NULL,
age INT NOT NULL);

DESC cats;

CREATE TABLE cats2
	(
		name VARCHAR(20) DEFAULT 'no name provided',
		age INT DEFAULT 99
	);
DESC cats2;
INSERT INTO cats2(age) VALUES (13);
SELECT * FROM cats2;

CREATE TABLE cats3
	(
		name VARCHAR(20) NOT NULL DEFAULT 'no name provided',
		age INT NOT NULL DEFAULT 99
	);
DESC cats3;

