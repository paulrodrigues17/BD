SELECT Title, COUNT(StreamId) AS N, Sum(Charge) AS Soma
FROM MOVIE 
JOIN MOVIE_GENRE USING (MovieId) 
JOIN GENRE G USING (GenreId)
JOIN STREAM USING (MovieId)
WHERE G.Label = 'Action' 
GROUP BY Title 
ORDER BY N DESC, Title
LIMIT 20;