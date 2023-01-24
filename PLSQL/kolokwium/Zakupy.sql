DROP TABLE KLIENT CASCADE CONSTRAINTS;
DROP TABLE PRODUKT CASCADE CONSTRAINTS;
DROP TABLE PRACOWNIK CASCADE CONSTRAINTS;
DROP TABLE SPRZEDAZ CASCADE CONSTRAINTS;
DROP TABLE MIASTO CASCADE CONSTRAINTS;
DROP TABLE KATEGORIA CASCADE CONSTRAINTS;

CREATE TABLE MIASTO(
	ID_MIASTO NUMBER(4) NOT NULL,
	MIASTO VARCHAR2(20));

CREATE TABLE KLIENT(
	ID_KLIENT NUMBER(4) NOT NULL,
	IMIE VARCHAR2(20),
	NAZWISKO VARCHAR2(20),
	ID_MIASTO NUMBER(4));
	
CREATE TABLE PRACOWNIK(
	ID_PRACOWNIK NUMBER(4) NOT NULL,
	IMIE VARCHAR2(20),
	NAZWISKO VARCHAR2(20),
	PENSJA NUMBER(10,2),
	ID_MIASTO NUMBER(4));

CREATE TABLE KATEGORIA(
	ID_KATEGORIA NUMBER(4) NOT NULL,
	KATEGORIA VARCHAR2(20));
	
CREATE TABLE PRODUKT(
	ID_PRODUKT NUMBER(4) NOT NULL,
	NAZWA VARCHAR2(20),
	CENA NUMBER(10,2),
	ID_KATEGORIA NUMBER(4));
	
CREATE TABLE SPRZEDAZ(
	ID_SPRZEDAZ NUMBER(4) NOT NULL,
	ID_KLIENT NUMBER(4),
	ID_PRACOWNIK NUMBER(4),
	ID_PRODUKT NUMBER(4),
	DATA_SPRZEDAZY DATE,
	ILOSC NUMBER(4));

INSERT INTO MIASTO VALUES(
	0, 'WARSZAWA');
INSERT INTO MIASTO VALUES(
	1, 'KRAKOW');
INSERT INTO MIASTO VALUES(
	2, 'GDANSK');

INSERT INTO KATEGORIA VALUES(
	0, 'NABIAL');
INSERT INTO KATEGORIA VALUES(
	1, 'PIECZYWO');

INSERT INTO KLIENT VALUES(
	0, 'MATEUSZ', 'TRUSKAWKA', 0);
INSERT INTO KLIENT VALUES(
	1, 'WIKTORIA', 'MALINA', 0);
INSERT INTO KLIENT VALUES(
	2, 'SZYMON', 'CZERESNIA', 1);
INSERT INTO KLIENT VALUES(
	3, 'NATALIA', 'SLIWKA', 1);
INSERT INTO KLIENT VALUES(
	4, 'MAGDALENA', 'JABLKO', 2);
INSERT INTO KLIENT VALUES(
	5, 'ADAM', 'WISNIA', 2);
INSERT INTO KLIENT VALUES(
	6, 'PIOTR', 'PORZECZKA', 1);
	
INSERT INTO PRACOWNIK VALUES(
	0, 'JAN', 'KALAFIOR', 1000, 0);
INSERT INTO PRACOWNIK VALUES(
	1, 'TOMASZ', 'SZPINAK', 2000, 0);
INSERT INTO PRACOWNIK VALUES(
	2, 'JULIA', 'ZIEMNIAK', 3000, 1);
	
INSERT INTO PRODUKT VALUES(
	0, 'CHLEB', 4, 1);
INSERT INTO PRODUKT VALUES(
	1, 'MLEKO', 5, 0);
INSERT INTO PRODUKT VALUES(
	2, 'SER', 9, 0);
INSERT INTO PRODUKT VALUES(
	3, 'MASLO', 5, 0);

INSERT INTO SPRZEDAZ VALUES(
	0, 0, 0, 0, TO_DATE('2019-10-03','YYYY-MM-DD'), 3);
INSERT INTO SPRZEDAZ VALUES(
	1, 0, 0, 1, TO_DATE('2019-10-07','YYYY-MM-DD'), 5);
INSERT INTO SPRZEDAZ VALUES(
	2, 1, 0, 2, TO_DATE('2019-09-23','YYYY-MM-DD'), 1);
INSERT INTO SPRZEDAZ VALUES(
	3, 1, 1, 3, TO_DATE('2019-09-13','YYYY-MM-DD'), 2);
INSERT INTO SPRZEDAZ VALUES(
	4, 1, 1, 0, TO_DATE('2019-10-08','YYYY-MM-DD'), 4);
INSERT INTO SPRZEDAZ VALUES(
	5, 1, 2, 1, TO_DATE('2019-10-20','YYYY-MM-DD'), 3);
INSERT INTO SPRZEDAZ VALUES(
	6, 2, 1, 2, TO_DATE('2019-09-11','YYYY-MM-DD'), 3);
INSERT INTO SPRZEDAZ VALUES(
	7, 2, 1, 3, TO_DATE('2019-10-03','YYYY-MM-DD'), 5);
INSERT INTO SPRZEDAZ VALUES(
	8, 2, 0, 0, TO_DATE('2019-09-04','YYYY-MM-DD'), 7);
INSERT INTO SPRZEDAZ VALUES(
	9, 3, 2, 1, TO_DATE('2019-09-23','YYYY-MM-DD'), 9);
INSERT INTO SPRZEDAZ VALUES(
	10, 3, 2, 2, TO_DATE('2019-09-25','YYYY-MM-DD'), 4);
INSERT INTO SPRZEDAZ VALUES(
	11, 3, 2, 3, TO_DATE('2019-09-26','YYYY-MM-DD'), 2);
INSERT INTO SPRZEDAZ VALUES(
	12, 3, 1, 0, TO_DATE('2019-10-03','YYYY-MM-DD'), 5);
INSERT INTO SPRZEDAZ VALUES(
	13, 4, 1, 1, TO_DATE('2019-09-26','YYYY-MM-DD'), 1);
INSERT INTO SPRZEDAZ VALUES(
	14, 4, 2, 2, TO_DATE('2019-09-16','YYYY-MM-DD'), 1);
INSERT INTO SPRZEDAZ VALUES(
	15, 5, 0, 3, TO_DATE('2019-10-15','YYYY-MM-DD'), 6);
INSERT INTO SPRZEDAZ VALUES(
	16, 5, 0, 0, TO_DATE('2019-10-13','YYYY-MM-DD'), 7);

COMMIT;