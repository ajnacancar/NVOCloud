USE NVOCLOUD
GO

ALTER TABLE Koalicija
DROP COLUMN Opis
GO

ALTER TABLE Koalicija
ADD Opis nvarchar(MAX) 
 select * from Koalicija


 UPDATE Koalicija
 SET Opis = 'Koalicija organizacija osoba sa invaliditetom Tuzlanskog kantona je neformalno kordinaciono tijelo organizacija osoba sa invaliditetom sa podruèja kantona, a koje su saglasne sa ciljevima i principima djelovanja Koalicije iskazanih u izjavi o osnivanju, èijim se zajednièkim djelovanjem osigurava unapreðenje društvenog položaja osoba sa invaliditetom i realizuju aktivnosti koje za cilj imaju osiguravanje promjena koje æe rezultirati poveæanom ukljuèenošæu osoba sa invaliditetom u aktivnosti zajednice.
<br><br>
Koalicija je osnovana 2011. godine, a trenutno Koaliciju èini osam organizacije osoba sa invaliditetom iz pet opština Tuzlanskog kantona.
Koalicija organizacija osoba sa invaliditetom Tuzlanskog kantona zajedno sa drugim koalicijama kroz MyRight program zajednièkih aktivnosti radi na poboljšanju položaja osoba sa invaliditetom u svim segmentima života i društva.'
WHERE KoalicijaID = 1


 UPDATE Koalicija 
 SET Opis = 'Koalicija organizacija osoba s invaliditetom (OOSI) Zenièko-dobojskog kantona nastala je kao potreba da se na adekvatan naèin odgovori na potrebe osoba s invaliditetom (OSI) u našem kantonu, kao i potrebe davanja smjernica za implementaciju Strategije u oblasti invalidnosti u FBiH.
Stvaranje Koalicije ZDK, kao i ostalih 9 koalicija u Federaciji BiH iniciralo je i podržalo Federalno Ministarstvo rada i socijalne politike, a kao partner i lider Koalicije u našem kantonu odabrano je Udruženje "Svjetlost” iz Zenice.
<br><br>
Koalicija OOSI ZDK formirana je u avgustu 2013. godine s ciljem izrade Nacrta i implementacije dijela prioriteta plana akcijeu oblasti invalidnosti u lokalnim zajednicama i èini je 9 organizacija osoba sa invaliditetom koje okupljaju OSI razlièitog oblika invaliditeta.'
WHERE KoalicijaID = 2

 UPDATE Koalicija
 SET Opis = 'Koalicija "Zajedno smo jaèi" je osnovana u martu/ožujku 2011. godine kao nevladina, nepolitièka, neprofitna i dobrovoljna mreža udruženja osoba sa invalidtetom i njihovih prijatelja, koja je osnovana radi zagovaranja ostvarivanja interesa i prava osoba s invaliditetom.
 <br><br>
Važna uloga Koalicije kao jedinstvene forme oèituje se kroz snažno zagovaranje u ostvarivanju prava osoba sa invaliditetom, promjenu odnosa društva prema osobama sa invaliditetom, i da se kroz osnaživanje osoba sa invaliditetom osnaže organizacija osoba sa invaliditetom na lokalnom i nacionalnom nivou.
<br><br>
Vizija Koalicije "Zajedno smo jaèi" je da se djelovanjem kroz zajednièku i osnaženu strukturu mreže/koalicije, udruženim snagama doðe do ostvarivanja prava i boljih uslova života pomenute populacije u Hercegovaèko-neretvanskom kantonu/županiji (HNK/Ž), pod motom: "Korak po korak do socijalne ukljuèenosti".'
WHERE KoalicijaID = 3

 UPDATE Koalicija
 SET Opis = 'Koalicija predstavlja mrežu nevladnih organizacija koje se bave zaštitiom životne sredine. <br><br>
 Vizija: Svaki pojedinac je aktivno ukljuèen u zaštitu životne sredine, a održivi razvoj postignut.<br><br>
 Misija: <br>1. Okupljanje ljubitelja prirode u jedinstvenu mrežu sa ciljem edukacije i uspostavljanja pravilnog odnosa prema zdravom naèinu života
 <br>2. Davanje doprinosa rješavanju ekoloških problema na naèin da se postojeæe stanje zamijeni aktivnim pozitivnim odnosom prema prirodnim resursima, skrene pažnja, na potrebu uèešæa svakog pojedinca u zaštiti okoliša
 <br>3. Edukacija i podizanje ekološke svijesti kod djece i mladih
<br>4. Organizacija razlièitih ekoloških aktivnosti (radionice, akcije, edukativni programi, demonstracije, lobiranja, istraživanje, ekološko – kulturne i druge manifestacije)
 <br>5. Poveæanje uèešæa graðana u procesu odluèivanja o pitanjima zaštite èovjekove okoline i donošenja odgovarajuæih akcionih planova
<br>6. Izgraðivanje, definisanje i zastupanje prijedloga, odluka i stavova, mišljenja i inicijativa o pitanjima od zajednièkog interesa na polju ekologije
 <br>7. Unapreðenje ekoloških, kulturnih, obrazovnih, nauènih, socijalnih, ekonomskih, zdravstvenih, sportskih i životnih interesa ljudi
<br>8. Uspostavljanje zajednièke osnove za ekološku saradnju na nivou cijele BiH
 <br>9. Izdavaèko publicistièka i medijska djelatnost ekološkog sadržaja. '
WHERE KoalicijaID = 4

 UPDATE Koalicija
 SET Opis = 'Koordinacioni odbor udruženja osoba sa invaliditetom Kantona Sarajevo (KOO KS) je neformalno koordinaciono tijelo udruženja osoba sa invaliditetom, sa podruèja Kantona Sarajevo, koji èini 9 organizacija osoba sa invaliditetom.
 <br><br>
Koordinacioni odbor je osnovan u avgustu 1992. godine, dogovorom udruženja osoba sa invaliditetom, koje su tada djelovale na podruèju grada Sarajeva, s ciljem da se koordiniraju aktivnosti udruženja osoba sa invaliditetom u ratnim uvjetima.
<br><br>
Koordinacioni odbor je svoj rad prilagoðavao promjenama koje su se dešavale u BiH društvu.
<br><br>
Sporazumom o radu i djelovanju Koordinacionog odbora udruženja osoba sa invaliditetom Kantona Sarajevo, koji je potpisan 2011. godine, utvrðeno je da KOO KS djeluje u cilju promovisanja, unapreðivanja i zaštite prava i interesa udruženja osoba sa invaliditetom i njihovog èlanstva.
<br><br>
Sve aktivnosti KOO KS usmjerene su na poveæanje socijalne ukljuèenosti osoba sa invaliditetom, razvijanju meðusobne saradnje udruženja osoba sa invaliditetom i graðenju partnerskih odnosa sa institucijama vlasti.'
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
ALTER COLUMN Sadržaj text NOT NULL

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