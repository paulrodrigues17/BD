SELECT
S2.Name AS Person, COUNT(S1.ActorId) AS N
FROM MOVIE_ACTOR S1
RIGHT OUTER JOIN ACTOR S2
ON
(
    S1.ActorId = S2.ActorId
)
GROUP BY Person
HAVING N >= 15
ORDER BY N DESC, Person;