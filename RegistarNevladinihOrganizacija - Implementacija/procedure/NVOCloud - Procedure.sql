-- Ispis svih NVO
CREATE OR ALTER PROC Ispis_NVO
AS
BEGIN
SELECT Naziv
FROM NevladinaOrganizacija
END

EXEC Ispis_NVO
GO

-- Ispis svih kategorija
CREATE OR ALTER PROC Ispis_Kategorija
AS
BEGIN
SELECT Naziv
FROM Kategorija
END

EXEC Ispis_Kategorija
GO

-- Pretraga po kategoriji
CREATE OR ALTER PROC Proc_Kategorija_Naziv (
		@Naziv nvarchar(50)
)
AS
BEGIN
SELECT NVO.Naziv
FROM Kategorija AS K
INNER JOIN PripadanjeKategoriji AS PK
ON K.KategorijaID = PK.KategorijaID
INNER JOIN NevladinaOrganizacija AS NVO
ON NVO.IdentifikacijskiBroj = PK.IdentifikacijskiBroj
WHERE K.Naziv = @Naziv 
RETURN 0
END

EXEC Proc_Kategorija_Naziv @Naziv = 'Kultura'
GO

-- Pretraga po opæini
CREATE OR ALTER PROC Proc_Opcina_Naziv (
		@Naziv nvarchar(80)
)
AS
BEGIN
SELECT NVO.Naziv
FROM Opcina AS O
INNER JOIN NevladinaOrganizacija AS NVO
ON NVO.OpcinaID = O.OpcinaID
WHERE O.Naziv = @Naziv 
RETURN 0
END

EXEC Proc_Opcina_Naziv  @Naziv = 'Travnik'
GO

-- Ispis svih opcina
CREATE OR ALTER PROC Proc_Ispis_Opcina
AS
BEGIN
SELECT Naziv
FROM Opcina 
RETURN 0
END

EXEC Proc_Ispis_Opcina
GO

-- Pretraga po kantonu
CREATE OR ALTER PROC Proc_Kanton_Naziv (
		@Naziv nvarchar(80) = NULL,
		@Skracenica nvarchar(10) = NULL
)
AS
BEGIN
SELECT NVO.Naziv, O.Naziv
FROM NevladinaOrganizacija AS NVO
INNER JOIN Opcina AS O
ON NVO.OpcinaID = O.OpcinaID
INNER JOIN Kanton AS K
ON O.KantonID = K.KantonID
WHERE K.Naziv = @Naziv OR K.Skracenica = @Skracenica
RETURN 0
END

EXEC Proc_Kanton_Naziv  @Naziv = 'Zenièko-dobojski kanton'
EXEC Proc_Kanton_Naziv  @Skracenica = 'ZDK'
GO


-- Ispis svih kantona
CREATE OR ALTER PROC Proc_Ispis_Kantona
AS
BEGIN
SELECT Naziv
FROM Kanton 
RETURN 0
END

EXEC Proc_Ispis_Kantona
GO

-- Pretraga po entitetu
CREATE OR ALTER PROC Proc_Entitet_Naziv (
		@Naziv nvarchar(80) = NULL,
		@Skracenica nvarchar(10) = NULL
)
AS
BEGIN
SELECT NVO.Naziv, E.Naziv
FROM NevladinaOrganizacija AS NVO
INNER JOIN Opcina AS O
ON NVO.OpcinaID = O.OpcinaID
INNER JOIN Kanton AS K
ON O.KantonID = K.KantonID
INNER JOIN Entitet AS E
ON K.EntitetID = E.EntitetID
WHERE E.Naziv = @Naziv OR E.Skracenica = @Skracenica
RETURN 0
END

EXEC Proc_Entitet_Naziv  @Naziv = 'Federacija Bosne i Hercegovine'
EXEC Proc_Entitet_Naziv  @Skracenica = 'FBIH'
GO


-- Ispis svih entiteta
CREATE OR ALTER PROC Proc_Ispis_Entiteta
AS
BEGIN
SELECT Naziv
FROM Entitet
RETURN 0
END

