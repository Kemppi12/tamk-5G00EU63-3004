-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-16-01
-- File: 012-correct-sql-statement.sql

SELECT empno
       , sal * 12
         AS "ANNUAL SALARY"
       , ename
FROM emp
;

-- End of file
