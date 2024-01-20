-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-17
-- File: 015-query3.sql

SELECT job
FROM   emp
GROUP BY  job
HAVING COUNT (*) = 1
ORDER BY job ASC;
;

-- End of file
