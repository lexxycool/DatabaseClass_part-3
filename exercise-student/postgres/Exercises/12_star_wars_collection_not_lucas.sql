-- 12. The titles of the movies in the "Star Wars Collection" that weren't directed by George Lucas (5 rows)
select title
from collection
join movie
on collection.collection_id = movie.collection_id
join person
on person.person_id = movie.director_id
where collection_name = 'Star Wars Collection'
and person_name != 'George Lucas';


