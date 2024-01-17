-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 023-where3.sql

SELECT ename, sal
FROM   emp
WHERE  (sal < 1500 OR sal > 2850)
;

-- End of file
