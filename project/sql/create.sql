DROP TABLE IF EXISTS joukkueet;
CREATE TABLE IF NOT EXISTS joukkueet (
    id INTEGER PRIMARY KEY,
    nimi VARCHAR(60) NOT NULL,
    Ottelut INT,
    Voitot INT,
    Tasapelit INT,
    Tappiot INT,
    Lisäpisteet INT,
    Pisteet INT
);
