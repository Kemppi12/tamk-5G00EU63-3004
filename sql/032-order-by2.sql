-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 032-order-by2.sql

SELECT empno,
       ename,
       deptno,
       hiredate
FROM emp
WHERE empno < 7600 OR empno > 7900
ORDER BY empno ASC
;

-- End of file
