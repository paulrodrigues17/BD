SELECT
DISTINCT
Year(StreamDate), COUNT(Year(StreamDate)), SUM(Charge)
FROM STREAM
GROUP BY Year(StreamDate);