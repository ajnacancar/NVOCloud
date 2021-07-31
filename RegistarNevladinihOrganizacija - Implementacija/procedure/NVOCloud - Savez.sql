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
VALUES ('Savez udru�enja osoba s cerebralnom paralizom FBiH', 'Savez udru�enja osoba s cerebralnom paralizom FBiH (Savez) osnovan je na Osniva�koj skup�tini odr�anoj 17. 10. 2011. godine. Rje�enje o registraciji Saveza udru�enja osoba s cerebralnom paralizom od Federalnog ministarstva pravde dobiveno je 26. 01. 2012. godine. 
        Tokom protekle godine a zbog datuma izdavanja rje�enja o registraciji Savez nije ostvario sredstva iz Federalnog bud�eta pa se odr�ao u najve�oj mjeri zahvaljuju�i zalaganju osoba aktivno uklju�enih u njegovo osnivanje koji funkcije u Savezu obavljaju kao volonteri.

Predsjednica Saveza je doc. dr Emira �vraka (profesorica na Fakultetu zdravstvenih studija u Sarajevu, specijalist fizikalne medicine i rehabilitacije s dugogodi�njim radom u rehabilitaciji djece i adolescenata s multiplim onesposobljenjima). Sekretar Saveza je mr sci. Amela Hamzi� (�lanica Udru�enja gra�ana oboljelih od dje�ije cerebralne paralize Kantona Sarajevo). Predsjednica Upravnog odbora je Mirsada �ulov (predsjednica Udru�enja oboljelih od dje�ije cerebralne paralize i distrofije Bosansko-podrinjskog kantona � Gora�de). Predsjednik Skup�tine Saveza je Selvedin Dedi� (predsjednik Udru�enja roditelja djece oboljele od cerebralne paralize, hidro i mikrocefalusa �Dlan� iz Zenice).
        Ciljevi i djelatnosti
Usmjeravanje i uskla�ivanje aktivnosti �lanica u korist osoba s cerebralnom paralizom;
Pra�enje, ra��lanjivanje i obra�ivanje podataka o populaciji osoba s cerebralnom paralizom na podru�ju Federacije Bosne i Hercegovine;
Zalaganje za osposobljavanje zdravstvene slu�be za pravovremeno otkrivanje, opserviranje, dijagnosticiranje, habilitaciju, rehabilitaciju i prevenciju onesposobljenja;
Pra�enje i izu�avanje stanja i potreba osoba s cerebralnom paralizom;
Potsticanje mjera na unapre�ivanju socijalne i zdravstvene za�tite, odgoja, obrazovanja, re/habilitacije, osposobljavanja, zapo�ljavanja i dru�tvenog �ivota osoba s cerebralnom paralizom;
Pra�enje i predstavljanje postignu�a na podru�ju re/habilitacije i staranja o osobama s cerebralnom paralizom u zemlji i svijetu;
Potsticanje nau�no-istra�iva�kog rada u korist osoba s cerebralnom paralizom;
Pra�enje primjene deklaracija, konvencija i rezolucija Ujedinjenih naroda i drugih me�unarodnih tijela koje se odnose na prava i status osoba s onesposobljenjem;
Potsticanje mjera i radnji na otklanjanju i sprije�avanju graditeljskih prepreka u �ivotu osoba s onesposobljenjem;
Zalaganje za inovacije u tehnologiji u korist osoba s onesposobljenjem;
Zalaganje za dogra�ivanje i osmi�ljavanje socijalne politike u korist osoba s cerebralnom paralizom;
Razvijanje saradnje s istim ili sli�nim doma�im i inostranim udru�enjima i ustavnovama u oblasti staranja o osobama s onesposobljenjem;
Predlaganje izmjena i dopuna postoje�ih i dono�enje novih propisa u korist osoba s cerebralnom paralizom;
Posredovanje pri nabavci i servisiranju ortopedskih i drugih pomagala i sprava za potrebe osoba s cerebralnom paralizom;
Prire�ivanje kulturnih, zabavnih, sportskih i drugih priredbi za osobe s cerebralnom paralizom i gra�ane.'),
       ('Eko-zeleni', 'Na osnovu ukazane potrebe za poduzimanjem mjera na za�titi u unapre�enju okoli�a, prijatelji prirode donijeli su Odluku o  saveza udru�enja gra�ana pod nazivom Ekolo�ki pokret �Eko Zeleni�. 
	                   Ciljevi i zadaci su:

Da u svojim redovima okuplja sve organizacije i pojedince koji su voljni da se vlastitim snagama i sredstvima anga�uju na o�uvanju, unapre�enju i za�titi prirode, na uskla�ivanju interesa i odnosa dru�tvenog razvoja sa prirodnim zakonitostima i potrebama ljudi te biljnog i �ivotinjskog svijeta da �ive u ekolo�ko �istim i zdravim �ivotnim sredinama.

Podsticanje dono�enja zakonske regulative iz oblasti za�tite okoli�a uskla�ene sa standardima EU.
Anga�ovanje za efikasniju organizaciju i politiku upravljanja za�titom okoli�a u skladu sa zakonskom regulativom i evropskim standardima.
Pra�enje vladinih programa i investiciskih programa poduze�a i oponiranje programima koji mogu dovesti do ugro�avanja kvalitete zraka,voda,zem�ji�ta i zdravlja gra�ana te institiranje da se dalji privredni razvoj bazira na principima odr�ivog razvoja i okolinske sigurnosti.
Pokretanje ekolo�kih procesa protiv pojava i aktera za koje se ocijeni da su u izrazitoj suprotnosti sa interesima prirode i ugro�avanja zdravlja ljudi.
Pokretanje i sprovo�enje preventivnih mjera na za�titi okoli�a koje �e dovesti do popravljanja kvalitete voda,zraka,zemlji�ta, razvoja ekolo�ke svijesti i ekolo�ke kulture gra�ana, razvoja tolerancije i mira.
Uspostavljanje suradnje sa sli�nim organizacijama i udrugama i pojedincima kojima je zajedni�ki cilj za�tita i unapre�enje okoli�a, za�tita planete zemlje i stvaranje uvjeta za zdraviji �ivot sada�njih i budu�ih generacija.'),
	   ('Sportski Savez U Bosni I Hercegovini', 'Sportski savez je savez koje kroz animiranje razli�itih aktera i stvaranje uslova za aktivno bavljenje sportom, aktivno doprinosi razvoju sportske, kulturne, socijalne, ekolo�ke, humanitarne svijesti.�

Osnovni ciljevi Sportskog saveza su:

podsticanje razvoja u unapre�enje sporta na podru�u Kantona Sarajevo i �ire uskla�ivanje i koordiniranje rada udru�enih organizacija u sportu po pitanjima od zajedni�kog interesa; 
sportska saradnja;
obezbje�ivanje dru�tvenog ugleda i za�tite udru�enih organizacija u sportu;
saradnja sa odgovaraju�im dr�avnim dru�tvenim, nau�nim i stru�nim organizacijama i drugim organizacijama, organima i tijelima na realizaciji zadataka od zajedni�kog interesa;
stvaranje uslova za organizovanje, provo�enje i razvoj sportskih aktivnosti gra�ana (sport za sve) i vrhunskog sporta;
pra�enje i uskla�ivanje kalendara sportskih takmi�enja, masovnih priredbi i smotri na podru�ju Kantona Sarajevo;
unapre�enje i usavr�avanje talentovanih sportista mla�ih uzrasta;
obrazovanje i usavr�avanje stru�nih kadrova;
informativno-obrazovna djelatnost i popularizacija samostalnog provo�enja sportskih aktivnosti gra�ana (sport za sve) putem sredstava komunikacije;
realizacija informacijskog sistema o organizacijama u sportu, sportistima, stru�nim kadrovima u sportu, sportskim objektima;
utvr�ivanje zajedni�kih interesa u vezi kori�tenja i gradnje sportskih objekata, zdravstvene za�tite sportista i osnovnog standarda perspektivnih i vrhunskih sportista;
�uvanje i unapre�ivanje olimpijskih tradicija grada Sarajeva putem sportskih prezentacija, koordinirane sportske saradnje i povezivanja olimpijskih gradova;
predstavljanje i zastupanje po pitanjima od zajedni�kog interesa kod nadle�nih organa vlasti Kantona Sarajevo, Grada i op�tina sa podru�ja Kantona;
organizovanje i provo�enje sportskog marketinga, igara na sre�u (sportska lutrija) i programa dopunskih djelatnosti, u skladu sa propisima;
sva ostala pitanja za koja se ocijeni da su bitna za razvoj sporta.'),
	   ('Savez Udru�enja Kulture', 'Na�a misija: Kroz organizaciju razli�itih edukativno-zabavnih doga�aja za gra�ane i pru�anje podr�ke gra�anima da samostalno organiziraju aktivnosti, Savez �e nastojati da bude sinonim za aktivno djelovanje gra�ana u zajednici.
	    Savez su osnovali afirmisani umjetnici prevashodno iz oblasti teatarske umjetnosti, ali i umjetnici iz srodnih oblasti, kao �to su knji�evnost, pedagogija, sociologija i drugih nau�nih i umjetni�kih disciplina. Osnovni zadatak Saveza je razvijanje svijesti o va�nosti teatarske umjetnosti, kao i umjetnosti uop�e, kroz realizaciju razli�itih kulturnih i dru�tveno anga�ovanih projekata. Usmjerenje Saveza je fokusirano prije svega na teatarsku umjetnost i produciranje razli�itih teatarskih sadr�aja, doga�aja i programa koji se ogledaju u vidu predstava, performansa, festivala, umjetni�kih radionica i sli�no.')

SELECT *
FROM Savez

UPDATE Savez
SET Opis = 'Savez udru�enja osoba s cerebralnom paralizom FBiH (Savez) osnovan je na Osniva�koj skup�tini odr�anoj 17. 10. 2011. godine. Rje�enje o registraciji Saveza udru�enja osoba s cerebralnom paralizom od Federalnog ministarstva pravde dobiveno je 26. 01. 2012. godine. 
        Tokom protekle godine a zbog datuma izdavanja rje�enja o registraciji Savez nije ostvario sredstva iz Federalnog bud�eta pa se odr�ao u najve�oj mjeri zahvaljuju�i zalaganju osoba aktivno uklju�enih u njegovo osnivanje koji funkcije u Savezu obavljaju kao volonteri.
<br> <br>
Predsjednica Saveza je doc. dr Emira �vraka (profesorica na Fakultetu zdravstvenih studija u Sarajevu, specijalist fizikalne medicine i rehabilitacije s dugogodi�njim radom u rehabilitaciji djece i adolescenata s multiplim onesposobljenjima). Sekretar Saveza je mr sci. Amela Hamzi� (�lanica Udru�enja gra�ana oboljelih od dje�ije cerebralne paralize Kantona Sarajevo). Predsjednica Upravnog odbora je Mirsada �ulov (predsjednica Udru�enja oboljelih od dje�ije cerebralne paralize i distrofije Bosansko-podrinjskog kantona � Gora�de). Predsjednik Skup�tine Saveza je Selvedin Dedi� (predsjednik Udru�enja roditelja djece oboljele od cerebralne paralize, hidro i mikrocefalusa �Dlan� iz Zenice).
  <br> <br>      Ciljevi i djelatnosti
<br>1. Usmjeravanje i uskla�ivanje aktivnosti �lanica u korist osoba s cerebralnom paralizom;
<br>2. Pra�enje, ra��lanjivanje i obra�ivanje podataka o populaciji osoba s cerebralnom paralizom na podru�ju Federacije Bosne i Hercegovine;
<br>3. Zalaganje za osposobljavanje zdravstvene slu�be za pravovremeno otkrivanje, opserviranje, dijagnosticiranje, habilitaciju, rehabilitaciju i prevenciju onesposobljenja;
<br>4. Pra�enje i izu�avanje stanja i potreba osoba s cerebralnom paralizom;
<br>5. Potsticanje mjera na unapre�ivanju socijalne i zdravstvene za�tite, odgoja, obrazovanja, re/habilitacije, osposobljavanja, zapo�ljavanja i dru�tvenog �ivota osoba s cerebralnom paralizom;
<br>6. Pra�enje i predstavljanje postignu�a na podru�ju re/habilitacije i staranja o osobama s cerebralnom paralizom u zemlji i svijetu;
<br>7. Potsticanje nau�no-istra�iva�kog rada u korist osoba s cerebralnom paralizom;
<br>8. Pra�enje primjene deklaracija, konvencija i rezolucija Ujedinjenih naroda i drugih me�unarodnih tijela koje se odnose na prava i status osoba s onesposobljenjem;
<br>9. Potsticanje mjera i radnji na otklanjanju i sprije�avanju graditeljskih prepreka u �ivotu osoba s onesposobljenjem;
<br>10. Zalaganje za inovacije u tehnologiji u korist osoba s onesposobljenjem;
<br>11. Zalaganje za dogra�ivanje i osmi�ljavanje socijalne politike u korist osoba s cerebralnom paralizom;
<br>12. Razvijanje saradnje s istim ili sli�nim doma�im i inostranim udru�enjima i ustavnovama u oblasti staranja o osobama s onesposobljenjem;
<br>13. Predlaganje izmjena i dopuna postoje�ih i dono�enje novih propisa u korist osoba s cerebralnom paralizom;
<br>14. Posredovanje pri nabavci i servisiranju ortopedskih i drugih pomagala i sprava za potrebe osoba s cerebralnom paralizom;
<br>15. Prire�ivanje kulturnih, zabavnih, sportskih i drugih priredbi za osobe s cerebralnom paralizom i gra�ane.'
WHERE SavezID = 1

UPDATE Savez
SET Opis = 'Savez udru�enja osoba s cerebralnom paralizom FBiH (Savez) osnovan je na Osniva�koj skup�tini odr�anoj 17. 10. 2011. godine. Rje�enje o registraciji Saveza udru�enja osoba s cerebralnom paralizom od Federalnog ministarstva pravde dobiveno je 26. 01. 2012. godine. 
        Tokom protekle godine a zbog datuma izdavanja rje�enja o registraciji Savez nije ostvario sredstva iz Federalnog bud�eta pa se odr�ao u najve�oj mjeri zahvaljuju�i zalaganju osoba aktivno uklju�enih u njegovo osnivanje koji funkcije u Savezu obavljaju kao volonteri.
<br> <br>
Predsjednica Saveza je doc. dr Emira �vraka (profesorica na Fakultetu zdravstvenih studija u Sarajevu, specijalist fizikalne medicine i rehabilitacije s dugogodi�njim radom u rehabilitaciji djece i adolescenata s multiplim onesposobljenjima). Sekretar Saveza je mr sci. Amela Hamzi� (�lanica Udru�enja gra�ana oboljelih od dje�ije cerebralne paralize Kantona Sarajevo). Predsjednica Upravnog odbora je Mirsada �ulov (predsjednica Udru�enja oboljelih od dje�ije cerebralne paralize i distrofije Bosansko-podrinjskog kantona � Gora�de). Predsjednik Skup�tine Saveza je Selvedin Dedi� (predsjednik Udru�enja roditelja djece oboljele od cerebralne paralize, hidro i mikrocefalusa �Dlan� iz Zenice).
  <br> <br>      Ciljevi i djelatnosti
<br>1. Usmjeravanje i uskla�ivanje aktivnosti �lanica u korist osoba s cerebralnom paralizom;
<br>2. Pra�enje, ra��lanjivanje i obra�ivanje podataka o populaciji osoba s cerebralnom paralizom na podru�ju Federacije Bosne i Hercegovine;
<br>3. Zalaganje za osposobljavanje zdravstvene slu�be za pravovremeno otkrivanje, opserviranje, dijagnosticiranje, habilitaciju, rehabilitaciju i prevenciju onesposobljenja;
<br>4. Pra�enje i izu�avanje stanja i potreba osoba s cerebralnom paralizom;
<br>5. Potsticanje mjera na unapre�ivanju socijalne i zdravstvene za�tite, odgoja, obrazovanja, re/habilitacije, osposobljavanja, zapo�ljavanja i dru�tvenog �ivota osoba s cerebralnom paralizom;
<br>6. Pra�enje i predstavljanje postignu�a na podru�ju re/habilitacije i staranja o osobama s cerebralnom paralizom u zemlji i svijetu;
<br>7. Potsticanje nau�no-istra�iva�kog rada u korist osoba s cerebralnom paralizom;
<br>8. Pra�enje primjene deklaracija, konvencija i rezolucija Ujedinjenih naroda i drugih me�unarodnih tijela koje se odnose na prava i status osoba s onesposobljenjem;
<br>9. Potsticanje mjera i radnji na otklanjanju i sprije�avanju graditeljskih prepreka u �ivotu osoba s onesposobljenjem;
<br>10. Zalaganje za inovacije u tehnologiji u korist osoba s onesposobljenjem;
<br>11. Zalaganje za dogra�ivanje i osmi�ljavanje socijalne politike u korist osoba s cerebralnom paralizom;
<br>12. Razvijanje saradnje s istim ili sli�nim doma�im i inostranim udru�enjima i ustavnovama u oblasti staranja o osobama s onesposobljenjem;
<br>13. Predlaganje izmjena i dopuna postoje�ih i dono�enje novih propisa u korist osoba s cerebralnom paralizom;
<br>14. Posredovanje pri nabavci i servisiranju ortopedskih i drugih pomagala i sprava za potrebe osoba s cerebralnom paralizom;
<br>15. Prire�ivanje kulturnih, zabavnih, sportskih i drugih priredbi za osobe s cerebralnom paralizom i gra�ane.'
WHERE SavezID = 1

UPDATE Savez
SET Opis = 'Na osnovu ukazane potrebe za poduzimanjem mjera na za�titi u unapre�enju okoli�a, prijatelji prirode donijeli su Odluku o  saveza udru�enja gra�ana pod nazivom Ekolo�ki pokret �Eko Zeleni�. 
<br><br>	                   Ciljevi i zadaci su:

<br>1. Da u svojim redovima okuplja sve organizacije i pojedince koji su voljni da se vlastitim snagama i sredstvima anga�uju na o�uvanju, unapre�enju i za�titi prirode, na uskla�ivanju interesa i odnosa dru�tvenog razvoja sa prirodnim zakonitostima i potrebama ljudi te biljnog i �ivotinjskog svijeta da �ive u ekolo�ko �istim i zdravim �ivotnim sredinama.

<br>2. Podsticanje dono�enja zakonske regulative iz oblasti za�tite okoli�a uskla�ene sa standardima EU.
<br>3. Anga�ovanje za efikasniju organizaciju i politiku upravljanja za�titom okoli�a u skladu sa zakonskom regulativom i evropskim standardima.
<br>4. Pra�enje vladinih programa i investiciskih programa poduze�a i oponiranje programima koji mogu dovesti do ugro�avanja kvalitete zraka,voda,zem�ji�ta i zdravlja gra�ana te institiranje da se dalji privredni razvoj bazira na principima odr�ivog razvoja i okolinske sigurnosti.
<br>5. Pokretanje ekolo�kih procesa protiv pojava i aktera za koje se ocijeni da su u izrazitoj suprotnosti sa interesima prirode i ugro�avanja zdravlja ljudi.
<br>6. Pokretanje i sprovo�enje preventivnih mjera na za�titi okoli�a koje �e dovesti do popravljanja kvalitete voda,zraka,zemlji�ta, razvoja ekolo�ke svijesti i ekolo�ke kulture gra�ana, razvoja tolerancije i mira.
<br>7. Uspostavljanje suradnje sa sli�nim organizacijama i udrugama i pojedincima kojima je zajedni�ki cilj za�tita i unapre�enje okoli�a, za�tita planete zemlje i stvaranje uvjeta za zdraviji �ivot sada�njih i budu�ih generacija.'
WHERE SavezID = 2

UPDATE Savez
SET Opis = 'Sportski savez je savez koje kroz animiranje razli�itih aktera i stvaranje uslova za aktivno bavljenje sportom, aktivno doprinosi razvoju sportske, kulturne, socijalne, ekolo�ke, humanitarne svijesti.�
<br><br>
Osnovni ciljevi Sportskog saveza su:

<br>1. Podsticanje razvoja u unapre�enje sporta na podru�u Kantona Sarajevo i �ire uskla�ivanje i koordiniranje rada udru�enih organizacija u sportu po pitanjima od zajedni�kog interesa; 
<br>2. Sportska saradnja;
<br>3. Obezbje�ivanje dru�tvenog ugleda i za�tite udru�enih organizacija u sportu;
<br>4. Saradnja sa odgovaraju�im dr�avnim dru�tvenim, nau�nim i stru�nim organizacijama i drugim organizacijama, organima i tijelima na realizaciji zadataka od zajedni�kog interesa;
<br>5. Stvaranje uslova za organizovanje, provo�enje i razvoj sportskih aktivnosti gra�ana (sport za sve) i vrhunskog sporta;
<br>6. Pra�enje i uskla�ivanje kalendara sportskih takmi�enja, masovnih priredbi i smotri na podru�ju Kantona Sarajevo;
<br>7. Unapre�enje i usavr�avanje talentovanih sportista mla�ih uzrasta;
<br>8. Obrazovanje i usavr�avanje stru�nih kadrova;
<br>9. Informativno-obrazovna djelatnost i popularizacija samostalnog provo�enja sportskih aktivnosti gra�ana (sport za sve) putem sredstava komunikacije;
<br>10. Realizacija informacijskog sistema o organizacijama u sportu, sportistima, stru�nim kadrovima u sportu, sportskim objektima;
<br>11. Utvr�ivanje zajedni�kih interesa u vezi kori�tenja i gradnje sportskih objekata, zdravstvene za�tite sportista i osnovnog standarda perspektivnih i vrhunskih sportista;
<br>12. �uvanje i unapre�ivanje olimpijskih tradicija grada Sarajeva putem sportskih prezentacija, koordinirane sportske saradnje i povezivanja olimpijskih gradova;
<br>13. Predstavljanje i zastupanje po pitanjima od zajedni�kog interesa kod nadle�nih organa vlasti Kantona Sarajevo, Grada i op�tina sa podru�ja Kantona;
<br>14. Organizovanje i provo�enje sportskog marketinga, igara na sre�u (sportska lutrija) i programa dopunskih djelatnosti, u skladu sa propisima;
<br>15. Sva ostala pitanja za koja se ocijeni da su bitna za razvoj sporta.'
WHERE SavezID = 3

UPDATE Savez
SET Opis = 'Na�a misija: Kroz organizaciju razli�itih edukativno-zabavnih doga�aja za gra�ane i pru�anje podr�ke gra�anima da samostalno organiziraju aktivnosti, Savez �e nastojati da bude sinonim za aktivno djelovanje gra�ana u zajednici.
	   <br><br> Savez su osnovali afirmisani umjetnici prevashodno iz oblasti teatarske umjetnosti, ali i umjetnici iz srodnih oblasti, kao �to su knji�evnost, pedagogija, sociologija i drugih nau�nih i umjetni�kih disciplina. 
	   <br><br> Osnovni zadatak Saveza je razvijanje svijesti o va�nosti teatarske umjetnosti, kao i umjetnosti uop�e, kroz realizaciju razli�itih kulturnih i dru�tveno anga�ovanih projekata. Usmjerenje Saveza je fokusirano prije svega na teatarsku umjetnost i produciranje razli�itih teatarskih sadr�aja, doga�aja i programa koji se ogledaju u vidu predstava, performansa, festivala, umjetni�kih radionica i sli�no.'
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