EXEC Proc_Ispis_Entiteta
GO

-- Pretraga po tipu NVO
CREATE OR ALTER PROC Proc_TipNVO_Naziv (
       @Naziv nvarchar(30)
)
AS
BEGIN
SELECT NVO.Naziv
FROM TipOrganizacije AS T
INNER JOIN NevladinaOrganizacija AS NVO
ON NVO.TipID = T.TipID
WHERE T.Naziv = @Naziv 
RETURN 0
END

EXEC Proc_TipNVO_Naziv  @Naziv = 'Udruženje'
GO


-- Ispis svih tipova
CREATE OR ALTER PROC Proc_Ispis_Tipova
AS
BEGIN
SELECT Naziv
FROM TipOrganizacije 
RETURN 0
END

EXEC Proc_Ispis_Tipova
GO

-- Pretraga po nazivu NVO-a
CREATE OR ALTER PROC Proc_NVO_Naziv (
		@Naziv nvarchar(80) = NULL,
		@Skracenica nvarchar(30) = NULL
)
AS
BEGIN
SELECT NVO.Naziv
FROM NevladinaOrganizacija AS NVO
WHERE NVO.Naziv = @Naziv OR NVO.Skracenica = @Skracenica
RETURN 0
END

EXEC Proc_NVO_Naziv  @Naziv = 'Udruženje osoba sa poteškoæama "Dlan"'
EXEC Proc_NVO_Naziv  @Skracenica = 'Dlan'
GO
select * from NevladinaOrganizacija

-- Ispis podataka o NVO
ALTER   PROC [dbo].[Proc_NVO_PodaciViseDetalja] (
	@ID NVARCHAR(13)
)
AS
BEGIN
SELECT NVO.Logo, NVO.Naziv, NVO.Skracenica, NVO.Opis, NVO.Misija, NVO.Vizija, NVO.Status, NVO.GodinaRegistracije,
	   NVO.IdentifikacijskiBroj, NVO.Email, NVO.Telefon, NVO.Adresa, ZR.BrojZiroRacuna, OSO.Ime, OSO.Prezime, OSO.Email AS 'EmailOsobe',
	   OSO.Telefon AS 'TelefonOdg', T.Naziv AS 'NazivTip', K.Naziv AS 'NazivKategorije', O.Naziv AS 'Opcina', NVO.Mapa
FROM OdgovornaOsobaOrganizacije AS OSO
INNER JOIN NevladinaOrganizacija AS NVO
ON OSO.IdentifikacijskiBroj = NVO.IdentifikacijskiBroj
INNER JOIN ZiroRacun AS ZR
ON NVO.ZiroRacunID = ZR.ZiroRacunID
INNER JOIN TipOrganizacije AS T
ON NVO.TipID = T.TipID
INNER JOIN PripadanjeKategoriji AS PK 
ON NVO.IdentifikacijskiBroj = PK.IdentifikacijskiBroj
INNER JOIN Kategorija AS K
ON PK.KategorijaID = K.KategorijaID
INNER JOIN Opcina AS O
ON NVO.OpcinaID = O.OpcinaID
WHERE NVO.IdentifikacijskiBroj = @ID
RETURN 0
END

EXEC Proc_NVO_PodaciViseDetalja @ID = '854AB3492BB17'
select * from Korisnik
-- Ispis koalicija
CREATE OR ALTER PROC Proc_Ispis_Koalicija
AS
BEGIN
SELECT Naziv
FROM Koalicija
RETURN 0
END

EXEC Proc_Ispis_Koalicija
GO

-- Pretraga po svemu
ALTER PROC Proc_Pretraga_Sve (
    @Entitet nvarchar(80) = NULL,
    @Kanton nvarchar(50) = NULL,
    @Opcina nvarchar(30) = NULL,
    @Skracenica nvarchar(80) = NULL,
    @Tip nvarchar(30) = NULL,
    @Kategorija nvarchar(50) = NULL
)
AS
BEGIN
DECLARE @SQL NVARCHAR(MAX)
DECLARE @Parametri NVARCHAR(300)

