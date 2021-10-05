-- 16. The names and birthdays of actors born in the 1950s who acted in movies that were released in 1985 (20 rows)
select distinct person_name, birthday
from person
join movie_actor
on movie_actor.actor_id = person.person_id
join movie 
on movie.movie_id = movie_actor.movie_id
where birthday between '01/01/1950' and '12/31/1959'
and movie.release_date between '01/01/1985' and '12/31/1985';
