/*count the number of records in the table*/
SELECT COUNT(*) FROM movie_ratings;
SELECT COUNT(*) FROM movie_items;
SELECT COUNT(*) FROM user;

/*maximum age in each occupation*/
SELECT MAX(age), occupation
FROM user
GROUP BY occupation;

SELECT id, title, release_date FROM movie_items
ORDER BY id, release_date, title
LIMIT 10;

/*average age of the users*/
SELECT AVG(age) FROM user; 

SELECT title FROM movie_items
ORDER BY title LIMIT 20, 35;

/*number of users in each occupation*/
SELECT occupation, COUNT(occupation) FROM user
GROUP BY occupation;

/*top rated movies*/
SELECT r.item_id, r.rating, i.title
FROM movie_ratings r INNER JOIN movie_items i ON r.item_id = i.id
ORDER BY r.rating DESC LIMIT 50;

/*average rating of male and female users*/
SELECT AVG(r.rating), u.gender 
FROM movie_ratings r INNER JOIN user u ON r.user_id = u.id
GROUP BY gender;

/*top rated animations*/
SELECT i.id, i.title, r.rating, i.animation
FROM movie_ratings r INNER JOIN movie_items i ON r.item_id = i.id
WHERE animation = 1 and rating = 5
ORDER BY rating DESC LIMIT 50;

/*how many users rated triller*/
SELECT COUNT(DISTINCT(user_id)), thriller
FROM movie_ratings r INNER JOIN movie_items i ON r.item_id = i.id
WHERE thriller = 1; 