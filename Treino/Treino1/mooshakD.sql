SELECT 
C.Name, C.Country, C.City 
FROM CUSTOMER C
JOIN COUNTRY CO JOIN REGION R ON 
(
    CO.Name = C.Country
    AND
    R.RegionId = CO.RegionId 
    AND
    R.Name = 'Africa'
);