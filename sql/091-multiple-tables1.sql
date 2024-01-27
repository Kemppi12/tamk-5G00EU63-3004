-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-27
-- File: multiple-tables1.sql


SELECT  emp.ename,
        emp.deptno,
        dept.dname
FROM    emp
JOIN    dept ON emp.deptno = dept.deptno
WHERE   LOWER(dept.loc) = 'DALLAS' OR LOWER(emp.job) = 'SALESMAN'
ORDER BY ename ASC
;

-- End of file
