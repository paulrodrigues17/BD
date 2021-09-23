SELECT GENRE.Label, REGION.Name,  COUNT(StreamId)
FROM 
    (REGION JOIN GENRE)
    LEFT OUTER JOIN 
    (
              CUSTOMER
             NATURAL JOIN STREAM
             NATURAL JOIN MOVIE_GENRE
             JOIN COUNTRY ON(CUSTOMER.Country = COUNTRY.Name)
    ) 
    USING(RegionId, GenreId)
    GROUP BY GENRE.Label, REGION.Name
    ORDER BY GENRE.Label, REGION.Name;