SELECT Hour(StreamDate), COUNT(*) AS N FROM STREAM WHERE Hour(StreamDate)>=0 AND Hour(StreamDate)<=23 GROUP BY Hour(StreamDate) ORDER BY Hour(StreamDate);

