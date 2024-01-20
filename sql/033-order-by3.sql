-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 033-order-by3.sql

SELECT deptno
        AS 'Dept',
        ename
        AS 'Employee',
        sal * 0.31 * 12
        AS Taxes
FROM emp
WHERE deptno = 10
ORDER BY deptno ASC,
ename ASC
;

-- End of file
