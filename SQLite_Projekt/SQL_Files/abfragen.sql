-- 1. Alle genehmigten Urlaube im Juli 2024
SELECT m.vorname, m.nachname, u.startdatum, u.enddatum
FROM urlaubsantraege u
JOIN mitarbeiter m ON u.mitarbeiter_id = m.id
WHERE u.status = 'genehmigt'
  AND strftime('%m', u.startdatum) = '07';

-- 2. Mitarbeiter mit offenen Anträgen
SELECT m.vorname || ' ' || m.nachname AS mitarbeiter,
       COUNT(*) AS anzahl_offen
FROM urlaubsantraege u
JOIN mitarbeiter m ON u.mitarbeiter_id = m.id
WHERE u.status = 'offen'
GROUP BY m.id;

-- 3. Anzahl genehmigter Urlaubstage pro Mitarbeiter
SELECT m.vorname || ' ' || m.nachname AS mitarbeiter,
       SUM(julianday(u.enddatum) - julianday(u.startdatum) + 1) AS urlaubstage
FROM urlaubsantraege u
JOIN mitarbeiter m ON u.mitarbeiter_id = m.id
WHERE u.status = 'genehmigt'
GROUP BY m.id;

-- 4. Urlaube mit Status „abgelehnt“
SELECT m.vorname, m.nachname, u.startdatum, u.enddatum, u.status
FROM urlaubsantraege u
JOIN mitarbeiter m ON u.mitarbeiter_id = m.id
WHERE u.status = 'abgelehnt';

-- 5. Konfliktanträge: Urlaube die sich überschneiden
SELECT a.id AS antrag_a, b.id AS antrag_b,
       a.startdatum AS a_start, a.enddatum AS a_ende,
       b.startdatum AS b_start, b.enddatum AS b_ende
FROM urlaubsantraege a
JOIN urlaubsantraege b ON a.id < b.id
WHERE a.status = 'genehmigt'
  AND b.status = 'genehmigt'
  AND a.startdatum <= b.enddatum
  AND a.enddatum >= b.startdatum;

