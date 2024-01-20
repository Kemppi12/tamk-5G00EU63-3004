-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 012-correct-sql-statement.sql

SELECT empno,
        ename,
        ,sal * 12
        AS "ANNUAL SALARY"
FROM emp
;

-- End of file