SET @Parametri = '@Entitet NVARCHAR(80),
                  @Kanton NVARCHAR(50),
                  @Opcina NVARCHAR(30),
                  @Skracenica NVARCHAR(80),
                  @Tip NVARCHAR(30),
                  @Kategorija NVARCHAR(50)'

SET @SQL = 'SELECT NVO.Naziv, NVO.Logo, NVO.Skracenica, NVO.Opis, NVO.Misija, NVO.Vizija, NVO.Status, NVO.GodinaRegistracije,
	   NVO.IdentifikacijskiBroj, NVO.Email, NVO.Telefon, NVO.Adresa, ZR.BrojZiroRacuna, OSO.Ime, OSO.Prezime, 
	   OSO.Email AS "EmailOsobe", OSO.Telefon AS "TelefonOdg", T.Naziv AS "NazivTip", K.Naziv AS "NazivKantona",
	   O.Naziv AS "Opcina", KAT.Naziv AS "NazivKategorije", NVO.Mapa
            FROM Entitet AS E
            INNER JOIN Kanton AS K
            ON E.EntitetID = K.EntitetID
            INNER JOIN Opcina AS O
            ON K.KantonID = O.KantonID
            INNER JOIN NevladinaOrganizacija AS NVO
            ON O.OpcinaID = NVO.OpcinaID
            INNER JOIN PripadanjeKategoriji  AS PK
            ON PK.IdentifikacijskiBroj = NVO.IdentifikacijskiBroj
            INNER JOIN Kategorija AS KAT
            ON PK.KategorijaID = KAT.KategorijaID
            INNER JOIN TipOrganizacije AS T
            ON NVO.TipID = T.TipID
			INNER JOIN ZiroRacun AS ZR
			ON NVO.ZiroRacunID = ZR.ZiroRacunID
			INNER JOIN OdgovornaOsobaOrganizacije AS OSO
			ON NVO.IdentifikacijskiBroj = OSO.IdentifikacijskiBroj'

IF @Entitet IS NOT NULL AND @Entitet <> '' AND @Entitet <> 'null'
SET @SQL = @SQL + ' AND E.Naziv = @Entitet'

IF @Kanton IS NOT NULL AND @Kanton <> '' AND @Kanton <> 'null'
SET @SQL = @SQL + ' AND K.Naziv = @Kanton'

IF @Opcina IS NOT NULL AND @Opcina <> '' AND @Opcina<> 'null'
SET @SQL = @SQL + ' AND O.Naziv = @Opcina'

IF @Skracenica IS NOT NULL AND @Skracenica <> '' AND @Skracenica <> 'null'
SET @SQL = @SQL + ' AND NVO.Skracenica = @Skracenica'

IF @Tip IS NOT NULL AND @Tip <> '' AND @Tip <> 'null'
SET @SQL = @SQL + ' AND T.Naziv = @Tip'

IF @Kategorija IS NOT NULL AND @Kategorija <> '' AND @Kategorija <> 'null'
SET @SQL = @SQL + ' AND KAT.Naziv = @Kategorija'

EXEC sp_executesql @SQL, @Parametri, @Entitet=@Entitet, @Kanton=@Kanton, @Opcina=@Opcina, @Skracenica=@Skracenica, @Tip=@Tip,
                   @Kategorija=@Kategorija
RETURN 0
END

EXEC Proc_Pretraga_Sve @Tip = 'Fondacija', @Entitet = 'Federacija Bosne i Hercegovine'
EXEC Proc_Pretraga_Sve @Skracenica = 'Dlan'
GO

