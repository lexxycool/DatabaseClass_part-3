-- 1. The titles and release dates of movies that Tom Hanks has appeared in (47 rows)
select title, release_date 
from person
join 
movie_actor on person.person_id = movie_actor.actor_id
join
movie on movie.movie_id = movie_actor.movie_id
where person.person_name='Tom Hanks';



