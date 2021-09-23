SELECT Name, MAX(Charge) FROM CUSTOMER, STREAM WHERE CUSTOMER.CustomerId = STREAM.CustomerId AND CUSTOMER.Country = 'United States' AND YEAR(StreamDate) = 2018 GROUP BY Name ORDER BY MAX(Charge) DESC, Name;