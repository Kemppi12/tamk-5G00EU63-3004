-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 034-order-by4.sql

SELECT ename AS 'Employee',
       sal AS 'Monthly Salary',
       sal * 1.10 AS 'Sal 10%',
       comm AS 'Comm'
FROM emp
WHERE comm > sal * 1.10
ORDER BY ename ASC, sal ASC, comm ASC;

-- End of file
