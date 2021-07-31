	USE NVOCLOUD
	GO
	
	UPDATE Korisnik 
	SET IdentifikacijskiBroj = '884CS444TU44'
	WHERE KorisnikID = 5

	UPDATE Korisnik 
	SET OpcinaID = 2
	WHERE KorisnikID = 5

	UPDATE Korisnik 
	SET IdentifikacijskiBroj = '854AB3492BB17'
	WHERE KorisnikID = 6

	UPDATE Korisnik 
	SET IdentifikacijskiBroj = '895SS3451LA85'
	WHERE KorisnikID = 7

	UPDATE Korisnik 
	SET IdentifikacijskiBroj = '912AT3765LG24'
	WHERE KorisnikID = 8

	UPDATE Korisnik 
	SET IdentifikacijskiBroj = '999CP1176MS67'
	WHERE KorisnikID = 9

	UPDATE Korisnik 
	SET IdentifikacijskiBroj = '123AS4575LA42'
	WHERE KorisnikID = 10


	select * from Objava

	UPDATE Korisnik_Uloga
	SET UlogaID = 2
	WHERE KorisnikID = 5

	UPDATE Korisnik_Uloga
	SET UlogaID = 1
	WHERE KorisnikID = 10
	

	select * from Objava

	delete Prilog where PrilogID = 37 or PrilogID = 38 or PrilogID = 39 or PrilogID = 40 or PrilogID = 41
	or PrilogID = 40 or PrilogID = 36 or PrilogID = 35 or PrilogID = 34 or PrilogID = 33 or PrilogID = 32 or PrilogID = 31
	or PrilogID = 30 or PrilogID = 29 or PrilogID = 28 or PrilogID = 27 or PrilogID = 26 or PrilogID = 25 or PrilogID = 24
	or PrilogID = 23 or PrilogID = 22 or PrilogID = 21 or PrilogID = 20 or PrilogID = 19 or PrilogID = 18 or PrilogID = 17
	or PrilogID = 16 or PrilogID = 15 or PrilogID = 14 or PrilogID = 13 or PrilogID = 12 or PrilogID = 11 or PrilogID = 10
	or PrilogID = 9 or PrilogID = 8 or PrilogID = 7 or PrilogID = 6 or PrilogID = 5 or PrilogID = 4 or PrilogID = 3
	or PrilogID = 2 or PrilogID = 1

	DBCC CHECKIDENT ('Objava', RESEED, 0)
	DBCC CHECKIDENT ('Prilog', RESEED, 0)

	INSERT INTO Prilog
	VALUES (1, '/Objave/Pdf.pdf'),
		   (2, '/Objave/Word.docx'),
		   (3, '/Objave/Word2.docx')


INSERT INTO Objava
VALUES ('Radionica', 'Radionica za èlanove udruženja', '2021-03-04', 'Obavijest', 1),
       ('Apel', 'Djeèaku iz Zenice hitno potrebna pomoæ', '2020-05-10', 'Apel', 3),
	   ('Akcija èišæenja', 'Akcija èišæenja rijeka', '2020-04-27', 'Obavijest', 2),
	   ('Turnir', 'Turnir za èlanove', '2020-11-18', 'Obavijest', 4),
	   ('Predavanje', 'Predavanje za roditelje djece sa poteškoæama u razvoju', '2020-11-11', 'Obavijest', 1),
       ('Akcija', 'Akcija èišæenja grada', '2019-11-27', 'Obavijest', 5),
	   ('Radionica', 'Radionica za èlanove udruženja', '2019-09-27', 'Obavijest', 7),
	   ('Stipendije', 'Dodjela stipendija za studente 2020/2021', '2020-06-30', 'Oglas', 8),
	   ('Podjela paketa', 'Podjela paketa za èlanove u prostorijama udruženja', '2021-12-01', 'Obavijest', 1),
       ('Apel', 'Prikupljane pomoæi za majku èetvero djece', '2021-02-01', 'Apel', 2),
	   ('Akcija', 'Akcija èišæenja grada', '2020-08-10', 'Obavijest', 3),
	   ('Predavanje', 'Predavanje za èlanove', '2020-08-18', 'Obavijest', 4),
	   ('Akcija èišæenja', 'Akcija èišæenja šuma u našem gradu', '2020-12-19', 'Obavijest', 5),
       ('Druženje za èlanove', 'Druženje za èlanove æe se održati u prostorijama udruženja', '2021-03-25', 'Obavijest', 7),
	   ('Podjela jednokratne pomoæi', 'Podjela jednokratne pomoæi studentima u 2020/2021', '2019-11-27', 'Obavijest', 8),
	   ('Predavanje', 'Predavanje za èlanove', '2021-03-18', 'Obavijest', 7)

	     
		 update Objava set Sadrzaj = 'Turnir za èlanove' where ObjavaID = 8

	INSERT INTO Prilog
	VALUES (4, '/Objave/Word2.docx'),
		   (5, '/Objave/Pdf.pdf'),
		   (6, '/Objave/Word.docx'),
		   (7, '/Objave/Pdf.pdf'),
		   (8, '/Objave/Word.docx'),
		   (9, '/Objave/Pdf.pdf'),
		   (10, '/Objave/Pdf.pdf'),
		   (11, '/Objave/Word.docx'),
		   (12, '/Objave/Word2.docx'),
		   (13, '/Objave/Pdf.pdf'),
		   (14, '/Objave/Word.docx'),
		   (15, '/Objave/Pdf.pdf'),
		   (16, '/Objave/Word.docx'),
		   (17, '/Objave/Pdf.pdf'),
		   (18, '/Objave/Word2.docx'),
		   (19, '/Objave/Pdf.pdf'),
		   (20, '/Objave/Word.docx')

SELECT *
FROM Prilog

select * from Korisnik

select * from Objava