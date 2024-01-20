-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 024-where4.sql

SELECT ename, job, hiredate
FROM   emp
WHERE  hiredate >= '1981-02-20' AND hiredate <= '1981-05-01'
;

-- End of file
