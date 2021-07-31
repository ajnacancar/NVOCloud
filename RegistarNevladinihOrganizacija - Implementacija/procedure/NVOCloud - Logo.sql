USE NVOCLOUD
GO

ALTER TABLE NevladinaOrganizacija
DROP COLUMN Logo

ALTER TABLE NevladinaOrganizacija
ADD Logo NVARCHAR(100)

EXEC sp_helpsrvrolemember 'bulkadmin'

UPDATE NevladinaOrganizacija 
SET Logo =  '\Logo\pomozi.jpg'
WHERE IdentifikacijskiBroj = '111FR7781WL45'

UPDATE NevladinaOrganizacija
SET Logo = '\Logo\dlan.jpg'
WHERE IdentifikacijskiBroj = '123AS4575LA42'

UPDATE NevladinaOrganizacija 
SET Logo = '/Logo/prijatelji.jpg'
WHERE IdentifikacijskiBroj = '493KH7751PP12'

UPDATE NevladinaOrganizacija 
SET Logo = '/Logo/paintball.jpg'
WHERE IdentifikacijskiBroj = '541TK4251AA75'

UPDATE NevladinaOrganizacija 
SET Logo = '/Logo/preporod.jpg'
WHERE IdentifikacijskiBroj = '751AB4441NA34'

UPDATE NevladinaOrganizacija 
SET Logo = '/Logo/svijet.jpg'
WHERE IdentifikacijskiBroj = '854AB3492BB17'

UPDATE NevladinaOrganizacija 
SET Logo = '/Logo/vizija.jpg'
WHERE IdentifikacijskiBroj = '884CS444TU44'

UPDATE NevladinaOrganizacija 
SET Logo = '/Logo/studium.jpg'
WHERE IdentifikacijskiBroj = '895SS3451LA85'

UPDATE NevladinaOrganizacija 
SET Logo = '/Logo/dragunja.jpg'
WHERE IdentifikacijskiBroj = '912AT3765LG24'

UPDATE NevladinaOrganizacija 
SET Logo = '/Logo/napredak.jpg'
WHERE IdentifikacijskiBroj = '999CP1176MS67'

SELECT Logo from NevladinaOrganizacija

ALTER TABLE NevladinaOrganizacija
ALTER COLUMN Skracenica nvarchar(30) NOT NULL

UPDATE NevladinaOrganizacija
SET Skracenica = 'Svijet u slikama'
WHERE IdentifikacijskiBroj = '854AB3492BB17'

SELECT *
FROM NevladinaOrganizacija
