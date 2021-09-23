DELETE FROM STREAM
WHERE 
STREAM.Charge <= 7.5
AND 
STREAM.MovieId IN 
(
    SELECT MOVIE.MovieId
    FROM 
    MOVIE 
    WHERE 
    MOVIE.Title LIKE 'Star Wars%'
);