DELETE FROM STREAM 
    WHERE
    Charge <= 5.5
    AND 
    CustomerID IN ( SELECT CustomerId FROM CUSTOMER WHERE 
Country = 'China');
