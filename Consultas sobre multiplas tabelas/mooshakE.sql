SELECT  ACTOR.Name, COUNT(*) AS N FROM ACTOR, MOVIE_ACTOR, MOVIE WHERE ACTOR.ActorId = MOVIE_ACTOR.ActorId AND MOVIE_ACTOR.MovieId = MOVIE.MovieId GROUP BY ACTOR.Name ORDER BY N DESC, Name LIMIT 20;
