-- Selecting the title of the book which has
-- 'stories' keyword in it
SELECT title FROM books
WHERE title LIKE '%stories%';

SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

SELECT CONCAT(title,' - ', released_year) AS summary FROM books
ORDER BY released_year DESC LIMIT 3;

SELECT title, author_lname FROM books
WHERE author_lname LIKE '% %';

SELECT title, released_year, stock_quantity FROM books
ORDER BY stock_quantity LIMIT 3;

SELECT title, author_lname FROM books
ORDER BY author_lname, title;

SELECT UPPER(CONCAT('MY FAVORITE AUTHOR IS ',author_fname, ' ',author_lname,'!')) AS 'yell' FROM books
ORDER BY author_lname;

/*
    Selecting the distinct author_fnames
*/
SELECT COUNT(DISTINCT author_fname) AS "Distinct First names" FROM books;

-- selecting distinct author names
SELECT author_lname,title, COUNT(*) FROM books
GROUP BY author_lname;

SELECT author_fname, author_lname, MIN(released_year) FROM books
GROUP BY author_fname, author_lname;

SELECT released_year, AVG(stock_quantity) FROM books
GROUP BY released_year
ORDER BY released_year DESC;

SELECT author_fname, author_lname, AVG(pages) AS 'avg' FROM books
GROUP BY author_fname, author_lname;

SELECT released_year, COUNT(*), AVG(pages) FROM books
GROUP BY released_year;

-- Solutions for Exercises of Logical Operators

SELECT * FROM books
WHERE released_year < 1980;

SELECT * FROM books
WHERE author_lname IN ('Eggers', 'Chabon');

SELECT * FROM books
WHERE author_lname='Lahiri' AND released_year>2000;

SELECT * FROM books
WHERE pages BETWEEN 100 AND 200;

SELECT * FROM books
WHERE pages>=100 AND pages<=200;

SELECT * FROM books
WHERE author_lname LIKE'C%' OR author_lname LIKE 'S%';

SELECT title, author_lname,
    CASE
        WHEN title LIKE '%Stories%' THEN 'Short Stories'
        WHEN title LIKE '%Just Kids%' OR '%A Heartbreaking Work%' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;

SELECT author_fname, author_lname,
    CASE
        WHEN COUNT(*)=1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books
GROUP BY author_lname, author_fname;