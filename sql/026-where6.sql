-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-17-01
-- File: 026-where6.sql

SELECT ename
        AS 'Employee'
        ,sal AS 'Monthly Salary'
FROM   emp
WHERE  ( sal > 1500
        AND ( deptno = 10 OR deptno = 30  ))
;

-- End of file
