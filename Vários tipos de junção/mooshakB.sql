SELECT
COUNTRY, COUNT(CUSTOMER.CustomerId) AS N
FROM STREAM RIGHT OUTER JOIN CUSTOMER
ON
(
    STREAM.CustomerId = CUSTOMER.CustomerId
)
WHERE
StreamId is NULL
GROUP BY Country;