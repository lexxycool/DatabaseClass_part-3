-- 21. For every person in the person table with the first name of "George", list the number of movies they've been in--include all Georges, even those that have not appeared in any movies. Display the names in alphabetical order. (59 rows)
-- Name the count column 'num_of_movies'
select person_name, count(movie.title) as num_of_movies  from
person
left join movie_actor
on movie_actor.actor_id = person.person_id
left join movie
on movie.movie_id = movie_actor.movie_id
where person_name like 'George %'
group by person_id
order by person_name asc; 

select title, genre_name
from movie
join movie_genre
on movie_genre.movie_id = movie.movie_id
join genre
on genre.genre_id = movie_genre.genre_id;

select round(avg(length_minutes)) as average_minutes 
from movie 
join collection
on collection.collection_id = movie.collection_id
order by average_minutes desc
limit 10;


