-- 7. The genres of movies that Christopher Lloyd has appeared in (8 rows)
-- Hint: DISTINCT will prevent duplicate values in your query results.


select distinct(genre_name) from
person 
join movie_actor
on movie_actor.actor_id = person.person_id
join movie
on  movie.movie_id = movie_actor.movie_id 
join movie_genre
on movie_genre.movie_id = movie.movie_id 
join genre 
on  genre.genre_id = movie_genre.genre_id 
where person_name = 'Christopher Lloyd';
