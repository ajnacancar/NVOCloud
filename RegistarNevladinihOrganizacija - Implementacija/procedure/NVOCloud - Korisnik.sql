USE NVOCLOUD
GO

SELECT *
FROM Korisnik


ALTER TABLE Korisnik
ALTER COLUMN IdentifikacijskiBroj nvarchar(13)

UPDATE Korisnik
SET IdentifikacijskiBroj = NULL
WHERE KorisnikID = 10

ALTER TABLE Korisnik
ADD KorisnickoIme nvarchar(50)

ALTER TABLE Korisnik
ADD Lozinka nvarchar(50)

UPDATE Korisnik
SET KorisnickoIme = 'Durmo Durmic'
WHERE KorisnikID = 1

UPDATE Korisnik
SET Lozinka = 'durmodurmic'
WHERE KorisnikID = 1

UPDATE Korisnik
SET KorisnickoIme = 'Hana Hanic'
WHERE KorisnikID = 2

UPDATE Korisnik
SET Lozinka = 'hanahanic'
WHERE KorisnikID = 2

UPDATE Korisnik
SET KorisnickoIme = 'Harun Horic'
WHERE KorisnikID = 3

UPDATE Korisnik
SET Lozinka = 'harunhoric'
WHERE KorisnikID = 3

UPDATE Korisnik
SET KorisnickoIme = 'Hamza Hamzic'
WHERE KorisnikID = 4

UPDATE Korisnik
SET Lozinka = 'hamzahamzic'
WHERE KorisnikID = 4

UPDATE Korisnik
SET KorisnickoIme = 'Dora Doric'
WHERE KorisnikID = 5

UPDATE Korisnik
SET Lozinka = 'doradoric'
WHERE KorisnikID = 5

UPDATE Korisnik
SET KorisnickoIme = 'Dara Daric'
WHERE KorisnikID = 6

UPDATE Korisnik
SET Lozinka = 'daradaric'
WHERE KorisnikID = 6

UPDATE Korisnik
SET KorisnickoIme = 'Maja Majic'
WHERE KorisnikID = 7

UPDATE Korisnik
SET Lozinka = 'majamajic'
WHERE KorisnikID = 7

UPDATE Korisnik
SET KorisnickoIme = 'Hasan Hasic'
WHERE KorisnikID = 8

UPDATE Korisnik
SET Lozinka = 'hasanhasic'
WHERE KorisnikID = 8

UPDATE Korisnik
SET KorisnickoIme = 'Ado Adic'
WHERE KorisnikID = 9

UPDATE Korisnik
SET Lozinka = 'adoadic'
WHERE KorisnikID = 9

UPDATE Korisnik
SET KorisnickoIme = 'Alma Alic'
WHERE KorisnikID = 10

UPDATE Korisnik
SET Lozinka = 'almaalic'
WHERE KorisnikID = 10

ALTER TABLE Korisnik
ALTER COLUMN KorisnickoIme nvarchar(50) NOT NULL

ALTER TABLE Korisnik
ALTER COLUMN Lozinka nvarchar(50) NOT NULL

select * from Korisnik