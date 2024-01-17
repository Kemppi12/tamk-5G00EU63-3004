-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 052-case2.sql

UPDATE emp
SET comm = comm * 1.05
WHERE deptno = 30
;

UPDATE emp
SET comm = 100
WHERE comm IS NULL
AND deptno = 30
;

SELECT ename, comm
FROM emp
ORDER BY ename ASC, comm ASC;

-- End of file
