SELECT CAST(MAX(LAT_N) AS DECIMAL(18, 4)) AS max_lat
FROM STATION
WHERE LAT_N < 137.2345;
