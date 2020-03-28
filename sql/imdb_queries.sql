1)SELECT name FROM movies 
WHERE year = '1995'



2)SELECT COUNT(actor_id) FROM actors a 
JOIN roles r ON a.id = r.actor_id 
JOIN movies m ON r.movie_id = m.id 
WHERE m.name = 'Lost in Translation'


3)SELECT first_name, last_name FROM actors a 
JOIN roles r ON a.id = r.actor_id 
JOIN movies m ON r.movie_id = m.id 
WHERE m.name = 'Lost in Translation'


4)SELECT d.first_name, d.last_name FROM directors d
JOIN movies_directors md ON md.director_id = d.id
JOIN movies m ON m.id = md.movie_id
WHERE m.name = 'FIGHT CLUB'


5)SELECT COUNT(md.movie_id) FROM movies_directors md 
JOIN directors d ON d.id = md.director_id 
WHERE d.last_name = 'Eastwood'


6)SELECT m.name FROM movies m
JOIN movies_directors md ON md.movie_id = m.id
JOIN directors d ON d.id = md.director_id
WHERE d.last_name = 'Eastwood'


7)SELECT d.first_name, d.last_name FROM directors d
JOIN movies_directors md ON md.director_id = d.id
JOIN movies_genres mg ON mg.movie_id = md.movie_id
WHERE mg.genre = 'Horror'


8)SELECT DISTINCT a.first_name, a.last_name FROM actors a
JOIN roles r ON a.id = r.actor_id
JOIN movies m ON r.movie_id = m.id
JOIN movies_directors md ON m.id = md.movie_id
JOIN directors d ON md.director_id = d.id
WHERE d.first_name = 'Christopher' AND d.last_name = 'Nolan';




