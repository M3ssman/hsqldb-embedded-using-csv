DROP SCHEMA IF EXISTS HSQLDB_EBEDDED;
CREATE SCHEMA HSQLDB_EBEDDED;
CREATE TEXT TABLE IF NOT EXISTS HSQLDB_EBEDDED.KUNDE (ID_Kunde INTEGER PRIMARY KEY,Anrede VARCHAR(16), Nachname VARCHAR(32), Strasse VARCHAR(32), Ort VARCHAR(32), PLZ VARCHAR(8));
CREATE TEXT TABLE IF NOT EXISTS HSQLDB_EBEDDED.KUNDE_NOTIZ (ID_Kunde INTEGER PRIMARY KEY, Notiz VARCHAR(2048));
CREATE TEXT TABLE IF NOT EXISTS HSQLDB_EBEDDED.KARTE (ID_Karte INTEGER, Kunde INTEGER, Kartentyp INTEGER, Jahr INTEGER);
CREATE TEXT TABLE IF NOT EXISTS HSQLDB_EBEDDED.KARTE_TYP (ID_Kartentyp INTEGER, Kartentyp_Bezeichnug VARCHAR(32));
CREATE TEXT TABLE IF NOT EXISTS HSQLDB_EBEDDED.AUFTRAG (ID_Auftrag INTEGER PRIMARY KEY, Kunde INTEGER, Datum DATE, Nr INTEGER, Betrag FLOAT);
CREATE TEXT TABLE IF NOT EXISTS HSQLDB_EBEDDED.AUFTRAG_NOTIZ (ID_Auftrag INTEGER PRIMARY KEY, Notiz VARCHAR(2048));
CREATE INDEX AUFTRAG_INDEX ON HSQLDB_EBEDDED.AUFTRAG (Datum);
SET WRITE_DELAY 0 MILLIS;
SET TABLE HSQLDB_EBEDDED.KUNDE SOURCE 'tab_kunde.csv;ignore_first=true;fs=\t;encoding=UTF-8';
SET TABLE HSQLDB_EBEDDED.KUNDE_NOTIZ SOURCE 'tab_kunde_notiz.csv;ignore_first=true;fs=\t;encoding=UTF-8';
SET TABLE HSQLDB_EBEDDED.KARTE SOURCE 'tab_karte.csv;ignore_first=true;fs=\t;encoding=UTF-8';
SET TABLE HSQLDB_EBEDDED.KARTE_TYP SOURCE 'tab_karte_typ.csv;ignore_first=true;fs=\t;encoding=UTF-8';
SET TABLE HSQLDB_EBEDDED.AUFTRAG SOURCE 'tab_auftrag.csv;ignore_first=true;fs=\t;encoding=UTF-8';
SET TABLE HSQLDB_EBEDDED.AUFTRAG_NOTIZ SOURCE 'tab_auftrag_notiz.csv;ignore_first=true;fs=\t;encoding=UTF-8';