-- Ispis o koaliciji
CREATE OR ALTER PROC Proc_Ispis_O_Koaliciji (
		@Naziv nvarchar(100)
)
AS
BEGIN
SELECT K.Naziv, K.Opis
FROM Koalicija AS K
INNER JOIN PripradanjeKoaliciji AS PK
ON K.KoalicijaID = PK.KoalicijaID
INNER JOIN NevladinaOrganizacija AS NVO
ON PK.IdentifikacijskiBroj = NVO.IdentifikacijskiBroj
WHERE K.Naziv = @Naziv
RETURN 0
END

EXEC Proc_Ispis_O_Koaliciji @Naziv = 'Koalicija organizacija osoba sa invaliditetom Zenièko-dobojskog kantona'
exec Proc_Ispis_O_Koaliciji @Naziv = NULL
GO

-- Ispis clanica koalicije
CREATE OR ALTER PROC Proc_Ispis_Clanica_Koalicije (
		@Naziv nvarchar(100)
)
AS
BEGIN
SELECT NVO.Naziv
FROM Koalicija AS K
INNER JOIN PripradanjeKoaliciji AS PK
ON K.KoalicijaID = PK.KoalicijaID
INNER JOIN NevladinaOrganizacija AS NVO
ON PK.IdentifikacijskiBroj = NVO.IdentifikacijskiBroj
WHERE K.Naziv = @Naziv
RETURN 0
END

EXEC Proc_Ispis_Clanica_Koalicije @Naziv = 'Koalicija organizacija osoba sa invaliditetom Zenièko-dobojskog kantona'
GO

-- Ispis objava i priloga
CREATE OR ALTER PROC Proc_Ispis_Objava (
		@IdentifikacijskiBroj nvarchar(13)
)
AS
BEGIN
SELECT O.Naziv, O.Sadrzaj, P.Prilog, O.DatumObjave
FROM Prilog AS P
INNER JOIN Objava AS O
ON O.ObjavaID = P.ObjavaID
INNER JOIN Korisnik AS K
ON K.KorisnikID = O.KorisnikID
INNER JOIN NevladinaOrganizacija AS NVO
ON K.IdentifikacijskiBroj = NVO.IdentifikacijskiBroj
WHERE NVO.IdentifikacijskiBroj = @IdentifikacijskiBroj
RETURN 0
END

EXEC Proc_Ispis_Objava @IdentifikacijskiBroj = '123AS4575LA42'
GO

alter table Objava drop column Sadržaj 
alter table Objava add Sadrzaj nvarchar(250) 

-- Ispis o savezu
CREATE OR ALTER PROC Proc_Ispis_O_Savezu (
		@Naziv nvarchar(100)
)
AS
BEGIN
SELECT S.Naziv, S.Opis
FROM Savez AS S
WHERE S.Naziv = @Naziv
RETURN 0
END

EXEC Proc_Ispis_O_Savezu @Naziv = 'Sportski Savez U Bosni I Hercegovini'

GO

SELECT Naziv FROM Savez

-- Ispis clanica koalicije
CREATE OR ALTER PROC Proc_Ispis_Clanica_Saveza (
		@Naziv nvarchar(100)
)
AS
BEGIN
SELECT NVO.Naziv
FROM Savez AS S
INNER JOIN PripradanjeSavezu AS PS
ON S.SavezID = PS.SavezID
INNER JOIN NevladinaOrganizacija AS NVO
ON PS.IdentifikacijskiBroj = NVO.IdentifikacijskiBroj
WHERE S.Naziv = @Naziv
RETURN 0
END

EXEC Proc_Ispis_Clanica_Saveza @Naziv = 'Sportski Savez U Bosni I Hercegovini'
GO

select * from Koalicija


-- Login za korisnike
CREATE OR ALTER PROC Proc_Korisnik_Login (
		@KorisnickoIme nvarchar(50),
		@Lozinka nvarchar(50)
)
AS
BEGIN
SELECT KorisnickoIme, Lozinka
FROM Korisnik
WHERE KorisnickoIme = @KorisnickoIme AND Lozinka = @Lozinka
RETURN 0
END

EXEC Proc_Korisnik_Login @KorisnickoIme = 'Hana Hanic', @Lozinka = 'hanahanic'
GO