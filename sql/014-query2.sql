-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 014-query2.sql

SELECT ename
       , (sal/4)
AS 'first quarter'
FROM   emp
;

-- End of file
