-- 8. The genres of movies that Robert De Niro has appeared in that were released in 2010 or later (6 rows)
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
where person_name = 'Robert De Niro' and 
movie.release_date > '12/31/2009';


