-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-27
-- File: multiple-tables5.sql


SELECT  emp.ename,
        emp.job,
        emp.deptno,
        dept.dname
FROM    emp
JOIN    dept ON emp.deptno = dept.deptno
WHERE   UPPER(emp.job) = 'ACCOUNTING' AND emp.sal > 1000
AND     UPPER(emp.job) = 'SALES' AND emp.sal > 1000
AND     UPPER(emp.job) = 'operations' AND emp.sal > 1000

ORDER BY emp.ename ASC
;

-- End of file
