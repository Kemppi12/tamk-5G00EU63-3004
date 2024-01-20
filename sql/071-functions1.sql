-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 052-case2.sql

SELECT  LOWER(ename) AS 'Name',
        LOWER(job) AS 'Job',
        sal AS 'Salary'
FROM    emp
ORDER BY ename ASC, job ASC;

-- End of file
