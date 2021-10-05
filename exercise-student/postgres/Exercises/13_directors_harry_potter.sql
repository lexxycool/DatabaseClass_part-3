-- 13. The directors of the movies in the "Harry Potter Collection" (4 rows)
select distinct(person_name) from 
collection 
join movie
on movie.collection_id = collection.collection_id
join person
on person_id = movie.director_id
where collection_name = 'Harry Potter Collection';
