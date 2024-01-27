-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-27
-- File: multiple-tables2.sql


SELECT  emp.job
FROM    emp
JOIN    dept ON emp.deptno = dept.deptno
WHERE   LOWER(dept.loc) = 'BOSTON' OR LOWER(dept.loc) = 'NEW YORK'
ORDER BY job ASC
;

-- End of file
