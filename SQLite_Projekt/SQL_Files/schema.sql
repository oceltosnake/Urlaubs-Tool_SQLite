-- Tabelle für Mitarbeiter
CREATE TABLE mitarbeiter (
    id INTEGER PRIMARY KEY,
    vorname TEXT NOT NULL,
    nachname TEXT NOT NULL,
    abteilung TEXT
);

-- Tabelle für Urlaubsanträge
CREATE TABLE urlaubsantraege (
    id INTEGER PRIMARY KEY,
    mitarbeiter_id INTEGER,
    startdatum DATE,
    enddatum DATE,
    status TEXT CHECK(status IN ('offen', 'genehmigt', 'abgelehnt')),
    FOREIGN KEY (mitarbeiter_id) REFERENCES mitarbeiter(id)
);
