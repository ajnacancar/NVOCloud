USE NVOCLOUD
GO

/*
DELETE FROM Entitet
WHERE EntitetID = 2 OR EntitetID = 3 OR EntitetID = 4
DBCC CHECKIDENT ('Entitet', RESEED, 0)
*/

INSERT INTO Entitet
VALUES ('Federacija Bosne i Hercegovine', 'FBIH'),
       ('Republika Srpska', 'RS'),
	   ('Br�ko Distrikt', 'BD')

SELECT *
FROM Entitet

ALTER TABLE Kanton 
ALTER COLUMN Naziv nvarchar(50) NOT NULL

INSERT INTO Kanton
VALUES ('Unsko-sanski kanton', 'USK', 1),
	   ('Posavski kanton', '�P', 1),
	   ('Tuzlanski kanton', 'TK', 1),
	   ('Zenicko-dobojski kanton', 'ZDK', 1),
	   ('Bosansko-podrinjski kanton', 'BPK', 1),
	   ('Srednjobosanski kanton', 'SBK', 1),
	   ('Hercegova�ko-neretvanski kanton', 'HN�', 1),
	   ('Zapadnohercegova�ki kanton', '�ZK', 1),
	   ('Kanton Sarajevo', 'KS', 1),
	   ('Kanton 10', 'HB�', 1)

UPDATE Kanton
SET Naziv = 'Zeni�ko-dobojski kanton'
WHERE Naziv = 'Zenicko-dobojski kanton'

SELECT *
FROM Kanton

/*
DELETE Kanton 
WHERE KantonID = 15 OR KantonID = 16 OR KantonID = 17 OR KantonID = 18 OR KantonID = 19 OR KantonID = 20 OR KantonID = 21 OR KantonID = 22 OR KantonID = 23 OR KantonID = 24
DBCC CHECKIDENT ('Kanton', RESEED, 0)
*/

INSERT INTO Opcina
VALUES ('Zenica', 72000, 4),
       ('Travnik', 72270, 6),
	   ('Sarajevo', 71000, 9),
	   ('Tuzla', 75000, 3),
	   ('Mostar', 88000, 7)

SELECT *
FROM Opcina

/*
DELETE Opcina
WHERE OpcinaID = 3 OR OpcinaID = 4 OR OpcinaID = 5 OR OpcinaID = 6 OR OpcinaID = 7 
DBCC CHECKIDENT ('Opcina', RESEED, 0)
*/

INSERT INTO ZiroRacun
VALUES ('5521075976129734'),
       ('1234567891758124'),
	   ('7319821654123345'),
	   ('8619273154792793'),
	   ('7762886031090047')
	   
INSERT INTO ZiroRacun
VALUES ('8721523384782767'),
       ('9992146245625893'),
	   ('9173384268533685'),
	   ('9595713823812572'),
	   ('9882153548208436')
	   
SELECT *
FROM ZiroRacun

INSERT INTO TipOrganizacije
VALUES ('Fondacija', 'Fondacija u Bosni i Hercegovini'),
       ('Udru�enje', 'Udru�enje u Bosni i Hercegovini')

SELECT *
FROM TipOrganizacije

ALTER TABLE Koalicija
ALTER COLUMN Naziv nvarchar(80) NOT NULL

INSERT INTO Koalicija
VALUES ('Koalicija organizacija osoba sa invaliditetom Tuzlanskog kantona', 'Koalicija TK'),
       ('Koalicija organizacija osoba sa invaliditetom Zeni�ko-dobojskog kantona', 'Koalicija ZE-DO kantona'),
	   ('Zajedno smo ja�i', 'Koalicija HN�'),
	   ('Pod lupom', 'Koalicija SBK'),
	   ('Koordinacioni odbor udru�enja osoba sa invaliditetom Kantona Sarajevo', 'Koalicija KS')

SELECT *
FROM Koalicija

ALTER TABLE PripradanjeKoaliciji
ALTER COLUMN IdentifikacijskiBroj nvarchar(13)

ALTER TABLE PripradanjeKoaliciji
ALTER COLUMN KoalicijaID int

INSERT INTO Kategorija
VALUES ('Osobe s invaliditetom', 'Udru�enje osoba s pote�ko�ama u razvoju'),
       ('Ekologija', 'Udru�enje ekologa BiH'),
	   ('Humanitarna', 'Udru�enje za pomo� potrebnima'),
	   ('Sport', 'Udru�enje za sport'),
	   ('Kultura', 'Udru�enje za kulturu i obrazovanje mladih')

SELECT *
FROM Kategorija

ALTER TABLE NevladinaOrganizacija
ALTER COLUMN Naziv nvarchar(80) NOT NULL

ALTER TABLE NevladinaOrganizacija 
DROP COLUMN BrojZiroRacuna

