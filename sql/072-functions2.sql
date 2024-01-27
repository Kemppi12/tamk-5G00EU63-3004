-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-20
-- File: 072-functions2.sql


SELECT ename AS 'Name',
LENGTH(LOWER(ename)) AS 'Characters'
FROM emp
ORDER BY LENGTH(LOWER(ename)) ASC, LOWER(ename) ASC;
;

-- End of file
