SELECT ROUND(
    CAST(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N), 2) + POWER(MAX(LONG_W) - MIN(LONG_W), 2)) AS NUMERIC(18, 4)),
    4
) AS Euclidean_Distance
FROM STATION;
