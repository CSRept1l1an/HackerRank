SELECT CAST(ROUND(LONG_W, 4) AS DECIMAL(18, 4))
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.778);
