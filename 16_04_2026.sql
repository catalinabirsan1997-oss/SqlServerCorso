USE Scuoladb;

SELECT * FROM Studenti;

SELECT Nome, Cognome, Genere FROM Studenti;

-- distinct filtra e rimuove i duplicati all'interno, senza eliminarli

SELECT DISTINCT Nome, Cognome FROM Studenti;

SELECT DISTINCT Nome, Cognome, Genere FROM Studenti;

-- selezionare solo un studente specifico 
-- WHERE si usa per creare una condizione specifica per il risultato

SELECT * FROM Studenti WHERE StudenteId = 3;

SELECT
	Nome,
	Cognome
FROM Studenti
WHERE StudenteId = 3;

-- Rinominare le colonne con AS (alias)
SELECT
	Nome AS 'Soprannome',
	Cognome AS 'Cognome dello Studente'
FROM Studenti
WHERE StudenteId =3;

SELECT * FROM Studenti;

SELECT * FROM Studenti
WHERE Genere = 'F';

SELECT * FROM Studenti
WHERE Genere = 'M';

SELECT DISTINCT Nome, Cognome 
FROM Studenti
WHERE Genere = 'M';

SELECT * FROM Studenti;

-- selezionare l'inizio di un nome (LIKE)
-- 

SELECT DISTINCT Nome, Cognome, Genere
FROM Studenti
WHERE Nome LIKE 'F%' AND Genere = 'F';
/*
Gli operatori sono simboli/parole che permettono di:
	.confrontare valori
	.fare calcoli
	.filtrare risultati
	*/

	/*
	OPERATORI DI CONFRONTO
	Usati con WHERE
	operate           |  Significato  |
	------------------| --------------|
	=                 |  Uguale       |
	!=/<>             |  Diverso      |
	>                 |  Maggiore     |
	<                 |  Minore       |
	>=                |  Maggiore o Uguale  |
	<=                |  Minore o uguale  |
	*/

	USE ScuolaDb;
	SELECT * FROM Studenti WHERE StudenteId = 3;

	/*
		Operatori Logici
		combinano piu condizioni
		operate       | Significato |
		--------------|-------------|
		AND           | Tutte vere  |
		OR			  | Almeno una vera |
		NOT			  | Nega        |
	*/

-- Inserimento delle righe nella tabella Studenti

INSERT INTO Studenti (Nome, Cognome, Email, Genere)
VALUES
('Mario','Rossi','mario1@email.com','M'),
('Luca','Bianchi','luca2@email.com','M'),
('Giulia','Verdi','giulia3@email.com','F'),
('Anna','Ferrari','anna4@email.com','F'),
('Marco','Romano','marco5@email.com','M'),
('Paolo','Ricci','paolo6@email.com','M'),
('Sara','Gallo','sara7@email.com','F'),
('Davide','Costa','davide8@email.com','M'),
('Elena','Fontana','elena9@email.com','F'),
('Simone','Greco','simone10@email.com','M'),
('Francesca','Conti','francesca11@email.com','F'),
('Andrea','DeLuca','andrea12@email.com','M'),
('Chiara','Marino','chiara13@email.com','F'),
('Alessio','Riva','alessio14@email.com','M'),
('Valentina','Lombardi','valentina15@email.com','F'),
('Giorgio','Barbieri','giorgio16@email.com','M'),
('Martina','Moretti','martina17@email.com','F'),
('Stefano','Ferraro','stefano18@email.com','M'),
('Roberta','Caruso','roberta19@email.com','F'),
('Alberto','Giordano','alberto20@email.com','M'),
('Federica','Colombo','federica21@email.com','F'),
('Claudio','Silvestri','claudio22@email.com','M'),
('Marta','Testa','marta23@email.com','M'),
('Daniele','Villa','daniele24@email.com','M'),
('Silvia','Serra','silvia25@email.com','F'),
('Emanuele','Leone','emanuele26@email.com','M'),
('Ilaria','Santoro','ilaria27@email.com','F'),
('Matteo','Fiore','matteo28@email.com','M'),
('Noemi','Ruggiero','noemi29@email.com','F'),
('Fabio','Pellegrini','fabio30@email.com','M');

SELECT * FROM Studenti WHERE Nome LIKE 'S%' AND Genere = 'F';


SELECT * FROM Studenti WHERE Nome LIKE '%o' AND Genere = 'M';

SELECT * FROM Studenti WHERE Nome = 'Mario' OR Nome = 'Alice';


-- ASC / DESC  (crescente / decrescente)
SELECT * FROM Studenti ORDER BY Nome Desc;

SELECT * FROM Studenti ORDER BY Cognome Asc;

SELECT * FROM Studenti ORDER BY StudenteId Asc;


-- TOP serve a visualizzare un numero di righe precise che vogliamo (ex. TOP 5)
SELECT TOP 5 * FROM Studenti;

SELECT TOP 25 * FROM Studenti 
WHERE Email is not null;

SELECT TOP 5 * FROM Studenti 
WHERE Email is null;

SELECT TOP 5 * FROM Studenti 
WHERE Email is not null AND Genere = 'F';

SELECT TOP 5 * FROM Studenti 
WHERE (Email is not null AND Genere = 'F') AND (Nome LIKE 'S%');

-- LIKE (stringhe) ricerca il testo
-- IN = dentro ('Mario', 'Giulia', 'Alessio') 
SELECT 
* 
FROM Studenti 
WHERE Nome IN ('Alice', 'Francesco','Alessio') 
AND Email is not null;

SELECT 
* 
FROM Studenti 
WHERE Nome IN ('Alice', 'Francesco','Alessio') 
AND Email != 'null';

SELECT * FROM Studenti 
where email is null;




