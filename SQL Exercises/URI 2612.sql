SELECT
    movies.id,
    movies.name
FROM
    movies
    INNER JOIN genres ON (genres.id = movies.id_genres)
    INNER JOIN movies_actors ON (movies.id = movies_actors.id_movies)
    INNER JOIN actors ON (actors.id = movies_actors.id_actors)
WHERE (actors.name = 'Marcelo Silva'
    OR actors.name = 'Miguel Silva')
AND genres.description = 'Action'
