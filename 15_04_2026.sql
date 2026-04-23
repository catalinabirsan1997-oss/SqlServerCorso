-- Creazione del Database
CREATE DATABASE ScuolaDb;

-- Elimina il Database esistente
-- DROP DATABASE Demo;


-- Uso del Database
use ScuolaDb;

/*
| Tipo             | Quando usarlo                    |
| ---------------- | -------------------------------- |
| INT = INTERGER   | numeri interi (ID, età) = 100 000 000         |
| DECIMAL(10,2)    | soldi (precisione!)              |
| NVARCHAR, VARCHAR| testo (sempre meglio di VARCHAR) |
| DATE             | solo data                        |
| DATETIME         | data + ora                       |
| BIT              | booleano (0/1) Vero o Falso      |
| UNIQUEIDENTIFIER | GUID                             |
*/
-- Creazione della tabella Studenti
CREATE TABLE Studenti(
	StudenteId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(150) NOT NULL,
	Cognome NVARCHAR(150) NOT NULL,
	Email NVARCHAR(150) NULL,
	Genere CHAR(1) NOT NULL
);
-- SELECT = SELEZIONA
-- * = TUTTE LE COLONNE
-- FROM = NEL
-- Studenti = rappresenta la tabella 
-- VISUALIZZA LA LISTA DEGLI STUDENTI
SELECT StudenteID, Nome, Cognome, Email, Genere FROM Studenti;


SELECT * FROM Studenti;


SELECT Nome, Genere FROM Studenti;

SELECT Nome, Cognome, Genere FROM Studenti;

-- Inserimento dei dati nella tabella Studenti
INSERT INTO Studenti
	(Nome, Cognome, Genere)
VALUES
	('Melania','Todaro', 'F'),
	('Anna','Belli','F'),
	('Francesco','Bianchi','M'),
	('Serena','Notte','F'),
	('Stefano','Canzone','M');

	SELECT * FROM Studenti;