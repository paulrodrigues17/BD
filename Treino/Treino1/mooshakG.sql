UPDATE ACTOR A
JOIN MOVIE_ACTOR USING ( ActorId )
JOIN STREAM USING ( MovieId )
JOIN CUSTOMER USING( CustomerId )
JOIN COUNTRY ON ( CUSTOMER.Country = COUNTRY.Name )
JOIN REGION R USING( RegionId ) 
SET Charge = Charge + 1.5 
WHERE 
A.Name = 'Denzel Washington'
AND 
R.Name = 'Europe';