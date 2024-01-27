-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-27
-- File: multiple-tables4.sql


SELECT  emp.ename,
        dept.dname
FROM    emp
JOIN    dept ON emp.deptno = dept.deptno
WHERE   emp.ename LIKE '%a%'
AND emp.sal > 1100 AND emp.sal <= 2200
ORDER BY emp.ename ASC
;

-- End of file
