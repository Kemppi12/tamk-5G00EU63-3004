-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 052-case2.sql

SELECT   ename,
  CASE
    WHEN deptno = 30 THEN COALESCE(comm * 1.05, 100)
    ELSE comm
  END AS comm
FROM
  emp
ORDER BY
  ename ASC, comm ASC;

-- End of file
