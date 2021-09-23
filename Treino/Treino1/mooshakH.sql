SELECT DISTINCT
M.Title 
FROM MOVIE M
WHERE 
M.MovieId NOT IN 
(
    SELECT MovieId
    FROM STREAM S
    WHERE CustomerId IN 
    (
        SELECT CustomerId 
        FROM CUSTOMER C JOIN COUNTRY CO ON (C.Country = CO.Name) 
        WHERE 
        CO.RegionId IN 
        (
            SELECT RegionId 
            FROM REGION R 
            WHERE Name = 'Asia'
        )
    ) 
) 
AND M.Duration >= 140
ORDER BY M.Title;