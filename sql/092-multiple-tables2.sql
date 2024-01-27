-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-27
-- File: multiple-tables2.sql


SELECT  emp.job
FROM    emp
JOIN    dept ON emp.deptno = dept.deptno
WHERE   dept.loc = 'BOSTON' OR dept.loc = 'NEW YORK'
ORDER BY job ASC
;

-- End of file
