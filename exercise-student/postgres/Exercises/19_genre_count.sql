-- 19. The genre name and the number of movies in each genre. Name the count column 'num_of_movies'. 
-- (19 rows, expected result for Action is around 180).
select genre_name,count(genre_name) as num_of_movies 
from genre
join movie_genre
on movie_genre.genre_id = genre.genre_id
join movie 
on movie.movie_id = movie_genre.movie_id
group by genre.genre_name;