INSERT INTO NevladinaOrganizacija
VALUES ('123AS4575LA42',  'Udru�enje osoba sa pote�ko�ama "Dlan"', 'Udru�enje osoba s pote�ko�ama u razvoju', '2012-12-04', '', 
        'Jednaka prava za sve', 'Omogu�iti aktivnu, trajnu i cjelovitu podr�ku osoba s pote�ko�ama u razvoju', '1578', '',
		'dlan@gmail.com', '032/458-455', 'Fakultetska 1', 'Aktivan', 2, 1, 1),
	   ('493KH7751PP12', 'Ekolo�ko udru�enje "Prijatelji Krpelji�i"', 'Udru�enje ekologa', '2020-05-01', 'Prijatelji', '�ist okoli�', 
        'Omogu�iti �i��i okoli� i zdraviji �ivot', '1723', '', 'prijatelji@gmail.com', '030/111-222', 'Mostarska', 'Aktivan',
		 2, 2, 2),
	   ('111FR7781WL45', 'Humanitarna fondacija "Pomozi.ba"', 'Humanitarci', '1995-12-11', 'Pomozi.ba', 'Udijeli i usre�i nekoga', 
        'Pomo� onima kojima je pomo� potrebna', '7512', '', 'pomozi@gmail.ba', '033/981-124', 'Zmaja od Bosne 55', 'Aktivan', 
		 1, 3, 3),
	   ('541TK4251AA75', 'Sportsko udru�enje paintball �AREA�', 'Udru�enje sportista', '2002-01-01', 'Area', 'Zdravo tijelo, zdrav duh', 
        'Omogu�iti igranje profesionalnog paintball-a', '8885', '', 'areai@gmail.com', '035/454-000', 'ZAVNOBIH-a 11', 'Aktivan', 
		 2, 4, 4),
	   ('751AB4441NA34', 'Bo�nja�ka zajednica kulture �Preporod�', 'Udru�enje bo�nja�ke zajednice', '2017-03-25', 'Preporod', 
	    'Borba protiv mr�nje', 'Omogu�iti prigodne programe za djecu i odrasle', '1245', '', 'preporod@gmail.com', '036/334-254', 
		'A.Star�evi�a 3', 'Uga�en', 2, 5, 5)

INSERT INTO NevladinaOrganizacija
VALUES ('854AB3492BB17',  'Udru�enje �Svijet u slikama�', 'Udru�enje osoba s pote�ko�ama u razvoju', '2015-11-07', '', 
        'Jednaka prava za sve', 'Omogu�iti aktivnu, trajnu i cjelovitu podr�ku osoba s pote�ko�ama u razvoju', '1174', '',
		'svijet@gmail.com', '032/447-123', 'Prvomajska 12', 'Aktivan', 2, 1, 6),
	   ('884CS444TU44', 'Omladinsko udru�enje "Nova vizija"', 'Udru�enje mladih ekologa', '2021-01-01', 'Nova vizija',
	    '�ist okoli�', 'Omogu�iti �i��i okoli� i zdraviji �ivot', '2145', '', 'novavizija@gmail.com', '030/124-895', 
		'�ume�e bb', 'Aktivan', 2, 2, 7),
	   ('895SS3451LA85', 'Fondacija "Studium"', 'Stipendiranje studenata', '2002-04-05', 'Studium', 'Na mladima svijet ostaje', 
        'Omogu�iti mladima �kolovanje da bi nam omogu�ili bolji prosperitet dr�ave', '3412', '', 'studium@gmail.ba', '033/912-934',
		'Hamdije Kre� 61', 'Aktivan', 1, 3, 8),
	   ('912AT3765LG24', 'Tuzla "Dragunja" sportsko udru�enje', 'Udru�enje sportista', '2018-08-12', 'Dragunja', 
	    'Zdravo tijelo, zdrav duh', 'Omogu�iti sport svima, bez ograni�enja', '9173', '', 'dragunja@gmail.com', '035/348-123',
		'Srednja Dragunja bb', 'Uga�en',  2, 4, 9),
	   ('999CP1176MS67', 'Hrvatsko kulturno dru�tvo "Napredak"', 'Udru�enje za kulturu', '2011-06-30', 'Napredak', 
	    'Borba protiv mr�nje', 'Omogu�iti prigodne programe za djecu i odrasle', '5762', '', 'napredak@gmail.com', '036/276-379', 
		'Mar�ala Tita 178', 'Uga�en', 2, 5, 10)

UPDATE NevladinaOrganizacija
SET Skracenica = 'Svijetslik'
WHERE Skracenica = ''

SELECT *
FROM NevladinaOrganizacija

INSERT INTO PripadanjeKategoriji
VALUES ('111FR7781WL45', 3),
       ('123AS4575LA42', 1),
	   ('493KH7751PP12', 2),
	   ('541TK4251AA75', 4),
	   ('751AB4441NA34', 5)

INSERT INTO PripadanjeKategoriji
VALUES ('895SS3451LA85', 3),
       ('854AB3492BB17', 1),
	   ('884CS444TU44', 2),
	   ('912AT3765LG24', 4),
	   ('999CP1176MS67', 5)

