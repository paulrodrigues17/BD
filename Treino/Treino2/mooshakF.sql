SELECT M.Title, Count(M.Title) AS T, Max(S.Charge) AS N
FROM MOVIE M JOIN STREAM S USING ( MovieId )
JOIN MOVIE_ACTOR MA USING ( MovieId )
JOIN ACTOR A ON ( MA.ActorId = A.ActorId )
WHERE
A.Name = 'Brad Pitt'
GROUP BY M.Title
HAVING T > 5
ORDER BY T DESC, M.Title;