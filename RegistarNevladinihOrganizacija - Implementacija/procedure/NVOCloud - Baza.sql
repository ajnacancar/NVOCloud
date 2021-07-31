CREATE DATABASE NVOCLOUD
GO

CREATE TABLE Entitet
(
 EntitetID  int NOT NULL IDENTITY(1, 1),
 Naziv nvarchar(30) NOT NULL,
 Skracenica nvarchar(10) NOT NULL,
 CONSTRAINT PK_EntitetID PRIMARY KEY (EntitetID)
);

CREATE TABLE Kanton
(
 KantonID int NOT NULL IDENTITY(1, 1),
 Naziv nvarchar(30) NOT NULL,
 Skracenica nvarchar(10) NOT NULL,
 EntitetID int NOT NULL,
 CONSTRAINT PK_KantonID PRIMARY KEY (KantonID),
 CONSTRAINT FK_EntitetID FOREIGN KEY (EntitetID)  REFERENCES Entitet(EntitetID)
);

CREATE TABLE Opcina
(
 OpcinaID int NOT NULL IDENTITY(1,1),
 Naziv nvarchar(30) NOT NULL,
 PostanskiBroj nvarchar(5) NOT NULL,
 KantonID int NOT NULL,
 CONSTRAINT PK_OpcinaID PRIMARY KEY (OpcinaID),
 CONSTRAINT FK_KantonID FOREIGN KEY (KantonID)  REFERENCES Kanton(KantonID)
);

CREATE TABLE ZiroRacun
(
 ZiroRacunID int NOT NULL IDENTITY(1,1),
 BrojZiroRacuna nvarchar(16) NOT NULL,
 CONSTRAINT PK_ZiroRacunID PRIMARY KEY (ZiroRacunID)
);

CREATE TABLE TipOrganizacije
(
 TipID int NOT NULL IDENTITY(1,1),
 Naziv nvarchar(30) NOT NULL,
 Opis nvarchar(50) NOT NULL,
 CONSTRAINT PK_TipID PRIMARY KEY (TipID)
);

CREATE TABLE NevladinaOrganizacija
(
 IdentifikacijskiBroj nvarchar(13) NOT NULL UNIQUE,
 Naziv nvarchar(30) NOT NULL,
 Opis nvarchar(50) NOT NULL,
 GodinaRegistracije date NOT NULL,
 Skracenica nvarchar(15),
 Vizija nvarchar(50) NOT NULL,
 Misija nvarchar(250) NOT NULL,
 RegistacijskiBroj nvarchar(20) NOT NULL,
 Logo image,
 Email nvarchar(20) NOT NULL,
 Telefon nvarchar(18) NOT NULL,
 Adresa nvarchar(20) NOT NULL,
 Status nvarchar(10) NOT NULL,
 TipID int NOT NULL,
 OpcinaID int NOT NULL,
 ZiroRacunID int NOT NULL,
 CONSTRAINT PK_NevladinaOrganizacija PRIMARY KEY (IdentifikacijskiBroj),
 CONSTRAINT FK_OpcinaID FOREIGN KEY (OpcinaID)  REFERENCES Opcina(OpcinaID),
 CONSTRAINT FK_TipID FOREIGN KEY (TipID)  REFERENCES TipOrganizacije(TipID),
 CONSTRAINT FK_ZiroRacunID FOREIGN KEY (ZiroRacunID)  REFERENCES ZiroRacun(ZiroRacunID)
);

CREATE TABLE OdgovornaOsobaOrganizacije
(
 OsobaID int NOT NULL IDENTITY(1,1),
 Ime nvarchar(20) NOT NULL,
 Prezime nvarchar(25) NOT NULL,
 Email nvarchar(20) NOT NULL,
 Telefon nvarchar(18) NOT NULL,
 IdentifikacijskiBroj nvarchar(13) NOT NULL,
 CONSTRAINT PK_OsobaID PRIMARY KEY (OsobaID),
 CONSTRAINT FK_IdentifikacijskiBroj FOREIGN KEY (IdentifikacijskiBroj) REFERENCES NevladinaOrganizacija(IdentifikacijskiBroj)
);

CREATE TABLE Koalicija
(
 KoalicijaID int NOT NULL IDENTITY(1,1),
 Naziv nvarchar(30) NOT NULL,
 Opis nvarchar(50) NOT NULL,
 CONSTRAINT PK_KoalicijaID PRIMARY KEY (KoalicijaID)
);

