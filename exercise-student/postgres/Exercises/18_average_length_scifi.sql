-- 18. The average length of movies in the "Science Fiction" genre. Name the column 'average_length'.
-- (1 row, expected result around 110-120)
select avg(length_minutes) as average_length
from genre
join movie_genre
on movie_genre.genre_id = genre.genre_id
join movie
on movie.movie_id = movie_genre.movie_id
where genre.genre_name = 'Science Fiction';
