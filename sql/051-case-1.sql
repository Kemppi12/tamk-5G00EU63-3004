-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 051-case1.sql

SELECT  ename,
        CASE
            WHEN UPPER(job) = 'SALESMAN' THEN 'SALES PERSON'
            ELSE job
        END AS 'New Job Name'
FROM emp
ORDER BY job ASC, ename ASC;

-- End of file
