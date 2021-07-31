USE NVOCLOUD
GO

ALTER TABLE Prilog
DROP COLUMN Prilog

ALTER TABLE Prilog
ADD Prilog nvarchar(50)

SELECT * FROM Prilog

UPDATE Prilog 
SET Prilog = '/Objave/Pdf.pdf'
WHERE PrilogID = 1

UPDATE Prilog
SET Prilog = '/Objave/Word.docx'
WHERE PrilogID = 2

UPDATE Prilog
SET Prilog = '/Objave/Word2.docx'
WHERE PrilogID = 3

SELECT *
FROM Objava

SELECT *
FROM Prilog