-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 041-like1.sql

SELECT ename
FROM emp
WHERE SUBSTR(ename, 3, 1)
LIKE '%a%'
;

-- End of file
