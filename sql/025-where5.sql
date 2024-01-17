-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-17-01
-- File: 025-where5.sql

SELECT ename, deptno
FROM   emp
WHERE  ( deptno = 10 OR deptno = 30 )
;

-- End of file
