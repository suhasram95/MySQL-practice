-- Challenge 1
-- Finding 5 old users
SELECT username FROM users
ORDER BY created_at 
LIMIT 5;

-- Challenge 2
-- Most popular registration date

SELECT
    DAYNAME(created_at) AS day,
    COUNT(*) as total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

-- Challenge 3
-- Identify users with no photos
SELECT 
    users.id,
    photos.image_url
FROM photos
RIGHT JOIN users ON
photos.user_id=users.id
WHERE photos.id IS NULL
ORDER BY users.id;

-- Challenge 4
-- Identify most popular photo and user who created it

SELECT
    photos.id,
    photos.image_url,
    users.username,
    COUNT(*) AS total
FROM photos
INNER JOIN likes ON
likes.photo_id=photos.id
INNER JOIN users ON
photos.user_id=users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- Challenge 5
-- Calculate average number of photos per user

SELECT
    (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS average;

-- Challenge 6
-- Five most popular tags

SELECT tags.id, tags.tag_name, COUNT(*) as total FROM tags
INNER JOIN photo_tags ON
tags.id=photo_tags.tag_id
GROUP BY photo_tags.tag_id
ORDER BY total DESC
LIMIT 5;

-- Challenge 7
-- Finding bots - users who have liked every single photo

SELECT
    username,
    COUNT(*) AS num_likes
FROM users
INNER JOIN likes ON
users.id=likes.user_id
GROUP BY likes.user_id
HAVING num_likes=(SELECT COUNT(*) FROM photos);