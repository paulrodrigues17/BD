DELETE FROM STREAM
WHERE CustomerId IN 
(
    SELECT CustomerId
    FROM CUSTOMER C
    WHERE 
    C.Country = 'India'
    AND 
    C.Active = False
);
