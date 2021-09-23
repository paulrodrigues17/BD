SELECT 
StreamId, MovieId, CustomerId, StreamDate, Charge
FROM 
STREAM
WHERE 
Charge > 6
GROUP BY StreamId, MovieId, CustomerId, StreamDate, Charge
ORDER BY StreamDate DESC
LIMIT 20;