CREATE TABLE PripradanjeKoaliciji
(
 IdentifikacijskiBroj nvarchar(13) NOT NULL,
 KoalicijaID int NOT NULL,
 CONSTRAINT FK_Koalicija_Pripadanje FOREIGN KEY (KoalicijaID) REFERENCES Koalicija (KoalicijaID),
 CONSTRAINT FK_NevladinaOrganizacija_Koalicija FOREIGN KEY (IdentifikacijskiBroj) REFERENCES NevladinaOrganizacija (IdentifikacijskiBroj)
);

CREATE TABLE Kategorija
(
 KategorijaID int NOT NULL IDENTITY(1,1),
 Naziv nvarchar(30) NOT NULL,
 Opis nvarchar(50) NOT NULL,
 CONSTRAINT PK_KategorijaID PRIMARY KEY (KategorijaID)
);

CREATE TABLE PripadanjeKategoriji
(
 IdentifikacijskiBroj nvarchar(13) NOT NULL,
 KategorijaID int NOT NULL,
 CONSTRAINT FK_NevladinaOrganizacija_Kategorija FOREIGN KEY (IdentifikacijskiBroj) REFERENCES NevladinaOrganizacija (IdentifikacijskiBroj),
 CONSTRAINT FK_Kategorija_Pripadanje FOREIGN KEY (KategorijaID) REFERENCES Kategorija (KategorijaID)
);

CREATE TABLE Korisnik
(
 KorisnikID int NOT NULL IDENTITY(1,1),
 Ime nvarchar(20) NOT NULL,
 Prezime nvarchar(25) NOT NULL,
 Email nvarchar(20) NOT NULL,
 Telefon nvarchar(18) NOT NULL,
 Adresa nvarchar(20) NOT NULL,
 IdentifikacijskiBroj nvarchar(13) NOT NULL,
 OpcinaID int NOT NULL,
 CONSTRAINT PK_KorisnikID PRIMARY KEY (KorisnikID),
 CONSTRAINT FK_IdentifikacijskiBroj_Korisnik FOREIGN KEY (IdentifikacijskiBroj) REFERENCES NevladinaOrganizacija (IdentifikacijskiBroj),
 CONSTRAINT FK_OpcinaID_Korisnik FOREIGN KEY (OpcinaID) REFERENCES Opcina (OpcinaID)
);

CREATE TABLE Uloga
(
 UlogaID int NOT NULL IDENTITY(1,1),
 Naziv nvarchar(20) NOT NULL,
 CONSTRAINT PK_UlogaID PRIMARY KEY (UlogaID)
);

CREATE TABLE Korisnik_Uloga
(
 KorisnikID int NOT NULL,
 UlogaID int NOT NULL,
 CONSTRAINT FK_Korisnik_Uloga FOREIGN KEY (UlogaID) REFERENCES Uloga (UlogaID),
 CONSTRAINT FK_Korisnik_Korisnik FOREIGN KEY (KorisnikID) REFERENCES Korisnik (KorisnikID)
);

CREATE TABLE Objava
(
 ObjavaID int NOT NULL IDENTITY(1,1),
 Naziv nvarchar(30) NOT NULL,
 Sadržaj nvarchar(80) NOT NULL,
 DatumObjave date NOT NULL,
 NazivVrsteObjave nvarchar(30) NOT NULL,
 KorisnikID int NOT NULL,
 CONSTRAINT PK_ObjavaID PRIMARY KEY (ObjavaID),
 CONSTRAINT FK_KorisnikID_Objava FOREIGN KEY (KorisnikID) REFERENCES Korisnik(KorisnikID)
);

CREATE TABLE Prilog
(
 PrilogID int IDENTITY(1,1),
 Prilog varbinary(max),
 ObjavaID int,
 CONSTRAINT PK_PrilogID PRIMARY KEY (PrilogID),
 CONSTRAINT FK_ObjavaID_Prilog FOREIGN KEY (ObjavaID) REFERENCES Objava (ObjavaID)
);
GO

-- Kreiranje uskladištene procedure za dodavanje novog korisnika
CREATE PROCEDURE DodajKorisnika (@Ime varchar(50), @Lozinka varchar(256)) AS
BEGIN
INSERT INTO Korisnik (Ime, Lozinka)
VALUES (@Ime, HASHBYTES('SHA2_256', @Lozinka))
END
