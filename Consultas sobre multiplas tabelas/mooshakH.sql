delete from MOVIE_ACTOR  where ActorId in(select ActorId from ACTOR where Name='Tom Cruise') and MovieId in(select MovieId from MOVIE_GENRE where GenreId in(select GenreId from GENRE where Label='Action'));