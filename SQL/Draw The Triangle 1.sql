DECLARE @rowCount INT = 20;

WHILE @rowCount > 0
BEGIN
    DECLARE @pattern NVARCHAR(MAX) = REPLICATE(N'* ', @rowCount);
    PRINT @pattern;
    SET @rowCount = @rowCount - 1;
END;
