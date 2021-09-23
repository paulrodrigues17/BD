SELECT
S2.Name as Supervisor, COUNT(S1.StaffId) as Supervised
FROM STAFF S1
RIGHT OUTER JOIN STAFF S2 
ON 
(
    S1.Supervisor = S2.StaffId
)
GROUP BY Supervisor
ORDER BY Supervised DESC, Supervisor;