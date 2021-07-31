USE NVOCLOUD
GO

ALTER TABLE Koalicija
DROP COLUMN Opis
GO

ALTER TABLE Koalicija
ADD Opis nvarchar(MAX) 
 select * from Koalicija


 UPDATE Koalicija
 SET Opis = 'Koalicija organizacija osoba sa invaliditetom Tuzlanskog kantona je neformalno kordinaciono tijelo organizacija osoba sa invaliditetom sa podru�ja kantona, a koje su saglasne sa ciljevima i principima djelovanja Koalicije iskazanih u izjavi o osnivanju, �ijim se zajedni�kim djelovanjem osigurava unapre�enje dru�tvenog polo�aja osoba sa invaliditetom i realizuju aktivnosti koje za cilj imaju osiguravanje promjena koje �e rezultirati pove�anom uklju�eno��u osoba sa invaliditetom u aktivnosti zajednice.
<br><br>
Koalicija je osnovana 2011. godine, a trenutno Koaliciju �ini osam organizacije osoba sa invaliditetom iz pet op�tina Tuzlanskog kantona.
Koalicija organizacija osoba sa invaliditetom Tuzlanskog kantona zajedno sa drugim koalicijama kroz MyRight program zajedni�kih aktivnosti radi na pobolj�anju polo�aja osoba sa invaliditetom u svim segmentima �ivota i dru�tva.'
WHERE KoalicijaID = 1


 UPDATE Koalicija 
 SET Opis = 'Koalicija organizacija osoba s invaliditetom (OOSI) Zeni�ko-dobojskog kantona nastala je kao potreba da se na adekvatan na�in odgovori na potrebe osoba s invaliditetom (OSI) u na�em kantonu, kao i potrebe davanja smjernica za implementaciju Strategije u oblasti invalidnosti u FBiH.
Stvaranje Koalicije ZDK, kao i ostalih 9 koalicija u Federaciji BiH iniciralo je i podr�alo Federalno Ministarstvo rada i socijalne politike, a kao partner i lider Koalicije u na�em kantonu odabrano je Udru�enje "Svjetlost� iz Zenice.
<br><br>
Koalicija OOSI ZDK formirana je u avgustu 2013. godine s ciljem izrade Nacrta i implementacije dijela prioriteta plana akcijeu oblasti invalidnosti u lokalnim zajednicama i �ini je 9 organizacija osoba sa invaliditetom koje okupljaju OSI razli�itog oblika invaliditeta.'
WHERE KoalicijaID = 2

 UPDATE Koalicija
 SET Opis = 'Koalicija "Zajedno smo ja�i" je osnovana u martu/o�ujku 2011. godine kao nevladina, nepoliti�ka, neprofitna i dobrovoljna mre�a udru�enja osoba sa invalidtetom i njihovih prijatelja, koja je osnovana radi zagovaranja ostvarivanja interesa i prava osoba s invaliditetom.
 <br><br>
Va�na uloga Koalicije kao jedinstvene forme o�ituje se kroz sna�no zagovaranje u ostvarivanju prava osoba sa invaliditetom, promjenu odnosa dru�tva prema osobama sa invaliditetom, i da se kroz osna�ivanje osoba sa invaliditetom osna�e organizacija osoba sa invaliditetom na lokalnom i nacionalnom nivou.
<br><br>
Vizija Koalicije "Zajedno smo ja�i" je da se djelovanjem kroz zajedni�ku i osna�enu strukturu mre�e/koalicije, udru�enim snagama do�e do ostvarivanja prava i boljih uslova �ivota pomenute populacije u Hercegova�ko-neretvanskom kantonu/�upaniji (HNK/�), pod motom: "Korak po korak do socijalne uklju�enosti".'
WHERE KoalicijaID = 3

 UPDATE Koalicija
 SET Opis = 'Koalicija predstavlja mre�u nevladnih organizacija koje se bave za�titiom �ivotne sredine. <br><br>
 Vizija: Svaki pojedinac je aktivno uklju�en u za�titu �ivotne sredine, a odr�ivi razvoj postignut.<br><br>
 Misija: <br>1. Okupljanje ljubitelja prirode u jedinstvenu mre�u sa ciljem edukacije i uspostavljanja pravilnog odnosa prema zdravom na�inu �ivota
 <br>2. Davanje doprinosa rje�avanju ekolo�kih problema na na�in da se postoje�e stanje zamijeni aktivnim pozitivnim odnosom prema prirodnim resursima, skrene pa�nja, na potrebu u�e��a svakog pojedinca u za�titi okoli�a
 <br>3. Edukacija i podizanje ekolo�ke svijesti kod djece i mladih
