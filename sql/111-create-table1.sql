-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-27
-- File: create-table1.sql


CREATE TABLE person (
    id INTEGER UNIQUE PRIMARY KEY NOT NULL,
    [last] VARCHAR(50) NOT NULL,
    [first] VARCHAR(50) NOT NULL,
    phone VARCHAR(20) CHECK (phone LIKE '+%'),
    zip VARCHAR(20),
    city VARCHAR(50),
    [address] VARCHAR(255)
);

-- End of file
