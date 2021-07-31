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
	   ('Brèko Distrikt', 'BD')

SELECT *
FROM Entitet

ALTER TABLE Kanton 
ALTER COLUMN Naziv nvarchar(50) NOT NULL

INSERT INTO Kanton
VALUES ('Unsko-sanski kanton', 'USK', 1),
	   ('Posavski kanton', 'ŽP', 1),
	   ('Tuzlanski kanton', 'TK', 1),
	   ('Zenicko-dobojski kanton', 'ZDK', 1),
	   ('Bosansko-podrinjski kanton', 'BPK', 1),
	   ('Srednjobosanski kanton', 'SBK', 1),
	   ('Hercegovaèko-neretvanski kanton', 'HNŽ', 1),
	   ('Zapadnohercegovaèki kanton', 'ŽZK', 1),
	   ('Kanton Sarajevo', 'KS', 1),
	   ('Kanton 10', 'HBŽ', 1)

UPDATE Kanton
SET Naziv = 'Zenièko-dobojski kanton'
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
       ('Udruženje', 'Udruženje u Bosni i Hercegovini')

SELECT *
FROM TipOrganizacije

ALTER TABLE Koalicija
ALTER COLUMN Naziv nvarchar(80) NOT NULL

INSERT INTO Koalicija
VALUES ('Koalicija organizacija osoba sa invaliditetom Tuzlanskog kantona', 'Koalicija TK'),
       ('Koalicija organizacija osoba sa invaliditetom Zenièko-dobojskog kantona', 'Koalicija ZE-DO kantona'),
	   ('Zajedno smo jaèi', 'Koalicija HNŽ'),
	   ('Pod lupom', 'Koalicija SBK'),
	   ('Koordinacioni odbor udruženja osoba sa invaliditetom Kantona Sarajevo', 'Koalicija KS')

SELECT *
FROM Koalicija

ALTER TABLE PripradanjeKoaliciji
ALTER COLUMN IdentifikacijskiBroj nvarchar(13)

ALTER TABLE PripradanjeKoaliciji
ALTER COLUMN KoalicijaID int

INSERT INTO Kategorija
VALUES ('Osobe s invaliditetom', 'Udruženje osoba s poteškoæama u razvoju'),
       ('Ekologija', 'Udruženje ekologa BiH'),
	   ('Humanitarna', 'Udruženje za pomoæ potrebnima'),
	   ('Sport', 'Udruženje za sport'),
	   ('Kultura', 'Udruženje za kulturu i obrazovanje mladih')

SELECT *
FROM Kategorija

ALTER TABLE NevladinaOrganizacija
ALTER COLUMN Naziv nvarchar(80) NOT NULL

ALTER TABLE NevladinaOrganizacija 
DROP COLUMN BrojZiroRacuna

INSERT INTO NevladinaOrganizacija
VALUES ('123AS4575LA42',  'Udruženje osoba sa poteškoæama "Dlan"', 'Udruženje osoba s poteškoæama u razvoju', '2012-12-04', '', 
        'Jednaka prava za sve', 'Omoguæiti aktivnu, trajnu i cjelovitu podršku osoba s poteškoæama u razvoju', '1578', '',
		'dlan@gmail.com', '032/458-455', 'Fakultetska 1', 'Aktivan', 2, 1, 1),
	   ('493KH7751PP12', 'Ekološko udruženje "Prijatelji Krpeljiæi"', 'Udruženje ekologa', '2020-05-01', 'Prijatelji', 'Èist okoliš', 
        'Omoguæiti èišæi okoliš i zdraviji život', '1723', '', 'prijatelji@gmail.com', '030/111-222', 'Mostarska', 'Aktivan',
		 2, 2, 2),
	   ('111FR7781WL45', 'Humanitarna fondacija "Pomozi.ba"', 'Humanitarci', '1995-12-11', 'Pomozi.ba', 'Udijeli i usreæi nekoga', 
        'Pomoæ onima kojima je pomoæ potrebna', '7512', '', 'pomozi@gmail.ba', '033/981-124', 'Zmaja od Bosne 55', 'Aktivan', 
		 1, 3, 3),
	   ('541TK4251AA75', 'Sportsko udruženje paintball “AREA”', 'Udruženje sportista', '2002-01-01', 'Area', 'Zdravo tijelo, zdrav duh', 
        'Omoguæiti igranje profesionalnog paintball-a', '8885', '', 'areai@gmail.com', '035/454-000', 'ZAVNOBIH-a 11', 'Aktivan', 
		 2, 4, 4),
	   ('751AB4441NA34', 'Bošnjaèka zajednica kulture “Preporod”', 'Udruženje bošnjaèke zajednice', '2017-03-25', 'Preporod', 
	    'Borba protiv mržnje', 'Omoguæiti prigodne programe za djecu i odrasle', '1245', '', 'preporod@gmail.com', '036/334-254', 
		'A.Starèeviæa 3', 'Ugašen', 2, 5, 5)

