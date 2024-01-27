-- Author: Timo Kemppinen <timo.kemppinen@tuni.fi>
-- Date: 2024-01-27
-- File: create-table3.sql


CREATE TABLE weather (
    id INTEGER PRIMARY KEY NOT NULL,
    time_of_reading VARCHAR(50) NOT NULL,
    high FLOAT NOT NULL,
    low FLOAT NOT NULL,
    "signature" VARCHAR(50),
    comment VARCHAR(50),
);

-- End of file
