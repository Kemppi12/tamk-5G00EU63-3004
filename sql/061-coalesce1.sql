-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 061-coalesce.sql


SELECT  deptno,
        ename,
COALESCE(comm, 0) AS comm
FROM emp
WHERE deptno = 30
ORDER BY ename ASC, comm ASC
;

-- End of file