<br>4. Organizacija razli�itih ekolo�kih aktivnosti (radionice, akcije, edukativni programi, demonstracije, lobiranja, istra�ivanje, ekolo�ko � kulturne i druge manifestacije)
 <br>5. Pove�anje u�e��a gra�ana u procesu odlu�ivanja o pitanjima za�tite �ovjekove okoline i dono�enja odgovaraju�ih akcionih planova
<br>6. Izgra�ivanje, definisanje i zastupanje prijedloga, odluka i stavova, mi�ljenja i inicijativa o pitanjima od zajedni�kog interesa na polju ekologije
 <br>7. Unapre�enje ekolo�kih, kulturnih, obrazovnih, nau�nih, socijalnih, ekonomskih, zdravstvenih, sportskih i �ivotnih interesa ljudi
<br>8. Uspostavljanje zajedni�ke osnove za ekolo�ku saradnju na nivou cijele BiH
 <br>9. Izdava�ko publicisti�ka i medijska djelatnost ekolo�kog sadr�aja. '
WHERE KoalicijaID = 4

 UPDATE Koalicija
 SET Opis = 'Koordinacioni odbor udru�enja osoba sa invaliditetom Kantona Sarajevo (KOO KS) je neformalno koordinaciono tijelo udru�enja osoba sa invaliditetom, sa podru�ja Kantona Sarajevo, koji �ini 9 organizacija osoba sa invaliditetom.
 <br><br>
Koordinacioni odbor je osnovan u avgustu 1992. godine, dogovorom udru�enja osoba sa invaliditetom, koje su tada djelovale na podru�ju grada Sarajeva, s ciljem da se koordiniraju aktivnosti udru�enja osoba sa invaliditetom u ratnim uvjetima.
<br><br>
Koordinacioni odbor je svoj rad prilago�avao promjenama koje su se de�avale u BiH dru�tvu.
<br><br>
Sporazumom o radu i djelovanju Koordinacionog odbora udru�enja osoba sa invaliditetom Kantona Sarajevo, koji je potpisan 2011. godine, utvr�eno je da KOO KS djeluje u cilju promovisanja, unapre�ivanja i za�tite prava i interesa udru�enja osoba sa invaliditetom i njihovog �lanstva.
<br><br>
Sve aktivnosti KOO KS usmjerene su na pove�anje socijalne uklju�enosti osoba sa invaliditetom, razvijanju me�usobne saradnje udru�enja osoba sa invaliditetom i gra�enju partnerskih odnosa sa institucijama vlasti.'
 WHERE KoalicijaID = 5

SELECT *
FROM Koalicija

ALTER TABLE Koalicija
ALTER COLUMN Opis text NOT NULL

ALTER TABLE Korisnik
ALTER COLUMN Ime nvarchar(30) NOT NULL

ALTER TABLE Korisnik
ALTER COLUMN Prezime nvarchar(40) NOT NULL

ALTER TABLE Korisnik
ALTER COLUMN Email nvarchar(50) NOT NULL

ALTER TABLE Korisnik
ALTER COLUMN Adresa nvarchar(50) NOT NULL

ALTER TABLE NevladinaOrganizacija
ALTER COLUMN Vizija nvarchar(200) NOT NULL

ALTER TABLE NevladinaOrganizacija
ALTER COLUMN Email nvarchar(50) NOT NULL

ALTER TABLE NevladinaOrganizacija
ALTER COLUMN Adresa nvarchar(50) NOT NULL

ALTER TABLE NevladinaOrganizacija
ALTER COLUMN Naziv nvarchar(100) NOT NULL

ALTER TABLE Objava
ALTER COLUMN Sadr�aj text NOT NULL

ALTER TABLE OdgovornaOsobaOrganizacije
ALTER COLUMN Ime nvarchar(30) NOT NULL

ALTER TABLE OdgovornaOsobaOrganizacije
ALTER COLUMN Prezime nvarchar(40) NOT NULL

ALTER TABLE OdgovornaOsobaOrganizacije
ALTER COLUMN Email nvarchar(50) NOT NULL

ALTER TABLE TipOrganizacije
ALTER COLUMN Naziv nvarchar(80) NOT NULL

ALTER TABLE TipOrganizacije
ALTER COLUMN Opis nvarchar(150) NOT NULL