SELECT *
FROM PripadanjeKategoriji

INSERT INTO PripradanjeKoaliciji
VALUES ('123AS4575LA42', 2),
       ('493KH7751PP12', 4)

INSERT INTO PripradanjeKoaliciji
VALUES ('854AB3492BB17', 2),
       ('884CS444TU44', 4)

SELECT *
FROM PripradanjeKoaliciji

UPDATE NevladinaOrganizacija
SET Skracenica = 'Dlan'
WHERE Skracenica = ''

INSERT INTO OdgovornaOsobaOrganizacije
VALUES ('Huso', 'Husi�', 'huso@gmail.com', '061-123-456', '111FR7781WL45'),
       ('Selvedin', 'Dedi�', 'selvedin@gmail.com', '062-454-858', '123AS4575LA42'),
       ('Haso', 'Hasi�', 'haso@gmail.com', '062-321-654', '493KH7751PP12'),
	   ('Ahmo', 'Ahmi�', 'ahmo@gmail.com', '063-247-973', '541TK4251AA75'),
	   ('Miro', 'Miri�', 'miro@gmail.com', '065-721-422', '751AB4441NA34')

INSERT INTO OdgovornaOsobaOrganizacije
VALUES ('Ibro', 'Ibri�', 'ibro@gmail.com', '061-774-050', '854AB3492BB17'),
       ('Suljo', 'Sulji�', 'suljo@gmail.com', '061-925-121', '895SS3451LA85'),
       ('Fata', 'Fati�', 'fata@gmail.com', '062-551-237', '884CS444TU44'),
	   ('Hata', 'Hati�', 'hata@gmail.com', '063-927-940', '912AT3765LG24'),
	   ('Sara', 'Sari�', 'sara@gmail.com', '065-370-061', '999CP1176MS67')

SELECT *
FROM OdgovornaOsobaOrganizacije

ALTER TABLE Korisnik 
DROP COLUMN Korisni�koIme, Lozinka
GO

INSERT INTO Korisnik
VALUES ('Durmo', 'Durmi�', 'durmo@gmail.com', '062-547-885', 'Sarajevska bb', '123AS4575LA42', 1),
       ('Hana', 'Hani�', 'hana@gmail.com', '061-999-555', 'Mostarska bb', '111FR7781WL45', 3),
	   ('Harun', 'Hori�', 'harun@gmail.com', '061-777-585', 'Prvomajska 7b', '493KH7751PP12', 2),
       ('Hamza', 'Hamzi�',  'hamza@gmail.com', '061-729-222', 'Fakultetska 8', '541TK4251AA75', 4),
	   ('Dora', 'Dori�', 'dora@gmail.com', '062-115-754', 'Fakultetska 8', '123AS4575LA42', 1)

INSERT INTO Korisnik
VALUES ('Dara', 'Dari�', 'dara@gmail.com', '061-754-080', 'Sarajevska bb', '123AS4575LA42', 1),
       ('Maja', 'Maji�', 'maja@gmail.com', '062-904-672', 'Mostarska bb', '111FR7781WL45', 3),
	   ('Hasan', 'Hasi�', 'hasan@gmail.com', '061-113-464', 'Prvomajska 7b', '493KH7751PP12', 2),
       ('Ado', 'Adi�',  'ado@gmail.com', '062-471-171', 'Fakultetska 8', '541TK4251AA75', 4),
	   ('Alma', 'Ali�', 'alma@gmail.com', '061-117-968', 'Fakultetska 8', '123AS4575LA42', 1)

SELECT *
FROM Korisnik

ALTER TABLE Korisnik
ALTER COLUMN IdentifikacijskiBroj nvarchar(13)

INSERT INTO Uloga
VALUES ('Administrator'),
       ('Editor')

SELECT *
FROM Uloga

INSERT INTO Korisnik_Uloga
VALUES (1, 2),
       (2, 2),
	   (3, 2),
	   (4, 2),
	   (5, 1)

INSERT INTO Korisnik_Uloga
VALUES (7, 2),
       (8, 2),
	   (9, 2),
	   (10, 2),
	   (11, 2)

SELECT *
FROM Korisnik_Uloga

INSERT INTO Objava
VALUES ('Izlet', 'Izlet na Vla�i�', '2020-05-04', 'Obavijest', 1),
       ('Apel', 'Prikupljane pomo�i', '2021-01-30', 'Apel', 3),
	   ('Akcija', 'Akcija �i��enja grada', '2019-11-27', 'Obavijest', 2),
	   ('Predavanje', 'Predavanje za �lanove', '2021-03-18', 'Obavijest', 4)

	   update Objava 
	   set Sadrzaj = 'Predavanje za �lanove' where ObjavaID = 4
SELECT *
FROM Objava

ALTER TABLE Korisnik 
ADD Korisni�koIme nvarchar(30), Lozinka varbinary(256)
GO