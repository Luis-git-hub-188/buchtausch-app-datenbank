# Buchtausch-App Datenbank

Dieses Projekt umfasst die Konzeption, Implementierung und Finalisierung einer relationalen Datenbank für eine Buchtausch-App im Rahmen des Kurses **DLBDSPBDM01_D – Data-Mart-Erstellung in SQL** an der IU Internationalen Hochschule.

---

## Ziel des Projekts

Ziel des Projekts ist die Entwicklung eines strukturierten und normalisierten Datenbanksystems, das den zeitlich begrenzten Austausch von Büchern innerhalb einer lokalen Gemeinschaft ermöglicht. Im Fokus steht die Ausleihe von Büchern zwischen Benutzenden, ohne dass ein Eigentumsübergang stattfindet.

Die Datenbank bildet alle relevanten Prozesse ab, darunter das Anbieten von Büchern, die Reservierung, die Ausleihe sowie die Bewertung von Buchexemplaren.

---

## Datenbankkonzept

Die Datenbank basiert auf einem relationalen Modell und wurde gemäß der dritten Normalform umgesetzt, um Redundanzen zu vermeiden und Datenkonsistenz sicherzustellen.

Ein zentrales Konzept ist die Trennung zwischen:
- bibliografischen Daten eines Buches (Book)
- konkreten physischen Exemplaren (BookCopy)

Zusätzlich wurden komplexe Beziehungen umgesetzt, darunter:
- n:m-Beziehungen zwischen Büchern und Autoren sowie Genres
- eine Dreifachbeziehung zur Abbildung der Verfügbarkeit eines Exemplars (Ort + Zeitfenster)

---

## Implementierung

Die Implementierung erfolgte in MySQL. Jede Entität wurde als eigene Tabelle realisiert und durch Primär- und Fremdschlüssel miteinander verknüpft.

Zusätzliche Features:
- **Views** zur Vereinfachung häufiger Abfragen
- **Trigger** zur automatischen Statusaktualisierung von Buchexemplaren
- **Komplexe SQL-Abfragen** zur Datenanalyse

---

## Datenumfang

Die Datenbank besteht aus:
- 17 Tabellen
- mindestens 10 Datensätzen pro Tabelle
- über 170 Datensätzen insgesamt

Die enthaltenen Dummy-Daten ermöglichen realistische Testszenarien.

---

## Installation

1. Starte MySQL (z. B. über XAMPP)
2. Erstelle eine neue Datenbank
3. Importiere die bereitgestellte `.sql` Datei
4. Alle Tabellen und Daten werden automatisch erstellt

---

## Funktionalitäten

Das System unterstützt unter anderem:
- Verwaltung von Benutzenden und Rollen
- Speicherung von Büchern und Buchexemplaren
- Reservierung und Ausleihe von Büchern
- Verwaltung von Abholorten und Zeitfenstern
- Bewertungssystem für ausgeliehene Bücher
- Analyse von Nutzungsdaten über SQL-Abfragen

---

## Projektstruktur

Das Repository enthält:

- SQL-Datei(en) mit vollständigem Datenbankschema
- Präsentation der Implementierungsphase
- Dokumentation der Konzeptionsphase
- Finalisierungsdokument (PDF)
- Abstract

---

## Autor

Luis Hafner  
Matrikelnummer: 10244327  
IU Internationale Hochschule  

---

## Repository

Link zum Repository: *(hier einfügen)*

---

## 📌 Hinweis

Dieses Projekt wurde ausschließlich zu Studienzwecken erstellt und dient der Demonstration von Datenbankdesign und SQL-Implementierung im Kontext einer Buchtausch-App.