INSERT INTO NevladinaOrganizacija
VALUES ('854AB3492BB17',  'Udruženje ”Svijet u slikama”', 'Udruženje osoba s poteškoæama u razvoju', '2015-11-07', '', 
        'Jednaka prava za sve', 'Omoguæiti aktivnu, trajnu i cjelovitu podršku osoba s poteškoæama u razvoju', '1174', '',
		'svijet@gmail.com', '032/447-123', 'Prvomajska 12', 'Aktivan', 2, 1, 6),
	   ('884CS444TU44', 'Omladinsko udruženje "Nova vizija"', 'Udruženje mladih ekologa', '2021-01-01', 'Nova vizija',
	    'Èist okoliš', 'Omoguæiti èišæi okoliš i zdraviji život', '2145', '', 'novavizija@gmail.com', '030/124-895', 
		'Šumeæe bb', 'Aktivan', 2, 2, 7),
	   ('895SS3451LA85', 'Fondacija "Studium"', 'Stipendiranje studenata', '2002-04-05', 'Studium', 'Na mladima svijet ostaje', 
        'Omoguæiti mladima školovanje da bi nam omoguæili bolji prosperitet države', '3412', '', 'studium@gmail.ba', '033/912-934',
		'Hamdije Kreš 61', 'Aktivan', 1, 3, 8),
	   ('912AT3765LG24', 'Tuzla "Dragunja" sportsko udruženje', 'Udruženje sportista', '2018-08-12', 'Dragunja', 
	    'Zdravo tijelo, zdrav duh', 'Omoguæiti sport svima, bez ogranièenja', '9173', '', 'dragunja@gmail.com', '035/348-123',
		'Srednja Dragunja bb', 'Ugašen',  2, 4, 9),
	   ('999CP1176MS67', 'Hrvatsko kulturno društvo "Napredak"', 'Udruženje za kulturu', '2011-06-30', 'Napredak', 
	    'Borba protiv mržnje', 'Omoguæiti prigodne programe za djecu i odrasle', '5762', '', 'napredak@gmail.com', '036/276-379', 
		'Maršala Tita 178', 'Ugašen', 2, 5, 10)

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
VALUES ('Huso', 'Husiæ', 'huso@gmail.com', '061-123-456', '111FR7781WL45'),
       ('Selvedin', 'Dediæ', 'selvedin@gmail.com', '062-454-858', '123AS4575LA42'),
       ('Haso', 'Hasiæ', 'haso@gmail.com', '062-321-654', '493KH7751PP12'),
	   ('Ahmo', 'Ahmiæ', 'ahmo@gmail.com', '063-247-973', '541TK4251AA75'),
	   ('Miro', 'Miriæ', 'miro@gmail.com', '065-721-422', '751AB4441NA34')

INSERT INTO OdgovornaOsobaOrganizacije
VALUES ('Ibro', 'Ibriæ', 'ibro@gmail.com', '061-774-050', '854AB3492BB17'),
       ('Suljo', 'Suljiæ', 'suljo@gmail.com', '061-925-121', '895SS3451LA85'),
       ('Fata', 'Fatiæ', 'fata@gmail.com', '062-551-237', '884CS444TU44'),
	   ('Hata', 'Hatiæ', 'hata@gmail.com', '063-927-940', '912AT3765LG24'),
	   ('Sara', 'Sariæ', 'sara@gmail.com', '065-370-061', '999CP1176MS67')

SELECT *
FROM OdgovornaOsobaOrganizacije

ALTER TABLE Korisnik 
DROP COLUMN KorisnièkoIme, Lozinka
GO

INSERT INTO Korisnik
VALUES ('Durmo', 'Durmiæ', 'durmo@gmail.com', '062-547-885', 'Sarajevska bb', '123AS4575LA42', 1),
       ('Hana', 'Haniæ', 'hana@gmail.com', '061-999-555', 'Mostarska bb', '111FR7781WL45', 3),
	   ('Harun', 'Horiæ', 'harun@gmail.com', '061-777-585', 'Prvomajska 7b', '493KH7751PP12', 2),
       ('Hamza', 'Hamziæ',  'hamza@gmail.com', '061-729-222', 'Fakultetska 8', '541TK4251AA75', 4),
	   ('Dora', 'Doriæ', 'dora@gmail.com', '062-115-754', 'Fakultetska 8', '123AS4575LA42', 1)

INSERT INTO Korisnik
VALUES ('Dara', 'Dariæ', 'dara@gmail.com', '061-754-080', 'Sarajevska bb', '123AS4575LA42', 1),
       ('Maja', 'Majiæ', 'maja@gmail.com', '062-904-672', 'Mostarska bb', '111FR7781WL45', 3),
	   ('Hasan', 'Hasiæ', 'hasan@gmail.com', '061-113-464', 'Prvomajska 7b', '493KH7751PP12', 2),
       ('Ado', 'Adiæ',  'ado@gmail.com', '062-471-171', 'Fakultetska 8', '541TK4251AA75', 4),
	   ('Alma', 'Aliæ', 'alma@gmail.com', '061-117-968', 'Fakultetska 8', '123AS4575LA42', 1)

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
VALUES ('Izlet', 'Izlet na Vlašiæ', '2020-05-04', 'Obavijest', 1),
       ('Apel', 'Prikupljane pomoæi', '2021-01-30', 'Apel', 3),
	   ('Akcija', 'Akcija èišæenja grada', '2019-11-27', 'Obavijest', 2),
	   ('Predavanje', 'Predavanje za èlanove', '2021-03-18', 'Obavijest', 4)

	   update Objava 
	   set Sadrzaj = 'Predavanje za èlanove' where ObjavaID = 4
SELECT *
FROM Objava

ALTER TABLE Korisnik 
ADD KorisnièkoIme nvarchar(30), Lozinka varbinary(256)
GO