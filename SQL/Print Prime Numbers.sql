DECLARE @n INT = 2;
DECLARE @max INT = 1000;
DECLARE @isPrime BIT;
DECLARE @result NVARCHAR(MAX) = '';

WHILE @n <= @max
BEGIN
    SET @isPrime = 1;

    IF @n > 1
    BEGIN
        DECLARE @i INT = 2;
        WHILE @i <= SQRT(@n)
        BEGIN
            IF @n % @i = 0
            BEGIN
                SET @isPrime = 0;
                BREAK;
            END
            SET @i = @i + 1;
        END
    END

    IF @isPrime = 1
    BEGIN
        IF @result = ''
            SET @result = CAST(@n AS NVARCHAR(MAX))
        ELSE
            SET @result = @result + '&' + CAST(@n AS NVARCHAR(MAX))
    END

    SET @n = @n + 1;
END;
