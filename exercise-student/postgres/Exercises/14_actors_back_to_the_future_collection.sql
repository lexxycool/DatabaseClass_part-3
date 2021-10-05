-- 14. The names of actors who've appeared in the movies in the "Back to the Future Collection" (28 rows)
select distinct(person_name) from
collection
join movie
on movie.collection_id = collection.collection_id
join movie_actor
on movie_actor.movie_id = movie.movie_id
join person
on person_id = movie_actor.actor_id
where collection.collection_name = 'Back to the Future Collection';
