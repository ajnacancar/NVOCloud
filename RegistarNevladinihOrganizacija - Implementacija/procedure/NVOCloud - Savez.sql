USE NVOCLOUD
GO

CREATE TABLE Savez
(
 SavezID int NOT NULL IDENTITY(1,1),
 Naziv nvarchar(30) NOT NULL,
 Opis nvarchar(50) NOT NULL,
 CONSTRAINT PK_SavezID PRIMARY KEY (SavezID)
);

CREATE TABLE PripradanjeSavezu
(
 IdentifikacijskiBroj nvarchar(13) NOT NULL,
 SavezID int NOT NULL,
 CONSTRAINT FK_Savez_Pripadanje FOREIGN KEY (SavezID) REFERENCES Savez (SavezID),
 CONSTRAINT FK_NevladinaOrganizacija_Savez FOREIGN KEY (IdentifikacijskiBroj) REFERENCES NevladinaOrganizacija (IdentifikacijskiBroj)
);

ALTER TABLE Savez
DROP COLUMN Opis
GO

ALTER TABLE Savez
ADD Opis text

ALTER TABLE Savez
ALTER COLUMN Naziv nvarchar(100)

INSERT INTO Savez
VALUES ('Savez udruženja osoba s cerebralnom paralizom FBiH', 'Savez udruženja osoba s cerebralnom paralizom FBiH (Savez) osnovan je na Osnivaèkoj skupštini održanoj 17. 10. 2011. godine. Rješenje o registraciji Saveza udruženja osoba s cerebralnom paralizom od Federalnog ministarstva pravde dobiveno je 26. 01. 2012. godine. 
        Tokom protekle godine a zbog datuma izdavanja rješenja o registraciji Savez nije ostvario sredstva iz Federalnog budžeta pa se održao u najveæoj mjeri zahvaljujuæi zalaganju osoba aktivno ukljuèenih u njegovo osnivanje koji funkcije u Savezu obavljaju kao volonteri.

Predsjednica Saveza je doc. dr Emira Švraka (profesorica na Fakultetu zdravstvenih studija u Sarajevu, specijalist fizikalne medicine i rehabilitacije s dugogodišnjim radom u rehabilitaciji djece i adolescenata s multiplim onesposobljenjima). Sekretar Saveza je mr sci. Amela Hamziæ (èlanica Udruženja graðana oboljelih od djeèije cerebralne paralize Kantona Sarajevo). Predsjednica Upravnog odbora je Mirsada Æulov (predsjednica Udruženja oboljelih od djeèije cerebralne paralize i distrofije Bosansko-podrinjskog kantona – Goražde). Predsjednik Skupštine Saveza je Selvedin Dediæ (predsjednik Udruženja roditelja djece oboljele od cerebralne paralize, hidro i mikrocefalusa „Dlan” iz Zenice).
        Ciljevi i djelatnosti
Usmjeravanje i usklaðivanje aktivnosti èlanica u korist osoba s cerebralnom paralizom;
Praæenje, rašèlanjivanje i obraðivanje podataka o populaciji osoba s cerebralnom paralizom na podruèju Federacije Bosne i Hercegovine;
Zalaganje za osposobljavanje zdravstvene službe za pravovremeno otkrivanje, opserviranje, dijagnosticiranje, habilitaciju, rehabilitaciju i prevenciju onesposobljenja;
Praæenje i izuèavanje stanja i potreba osoba s cerebralnom paralizom;
Potsticanje mjera na unapreðivanju socijalne i zdravstvene zaštite, odgoja, obrazovanja, re/habilitacije, osposobljavanja, zapošljavanja i društvenog života osoba s cerebralnom paralizom;
Praæenje i predstavljanje postignuæa na podruèju re/habilitacije i staranja o osobama s cerebralnom paralizom u zemlji i svijetu;
Potsticanje nauèno-istraživaèkog rada u korist osoba s cerebralnom paralizom;
Praæenje primjene deklaracija, konvencija i rezolucija Ujedinjenih naroda i drugih meðunarodnih tijela koje se odnose na prava i status osoba s onesposobljenjem;
Potsticanje mjera i radnji na otklanjanju i sprijeèavanju graditeljskih prepreka u životu osoba s onesposobljenjem;
Zalaganje za inovacije u tehnologiji u korist osoba s onesposobljenjem;
Zalaganje za dograðivanje i osmišljavanje socijalne politike u korist osoba s cerebralnom paralizom;
Razvijanje saradnje s istim ili sliènim domaæim i inostranim udruženjima i ustavnovama u oblasti staranja o osobama s onesposobljenjem;
Predlaganje izmjena i dopuna postojeæih i donošenje novih propisa u korist osoba s cerebralnom paralizom;
Posredovanje pri nabavci i servisiranju ortopedskih i drugih pomagala i sprava za potrebe osoba s cerebralnom paralizom;
Prireðivanje kulturnih, zabavnih, sportskih i drugih priredbi za osobe s cerebralnom paralizom i graðane.'),
       ('Eko-zeleni', 'Na osnovu ukazane potrebe za poduzimanjem mjera na zaštiti u unapreðenju okoliša, prijatelji prirode donijeli su Odluku o  saveza udruženja graðana pod nazivom Ekološki pokret „Eko Zeleni“. 
	                   Ciljevi i zadaci su:

Da u svojim redovima okuplja sve organizacije i pojedince koji su voljni da se vlastitim snagama i sredstvima angažuju na oèuvanju, unapreðenju i zaštiti prirode, na usklaðivanju interesa i odnosa društvenog razvoja sa prirodnim zakonitostima i potrebama ljudi te biljnog i životinjskog svijeta da žive u ekološko èistim i zdravim životnim sredinama.

Podsticanje donošenja zakonske regulative iz oblasti zaštite okoliša usklaðene sa standardima EU.
Angažovanje za efikasniju organizaciju i politiku upravljanja zaštitom okoliša u skladu sa zakonskom regulativom i evropskim standardima.
Praæenje vladinih programa i investiciskih programa poduzeæa i oponiranje programima koji mogu dovesti do ugrožavanja kvalitete zraka,voda,zemèjišta i zdravlja graðana te institiranje da se dalji privredni razvoj bazira na principima održivog razvoja i okolinske sigurnosti.
Pokretanje ekoloških procesa protiv pojava i aktera za koje se ocijeni da su u izrazitoj suprotnosti sa interesima prirode i ugrožavanja zdravlja ljudi.
Pokretanje i sprovoðenje preventivnih mjera na zaštiti okoliša koje æe dovesti do popravljanja kvalitete voda,zraka,zemljišta, razvoja ekološke svijesti i ekološke kulture graðana, razvoja tolerancije i mira.
Uspostavljanje suradnje sa sliènim organizacijama i udrugama i pojedincima kojima je zajednièki cilj zaštita i unapreðenje okoliša, zaštita planete zemlje i stvaranje uvjeta za zdraviji život sadašnjih i buduæih generacija.'),
	   ('Sportski Savez U Bosni I Hercegovini', 'Sportski savez je savez koje kroz animiranje razlièitih aktera i stvaranje uslova za aktivno bavljenje sportom, aktivno doprinosi razvoju sportske, kulturne, socijalne, ekološke, humanitarne svijesti.“

Osnovni ciljevi Sportskog saveza su:

podsticanje razvoja u unapreðenje sporta na podruèu Kantona Sarajevo i šire usklaðivanje i koordiniranje rada udruženih organizacija u sportu po pitanjima od zajednièkog interesa; 
sportska saradnja;
obezbjeðivanje društvenog ugleda i zaštite udruženih organizacija u sportu;
saradnja sa odgovarajuæim državnim društvenim, nauènim i struènim organizacijama i drugim organizacijama, organima i tijelima na realizaciji zadataka od zajednièkog interesa;
stvaranje uslova za organizovanje, provoðenje i razvoj sportskih aktivnosti graðana (sport za sve) i vrhunskog sporta;
praæenje i usklaðivanje kalendara sportskih takmièenja, masovnih priredbi i smotri na podruèju Kantona Sarajevo;
unapreðenje i usavršavanje talentovanih sportista mlaðih uzrasta;
obrazovanje i usavršavanje struènih kadrova;
informativno-obrazovna djelatnost i popularizacija samostalnog provoðenja sportskih aktivnosti graðana (sport za sve) putem sredstava komunikacije;
realizacija informacijskog sistema o organizacijama u sportu, sportistima, struènim kadrovima u sportu, sportskim objektima;
utvrðivanje zajednièkih interesa u vezi korištenja i gradnje sportskih objekata, zdravstvene zaštite sportista i osnovnog standarda perspektivnih i vrhunskih sportista;
èuvanje i unapreðivanje olimpijskih tradicija grada Sarajeva putem sportskih prezentacija, koordinirane sportske saradnje i povezivanja olimpijskih gradova;
predstavljanje i zastupanje po pitanjima od zajednièkog interesa kod nadležnih organa vlasti Kantona Sarajevo, Grada i opština sa podruèja Kantona;
organizovanje i provoðenje sportskog marketinga, igara na sreæu (sportska lutrija) i programa dopunskih djelatnosti, u skladu sa propisima;
sva ostala pitanja za koja se ocijeni da su bitna za razvoj sporta.'),
	   ('Savez Udruženja Kulture', 'Naša misija: Kroz organizaciju razlièitih edukativno-zabavnih dogaðaja za graðane i pružanje podrške graðanima da samostalno organiziraju aktivnosti, Savez æe nastojati da bude sinonim za aktivno djelovanje graðana u zajednici.
	    Savez su osnovali afirmisani umjetnici prevashodno iz oblasti teatarske umjetnosti, ali i umjetnici iz srodnih oblasti, kao što su književnost, pedagogija, sociologija i drugih nauènih i umjetnièkih disciplina. Osnovni zadatak Saveza je razvijanje svijesti o važnosti teatarske umjetnosti, kao i umjetnosti uopæe, kroz realizaciju razlièitih kulturnih i društveno angažovanih projekata. Usmjerenje Saveza je fokusirano prije svega na teatarsku umjetnost i produciranje razlièitih teatarskih sadržaja, dogaðaja i programa koji se ogledaju u vidu predstava, performansa, festivala, umjetnièkih radionica i slièno.')

SELECT *
FROM Savez

UPDATE Savez
SET Opis = 'Savez udruženja osoba s cerebralnom paralizom FBiH (Savez) osnovan je na Osnivaèkoj skupštini održanoj 17. 10. 2011. godine. Rješenje o registraciji Saveza udruženja osoba s cerebralnom paralizom od Federalnog ministarstva pravde dobiveno je 26. 01. 2012. godine. 
        Tokom protekle godine a zbog datuma izdavanja rješenja o registraciji Savez nije ostvario sredstva iz Federalnog budžeta pa se održao u najveæoj mjeri zahvaljujuæi zalaganju osoba aktivno ukljuèenih u njegovo osnivanje koji funkcije u Savezu obavljaju kao volonteri.
<br> <br>
Predsjednica Saveza je doc. dr Emira Švraka (profesorica na Fakultetu zdravstvenih studija u Sarajevu, specijalist fizikalne medicine i rehabilitacije s dugogodišnjim radom u rehabilitaciji djece i adolescenata s multiplim onesposobljenjima). Sekretar Saveza je mr sci. Amela Hamziæ (èlanica Udruženja graðana oboljelih od djeèije cerebralne paralize Kantona Sarajevo). Predsjednica Upravnog odbora je Mirsada Æulov (predsjednica Udruženja oboljelih od djeèije cerebralne paralize i distrofije Bosansko-podrinjskog kantona – Goražde). Predsjednik Skupštine Saveza je Selvedin Dediæ (predsjednik Udruženja roditelja djece oboljele od cerebralne paralize, hidro i mikrocefalusa „Dlan” iz Zenice).
  <br> <br>      Ciljevi i djelatnosti
<br>1. Usmjeravanje i usklaðivanje aktivnosti èlanica u korist osoba s cerebralnom paralizom;
<br>2. Praæenje, rašèlanjivanje i obraðivanje podataka o populaciji osoba s cerebralnom paralizom na podruèju Federacije Bosne i Hercegovine;
<br>3. Zalaganje za osposobljavanje zdravstvene službe za pravovremeno otkrivanje, opserviranje, dijagnosticiranje, habilitaciju, rehabilitaciju i prevenciju onesposobljenja;
<br>4. Praæenje i izuèavanje stanja i potreba osoba s cerebralnom paralizom;
<br>5. Potsticanje mjera na unapreðivanju socijalne i zdravstvene zaštite, odgoja, obrazovanja, re/habilitacije, osposobljavanja, zapošljavanja i društvenog života osoba s cerebralnom paralizom;
<br>6. Praæenje i predstavljanje postignuæa na podruèju re/habilitacije i staranja o osobama s cerebralnom paralizom u zemlji i svijetu;
<br>7. Potsticanje nauèno-istraživaèkog rada u korist osoba s cerebralnom paralizom;
<br>8. Praæenje primjene deklaracija, konvencija i rezolucija Ujedinjenih naroda i drugih meðunarodnih tijela koje se odnose na prava i status osoba s onesposobljenjem;
<br>9. Potsticanje mjera i radnji na otklanjanju i sprijeèavanju graditeljskih prepreka u životu osoba s onesposobljenjem;
<br>10. Zalaganje za inovacije u tehnologiji u korist osoba s onesposobljenjem;
<br>11. Zalaganje za dograðivanje i osmišljavanje socijalne politike u korist osoba s cerebralnom paralizom;
<br>12. Razvijanje saradnje s istim ili sliènim domaæim i inostranim udruženjima i ustavnovama u oblasti staranja o osobama s onesposobljenjem;
<br>13. Predlaganje izmjena i dopuna postojeæih i donošenje novih propisa u korist osoba s cerebralnom paralizom;
<br>14. Posredovanje pri nabavci i servisiranju ortopedskih i drugih pomagala i sprava za potrebe osoba s cerebralnom paralizom;
<br>15. Prireðivanje kulturnih, zabavnih, sportskih i drugih priredbi za osobe s cerebralnom paralizom i graðane.'
WHERE SavezID = 1

UPDATE Savez
SET Opis = 'Savez udruženja osoba s cerebralnom paralizom FBiH (Savez) osnovan je na Osnivaèkoj skupštini održanoj 17. 10. 2011. godine. Rješenje o registraciji Saveza udruženja osoba s cerebralnom paralizom od Federalnog ministarstva pravde dobiveno je 26. 01. 2012. godine. 
        Tokom protekle godine a zbog datuma izdavanja rješenja o registraciji Savez nije ostvario sredstva iz Federalnog budžeta pa se održao u najveæoj mjeri zahvaljujuæi zalaganju osoba aktivno ukljuèenih u njegovo osnivanje koji funkcije u Savezu obavljaju kao volonteri.
<br> <br>
Predsjednica Saveza je doc. dr Emira Švraka (profesorica na Fakultetu zdravstvenih studija u Sarajevu, specijalist fizikalne medicine i rehabilitacije s dugogodišnjim radom u rehabilitaciji djece i adolescenata s multiplim onesposobljenjima). Sekretar Saveza je mr sci. Amela Hamziæ (èlanica Udruženja graðana oboljelih od djeèije cerebralne paralize Kantona Sarajevo). Predsjednica Upravnog odbora je Mirsada Æulov (predsjednica Udruženja oboljelih od djeèije cerebralne paralize i distrofije Bosansko-podrinjskog kantona – Goražde). Predsjednik Skupštine Saveza je Selvedin Dediæ (predsjednik Udruženja roditelja djece oboljele od cerebralne paralize, hidro i mikrocefalusa „Dlan” iz Zenice).
  <br> <br>      Ciljevi i djelatnosti
<br>1. Usmjeravanje i usklaðivanje aktivnosti èlanica u korist osoba s cerebralnom paralizom;
<br>2. Praæenje, rašèlanjivanje i obraðivanje podataka o populaciji osoba s cerebralnom paralizom na podruèju Federacije Bosne i Hercegovine;
<br>3. Zalaganje za osposobljavanje zdravstvene službe za pravovremeno otkrivanje, opserviranje, dijagnosticiranje, habilitaciju, rehabilitaciju i prevenciju onesposobljenja;
<br>4. Praæenje i izuèavanje stanja i potreba osoba s cerebralnom paralizom;
<br>5. Potsticanje mjera na unapreðivanju socijalne i zdravstvene zaštite, odgoja, obrazovanja, re/habilitacije, osposobljavanja, zapošljavanja i društvenog života osoba s cerebralnom paralizom;
<br>6. Praæenje i predstavljanje postignuæa na podruèju re/habilitacije i staranja o osobama s cerebralnom paralizom u zemlji i svijetu;
<br>7. Potsticanje nauèno-istraživaèkog rada u korist osoba s cerebralnom paralizom;
<br>8. Praæenje primjene deklaracija, konvencija i rezolucija Ujedinjenih naroda i drugih meðunarodnih tijela koje se odnose na prava i status osoba s onesposobljenjem;
<br>9. Potsticanje mjera i radnji na otklanjanju i sprijeèavanju graditeljskih prepreka u životu osoba s onesposobljenjem;
<br>10. Zalaganje za inovacije u tehnologiji u korist osoba s onesposobljenjem;
<br>11. Zalaganje za dograðivanje i osmišljavanje socijalne politike u korist osoba s cerebralnom paralizom;
<br>12. Razvijanje saradnje s istim ili sliènim domaæim i inostranim udruženjima i ustavnovama u oblasti staranja o osobama s onesposobljenjem;
<br>13. Predlaganje izmjena i dopuna postojeæih i donošenje novih propisa u korist osoba s cerebralnom paralizom;
<br>14. Posredovanje pri nabavci i servisiranju ortopedskih i drugih pomagala i sprava za potrebe osoba s cerebralnom paralizom;
<br>15. Prireðivanje kulturnih, zabavnih, sportskih i drugih priredbi za osobe s cerebralnom paralizom i graðane.'
WHERE SavezID = 1

UPDATE Savez
SET Opis = 'Na osnovu ukazane potrebe za poduzimanjem mjera na zaštiti u unapreðenju okoliša, prijatelji prirode donijeli su Odluku o  saveza udruženja graðana pod nazivom Ekološki pokret „Eko Zeleni“. 
<br><br>	                   Ciljevi i zadaci su:

<br>1. Da u svojim redovima okuplja sve organizacije i pojedince koji su voljni da se vlastitim snagama i sredstvima angažuju na oèuvanju, unapreðenju i zaštiti prirode, na usklaðivanju interesa i odnosa društvenog razvoja sa prirodnim zakonitostima i potrebama ljudi te biljnog i životinjskog svijeta da žive u ekološko èistim i zdravim životnim sredinama.

<br>2. Podsticanje donošenja zakonske regulative iz oblasti zaštite okoliša usklaðene sa standardima EU.
<br>3. Angažovanje za efikasniju organizaciju i politiku upravljanja zaštitom okoliša u skladu sa zakonskom regulativom i evropskim standardima.
<br>4. Praæenje vladinih programa i investiciskih programa poduzeæa i oponiranje programima koji mogu dovesti do ugrožavanja kvalitete zraka,voda,zemèjišta i zdravlja graðana te institiranje da se dalji privredni razvoj bazira na principima održivog razvoja i okolinske sigurnosti.
<br>5. Pokretanje ekoloških procesa protiv pojava i aktera za koje se ocijeni da su u izrazitoj suprotnosti sa interesima prirode i ugrožavanja zdravlja ljudi.
<br>6. Pokretanje i sprovoðenje preventivnih mjera na zaštiti okoliša koje æe dovesti do popravljanja kvalitete voda,zraka,zemljišta, razvoja ekološke svijesti i ekološke kulture graðana, razvoja tolerancije i mira.
<br>7. Uspostavljanje suradnje sa sliènim organizacijama i udrugama i pojedincima kojima je zajednièki cilj zaštita i unapreðenje okoliša, zaštita planete zemlje i stvaranje uvjeta za zdraviji život sadašnjih i buduæih generacija.'
WHERE SavezID = 2

UPDATE Savez
SET Opis = 'Sportski savez je savez koje kroz animiranje razlièitih aktera i stvaranje uslova za aktivno bavljenje sportom, aktivno doprinosi razvoju sportske, kulturne, socijalne, ekološke, humanitarne svijesti.“
<br><br>
Osnovni ciljevi Sportskog saveza su:

<br>1. Podsticanje razvoja u unapreðenje sporta na podruèu Kantona Sarajevo i šire usklaðivanje i koordiniranje rada udruženih organizacija u sportu po pitanjima od zajednièkog interesa; 
<br>2. Sportska saradnja;
<br>3. Obezbjeðivanje društvenog ugleda i zaštite udruženih organizacija u sportu;
<br>4. Saradnja sa odgovarajuæim državnim društvenim, nauènim i struènim organizacijama i drugim organizacijama, organima i tijelima na realizaciji zadataka od zajednièkog interesa;
<br>5. Stvaranje uslova za organizovanje, provoðenje i razvoj sportskih aktivnosti graðana (sport za sve) i vrhunskog sporta;
<br>6. Praæenje i usklaðivanje kalendara sportskih takmièenja, masovnih priredbi i smotri na podruèju Kantona Sarajevo;
<br>7. Unapreðenje i usavršavanje talentovanih sportista mlaðih uzrasta;
<br>8. Obrazovanje i usavršavanje struènih kadrova;
<br>9. Informativno-obrazovna djelatnost i popularizacija samostalnog provoðenja sportskih aktivnosti graðana (sport za sve) putem sredstava komunikacije;
<br>10. Realizacija informacijskog sistema o organizacijama u sportu, sportistima, struènim kadrovima u sportu, sportskim objektima;
<br>11. Utvrðivanje zajednièkih interesa u vezi korištenja i gradnje sportskih objekata, zdravstvene zaštite sportista i osnovnog standarda perspektivnih i vrhunskih sportista;
<br>12. Èuvanje i unapreðivanje olimpijskih tradicija grada Sarajeva putem sportskih prezentacija, koordinirane sportske saradnje i povezivanja olimpijskih gradova;
<br>13. Predstavljanje i zastupanje po pitanjima od zajednièkog interesa kod nadležnih organa vlasti Kantona Sarajevo, Grada i opština sa podruèja Kantona;
<br>14. Organizovanje i provoðenje sportskog marketinga, igara na sreæu (sportska lutrija) i programa dopunskih djelatnosti, u skladu sa propisima;
<br>15. Sva ostala pitanja za koja se ocijeni da su bitna za razvoj sporta.'
WHERE SavezID = 3

UPDATE Savez
SET Opis = 'Naša misija: Kroz organizaciju razlièitih edukativno-zabavnih dogaðaja za graðane i pružanje podrške graðanima da samostalno organiziraju aktivnosti, Savez æe nastojati da bude sinonim za aktivno djelovanje graðana u zajednici.
	   <br><br> Savez su osnovali afirmisani umjetnici prevashodno iz oblasti teatarske umjetnosti, ali i umjetnici iz srodnih oblasti, kao što su književnost, pedagogija, sociologija i drugih nauènih i umjetnièkih disciplina. 
	   <br><br> Osnovni zadatak Saveza je razvijanje svijesti o važnosti teatarske umjetnosti, kao i umjetnosti uopæe, kroz realizaciju razlièitih kulturnih i društveno angažovanih projekata. Usmjerenje Saveza je fokusirano prije svega na teatarsku umjetnost i produciranje razlièitih teatarskih sadržaja, dogaðaja i programa koji se ogledaju u vidu predstava, performansa, festivala, umjetnièkih radionica i slièno.'
WHERE SavezID = 4

SELECT *
FROM NevladinaOrganizacija

INSERT INTO PripradanjeSavezu
VALUES ('123AS4575LA42', 1),
       ('493KH7751PP12', 2),
	   ('884CS444TU44', 2),
	   ('541TK4251AA75', 3),
	   ('912AT3765LG24', 3),
	   ('751AB4441NA34', 4)

SELECT *
FROM PripradanjeSavezu