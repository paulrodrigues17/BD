SELECT C.Country, COUNT(C.CustomerId) AS N
FROM CUSTOMER C 
WHERE C.Name LIKE '%y%'
GROUP BY C.Country
HAVING N >= 3 
ORDER BY N DESC, C.Country;