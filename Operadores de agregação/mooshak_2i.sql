SELECT Year(StreamDate) AS Year, Month(StreamDate) AS Month, SUM(Charge) AS N FROM STREAM GROUP BY Year, Month ORDER BY Year, Month;
