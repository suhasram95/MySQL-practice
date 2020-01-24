DROP DATABASE IF EXISTS school;
CREATE DATABASE school;
USE school;

CREATE TABLE students(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100)
);

CREATE TABLE papers(
    title VARCHAR(100),
    grade INT,
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES students(id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT
    first_name,
    title,
    grade
FROM papers
INNER JOIN students ON
papers.student_id=students.id
ORDER BY grade DESC;

SELECT
    first_name,
    IFNULL(title, 'MISSING') AS title,
    IFNULL(grade, 0) AS grade
FROM papers
RIGHT JOIN students ON
papers.student_id=students.id;

SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS average
FROM papers
RIGHT JOIN students ON
papers.student_id=students.id
GROUP BY first_name
ORDER BY average DESC;

SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS average,
    CASE
        WHEN AVG(grade) >= 75 THEN 'PASSING'
        WHEN AVG(grade) IS NULL THEN 'FALIING'
        ELSE 'FAILING'
    END AS passing_status
FROM papers
RIGHT JOIN students ON
papers.student_id=students.id
GROUP BY first_name
ORDER BY average DESC;