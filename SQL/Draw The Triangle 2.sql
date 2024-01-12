DECLARE @rowCount INT = 1;

WHILE @rowCount < 21
BEGIN
    DECLARE @pattern NVARCHAR(MAX) = REPLICATE(N'* ', @rowCount);
    PRINT @pattern;
    SET @rowCount = @rowCount + 1;
END;
