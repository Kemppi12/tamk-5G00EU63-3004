-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 027-where7.sql

SELECT ename
        ,job
        ,sal
FROM   emp
WHERE  (( job = 'CLERK'
        OR job = 'ANALYST')
        AND (sal <> 1000
        OR sal <> 1500))
;

-- End of file
