# Urlaubs-Tool_SQLite
**1. Use-Case**

Dieses Projekt dient der Verwaltung von Urlaubsanträgen für ein fiktives Unternehmen. Es umfasst zwei Tabellen:

1.	mitarbeiter – speichert die Informationen zu den Mitarbeitern

2.	urlaubsantraege – speichert die Urlaubsanträge der Mitarbeiter, inklusive Status und Zeiträume.

Ziel:

Die Abfragen im Projekt sollen dazu dienen, typische Datenbankoperationen auszuführen, die in einer Urlaubsverwaltung nützlich wären. Dazu gehören das Abrufen von genehmigten Urlaubsanträgen, das Prüfen von Konflikten zwischen Urlaubsanträgen und das Berechnen der Urlaubstage.

**2. Technologien und Tools**

•	SQL (SQLite): Die Datenbank wurde mit SQLite erstellt, einer leichtgewichtigen und portablen relationalen Datenbank.

•	PyCharm: Für die Erstellung der SQL-Skripte und die Ausführung wurde PyCharm als IDE verwendet. Alternativ kann das SQL-Projekt auch in jeder anderen SQL-kompatiblen Umgebung ausgeführt werden.

**3. Installation und Setup**

SQLite-Installation:

Eine separate Installation von SQLite ist nicht erforderlich, da das Projekt mit dem in Python integrierten sqlite3-Modul arbeitet. In PyCharm (oder einer vergleichbaren Python-IDE) kann direkt mit SQLite-Datenbanken (.db-Dateien) gearbeitet werden, ohne zusätzliche Software installieren zu müssen.

Datenbankaufbau:

•	Erstelle die Datenbankdatei (urlaubsverwaltung.db) im Projektordner.

•	Führe die schema.sql aus, um die Tabellen zu erstellen.

•	Lade die Beispieldaten mit daten.sql in die Tabellen.

Abfragen ausführen:

Du kannst die SQL-Abfragen entweder über die SQLite-Konsole oder in einem GUI-Tool wie DBeaver ausführen. Die SQL-Dateien (abfragen.sql) enthalten alle notwendigen Queries.

**4. Verwendung**

Das Tool stellt eine SQLite-Datenbank zur Verfügung, die du verwenden kannst, um:

•	Mitarbeiterdaten hinzuzufügen

•	Urlaubsanträge zu verwalten

•	Genehmigte Urlaubsanträge zu prüfen

•	Konflikte zu identifizieren

•	Urlaubstage zu berechnen

**5. Funktionsweise der Abfragen**

•	Abfrage 1: Alle genehmigten Urlaube in einem bestimmten Zeitraum 

Diese Abfrage zeigt alle genehmigten Urlaubsanträge im Juli 2024. Sie nutzt JOIN, um die Mitarbeiterinformationen mit den Urlaubsanträgen zu verknüpfen, und BETWEEN, um den Zeitraum festzulegen.

![grafik](https://github.com/user-attachments/assets/9b9ef33a-b1a3-4063-846d-5cd421dd0372)

•	Abfrage 2: Alle offenen Urlaubsanträge, gruppiert nach Mitarbeiter

Diese Abfrage listet alle offenen Urlaubsanträge nach Mitarbeiter und zählt, wie viele offene Anträge jeder Mitarbeiter hat. Es wird GROUP BY verwendet, um die Anträge pro Mitarbeiter zu gruppieren.

![grafik](https://github.com/user-attachments/assets/3d33fbdc-76c7-4cf3-94c5-c3454caae7b4)
 
•	Abfrage 3: Gesamtanzahl genehmigter Urlaubstage pro Mitarbeiter

Diese Abfrage berechnet die Summe der genehmigten Urlaubstage pro Mitarbeiter, indem die Differenz zwischen Start- und Enddatum der Urlaubsanträge berechnet wird.

![grafik](https://github.com/user-attachments/assets/756f9629-0bc8-4bae-8fc0-296f5110e378)
 
•	Abfrage 4: Urlaubsanträge mit Status „abgelehnt“

![grafik](https://github.com/user-attachments/assets/7c62a897-0119-4b19-b2a7-badd41b3c1ef)

Diese Abfrage listet abgelehnte Urlaubsanträge auf. Sie nutzt ein einfaches JOIN und WHERE, um die abgelehnten Anträge anzuzeigen.
 
•	Abfrage 5: Konflikte zwischen Urlaubsanträgen

![grafik](https://github.com/user-attachments/assets/7455234c-0ca4-4914-99b0-c395782228bb)

Diese Abfrage prüft, ob zwei genehmigte Urlaubsanträge sich zeitlich überschneiden. Sie vergleicht die Start- und Enddaten der Anträge und gibt Konflikte aus, wenn sich die Urlaube überschneiden.
 
**6. Zukunft und Erweiterungen**

Erweiterungen:

•	Datenexport als Excel: Hinzufügen einer Exportfunktion in Excel für die Bearbeitung außerhalb von SQL.

•	Benachrichtigungssystem: Implementierung eines E-Mail-Systems zur Warnung vor Konflikten.

•	Erweiterte Berechnungen: Weitere Berechnungen für Resturlaub und Jahresurlaubstage pro Mitarbeiter.
