-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-27
-- File: create-table1.sql


CREATE TABLE person (
    id INTEGER PRIMARY KEY NOT NULL,
    last_name AS 'last' VARCHAR(50) NOT NULL,
    first_name AS 'first' VARCHAR(50) NOT NULL,
    phone VARCHAR(20) CHECK (phone LIKE '+%'),
    zip VARCHAR(10),
    city VARCHAR(50),
    street_address AS 'address' VARCHAR(255)
);

-- End of file
