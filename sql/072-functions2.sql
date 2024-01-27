-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-20
-- File: 072-functions2.sql


SELECT   LOWER(ename) AS 'Name',
LENGTH(LOWER(ename)) AS 'Characters'
FROM   emp
ORDER BY   Characters ASC,  LOWER(Name) ASC;

-- End of file
