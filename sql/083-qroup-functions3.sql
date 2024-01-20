-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-20
-- File: 083-group-functions3.sql


SELECT MAX(sal) AS 'high',
        MIN(sal) AS 'low'
FROM emp
WHERE deptno = 30 OR deptno = 10;

-- End of file
