-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-27
-- File: multiple-tables3.sql


SELECT  emp.ename,
        dept.dname,
        dept.loc
FROM    emp
JOIN    dept ON emp.deptno = dept.deptno
WHERE   emp.comm IS NOT NULL OR emp.comm > 0
ORDER BY ename ASC
;

-- End of file
