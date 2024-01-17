-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 029-where9.sql

SELECT ename
        ,job
FROM   emp
WHERE  mgr IS NULL
;

-- End of file
