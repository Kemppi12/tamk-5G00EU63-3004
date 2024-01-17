-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 051-case1.sql

UPDATE emp
SET job = 'SALES PERSON'
WHERE job = 'SALESMAN';

SELECT ename, job AS 'New Job Name'
FROM emp
ORDER BY job ASC, ename ASC;

-- End of file
