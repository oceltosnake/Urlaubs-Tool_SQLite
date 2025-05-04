-- Mitarbeiter einfügen
INSERT INTO mitarbeiter (vorname, nachname, abteilung) VALUES
('Anna', 'Schmidt', 'IT'),
('Ben', 'Meier', 'HR'),
('Clara', 'Fischer', 'IT'),
('David', 'Neumann', 'Finance'),
('Eva', 'Berger', 'HR');

-- Urlaubsanträge einfügen
INSERT INTO urlaubsantraege (mitarbeiter_id, startdatum, enddatum, status) VALUES
(1, '2024-07-01', '2024-07-10', 'genehmigt'),
(2, '2024-07-05', '2024-07-15', 'offen'),
(3, '2024-07-08', '2024-07-12', 'genehmigt'),
(4, '2024-08-01', '2024-08-05', 'abgelehnt'),
(5, '2024-07-01', '2024-07-03', 'genehmigt'),
(1, '2024-08-15', '2024-08-20', 'offen'),
(3, '2024-08-10', '2024-08-12', 'genehmigt');
