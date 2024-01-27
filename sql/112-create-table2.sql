-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-27
-- File: create-table2.sql


CREATE TABLE football (
    id INTEGER PRIMARY KEY NOT NULL,
    [first] VARCHAR(50) NOT NULL,
    [last] VARCHAR(50) NOT NULL,
    team VARCHAR(50),
    comment VARCHAR(255),
);

-- End of file
