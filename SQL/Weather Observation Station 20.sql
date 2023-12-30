WITH RankedLAT_N AS (
    SELECT
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS RowAsc,
        COUNT(*) OVER () AS TotalRows
    FROM STATION
)
SELECT CAST(
    ROUND(
        AVG(LAT_N),
        4
    ) AS NUMERIC(18, 4)) AS Median_Lat_N
FROM RankedLAT_N
WHERE RowAsc IN ((TotalRows + 1) / 2, (TotalRows + 2) / 2);
