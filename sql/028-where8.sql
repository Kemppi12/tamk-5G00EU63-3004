-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 028-where8.sql

SELECT ename
        ,sal
        ,comm
FROM   emp
WHERE  comm IS NOT NULL
;

-- End of file
