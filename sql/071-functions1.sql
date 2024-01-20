-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-20
-- File: 071-functions1.sql

SELECT  LOWER(ename) AS 'Name',
        LOWER(job) AS 'Job',
        sal AS 'Salary'
FROM    emp
ORDER BY ename ASC, job ASC;

-- End of file
