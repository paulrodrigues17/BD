SELECT * 
FROM MOVIE
WHERE Year >=2000
GROUP BY Title, Year, Duration
ORDER BY Duration DESC, Year DESC, Title
LIMIT 15;