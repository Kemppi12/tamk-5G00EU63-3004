-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 052-case2.sql

SELECT  ename,
CASE
    WHEN deptno = 30 THEN
      CASE
        WHEN comm IS NULL OR comm = 0 THEN 100
        ELSE comm * 1.05
      END
    ELSE comm
  END AS comm
FROM  emp
ORDER BY  ename ASC,  comm ASC
;

-- End of file
