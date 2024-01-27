-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-20
-- File: 072-functions2.sql


SELECT  ename AS 'Name',
LENGTH(ename) AS 'Characters'
FROM emp
ORDER BY LENGTH(UPPER(ename)) ASC, UPPER(ename) ASC;
;

-- End of file
