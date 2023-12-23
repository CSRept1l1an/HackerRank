-- Query for the city with the longest name
SELECT TOP 1 CITY AS c, LEN(CITY) AS l
FROM STATION
ORDER BY l DESC, c ASC;

-- Query for the city with the shortest name
SELECT TOP 1 CITY AS c, LEN(CITY) AS l
FROM STATION
ORDER BY l ASC, c ASC;
