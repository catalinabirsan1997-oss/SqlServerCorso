use AziendaDb;

-- inserire clienti

INSERT INTO Clienti (Nome, Email, Telefono) VALUES
('Melania','c134@mail.com','11110000001'),
('Cliente2','c2@mail.com','3330000002'),
('Cliente3','c3@mail.com','3330000003'),
('Cliente4','c4@mail.com','3330000004'),
('Cliente5','c5@mail.com','3330000005'),
('Cliente6','c6@mail.com','3330000006'),
('Cliente7','c7@mail.com','3330000007'),
('Cliente8','c8@mail.com','3330000008'),
('Cliente9','c9@mail.com','3330000009'),
('Cliente10','c10@mail.com','3330000010'),
('Cliente11','c11@mail.com','3330000011'),
('Cliente12','c12@mail.com','3330000012'),
('Cliente13','c13@mail.com','3330000013'),
('Cliente14','c14@mail.com','3330000014'),
('Cliente15','c15@mail.com','3330000015'),
('Cliente16','c16@mail.com','3330000016'),
('Cliente17','c17@mail.com','3330000017'),
('Cliente18','c18@mail.com','3330000018'),
('Cliente19','c19@mail.com','3330000019'),
('Cliente20','c20@mail.com','3330000020'),
('Cliente21','c21@mail.com','3330000021'),
('Cliente22','c22@mail.com','3330000022'),
('Cliente23','c23@mail.com','3330000023'),
('Cliente24','c24@mail.com','3330000024'),
('Cliente25','c25@mail.com','3330000025'),
('Cliente26','c26@mail.com','3330000026'),
('Cliente27','c27@mail.com','3330000027'),
('Cliente28','c28@mail.com','3330000028'),
('Cliente29','c29@mail.com','3330000029'),
('Cliente30','c30@mail.com','3330000030');

-- count
SELECT 
	COUNT(*) AS 'Totale Righe'
FROM Clienti;

ALTER TABLE Ordini
ADD DettaglioId INT;

INSERT INTO Ordini (ClienteID, DataOrdine, Totale) VALUES
(1,'2025-01-01',500),
(2,'2025-01-02',700),
(3,'2025-01-03',300),
(4,'2025-01-04',900),
(5,'2025-01-05',1200),
(6,'2025-01-06',450),
(7,'2025-01-07',800),
(8,'2025-01-08',600),
(9,'2025-01-09',1000),
(10,'2025-01-10',1500),
(11,'2025-01-11',200),
(12,'2025-01-12',750),
(13,'2025-01-13',1100),
(14,'2025-01-14',950),
(15,'2025-01-15',400),
(16,'2025-01-16',1300),
(17,'2025-01-17',700),
(18,'2025-01-18',600),
(19,'2025-01-19',850),
(20,'2025-01-20',300),
(21,'2025-01-21',1400),
(22,'2025-01-22',500),
(23,'2025-01-23',650),
(24,'2025-01-24',900),
(25,'2025-01-25',1200),
(26,'2025-01-26',400),
(27,'2025-01-27',1000),
(28,'2025-01-28',700),
(29,'2025-01-29',800),
(30,'2025-01-30',1500);


INSERT INTO DettagliOrdine (OrdineID, Prodotto, Quantita, PrezzoUnitario) VALUES
-- Ordine 1
(37,'Laptop',1,500),
(37,'Mouse',2,20),

-- Ordine 2
(2,'Monitor',1,300),
(2,'Tastiera',1,50),

-- Ordine 3
(3,'PC',1,700),
(3,'Mouse',1,25),

-- Ordine 4
(4,'Stampante',1,200),
(4,'Carta',5,10),

-- Ordine 5
(5,'Server',1,1200),
(5,'RAM',2,100),

-- Ordine 6
(6,'Tablet',1,450),
(6,'Custodia',1,30),

-- Ordine 7
(7,'Laptop',1,800),
(7,'SSD',1,120),

-- Ordine 8
(8,'Monitor',2,200),
(8,'Cavo HDMI',2,15),

-- Ordine 9
(9,'PC',1,1000),
(9,'Mouse',1,30),

-- Ordine 10
(10,'Server',1,1500),
(10,'Switch',1,200),

-- Ordine 11
(11,'Mouse',2,25),
(11,'Tastiera',1,60),

-- Ordine 12
(12,'Laptop',1,750),
(12,'Mouse',1,30),

-- Ordine 13
(13,'PC',1,1100),
(13,'Monitor',1,300),

-- Ordine 14
(14,'Monitor',1,950),
(14,'Cavo HDMI',2,20),

-- Ordine 15
(15,'SSD',1,400),
(15,'Case PC',1,80),

-- Ordine 16
(16,'Server',1,1300),
(16,'RAM',2,120),

-- Ordine 17
(17,'Tablet',1,700),
(17,'Custodia',1,40),

-- Ordine 18
(18,'RAM',2,300),
(18,'SSD',1,200),

-- Ordine 19
(19,'Monitor',1,850),
(19,'Mouse',1,35),

-- Ordine 20
(20,'Mouse',1,300),
(20,'Tastiera',1,100),

-- Ordine 21
(21,'Server',1,1400),
(21,'Switch',1,250),

-- Ordine 22
(22,'Laptop',1,500),
(22,'Zaino',1,60),

-- Ordine 23
(23,'Tablet',1,650),
(23,'Custodia',1,30),

-- Ordine 24
(24,'Monitor',1,900),
(24,'Cavo HDMI',2,15),

-- Ordine 25
(25,'PC',1,1200),
(25,'Mouse',1,25),

-- Ordine 26
(26,'SSD',1,400),
(26,'RAM',2,100),

-- Ordine 27
(27,'Server',1,1000),
(27,'Switch',1,200),

-- Ordine 28
(28,'Laptop',1,700),
(28,'Mouse',1,30),

-- Ordine 29
(29,'Tablet',1,800),
(29,'Custodia',1,35),

-- Ordine 30
(30,'PC',1,1500),
(30,'Monitor',1,300),

-- Ordine 31
(31,'Laptop',1,1200),
(31,'Mouse',2,20),

-- Ordine 32
(32,'Tablet',1,400),
(32,'Custodia',1,25),

-- Ordine 33
(33,'Server',1,2000),
(33,'Switch',1,300),

-- Ordine 34
(34,'PC',1,900),
(34,'Monitor',1,250),

-- Ordine 35
(35,'Laptop',1,800),
(35,'Mouse',1,30),

-- Ordine 36
(36,'Server',1,1500),
(36,'RAM',2,150);

-- Modifica del nome della colonna EXEC sp_rename 
-- 'nometabella.nomecolonna da modificare', 'nometabella nuova';
EXEC sp_rename 'Ordini.DettaglioId', 'DettaglioId';

-- modifica nome tabella: EXEC sp_rename 'nome vecchio tabella',
-- 'nome nuovo tabella';
EXEC sp_rename 'Ordini', 'Ordine';

-- rimetto il nome originario
EXEC sp_rename 'Ordine', 'Ordini';

-- Update per la modifica
/*
	UPDATE nome della tabella
	SET nome della colonna = il nuovo valore o nome 
	della colonna da cui prenderlo
	WHERE condizione (es. OrdineId = 1)
*/

UPDATE Ordini
SET DettaglioId = OrdineId
WHERE Totale = 300;
SELECT * FROM Ordini;


/*
	DELETE FROM Nome della tabella
      WHERE colonna = valore 
*/

-- Esempio: 

INSERT INTO Ordini (ClienteID, DataOrdine, Totale, DettaglioId) VALUES
(30,'2026-01-01',100, 22);

SELECT*FROM Ordini;

DELETE FROM Ordini
      WHERE Totale = 100;

--PROVA
DELETE FROM Dipendenti
	WHERE Email is null;

SELECT*FROM Dipendenti;

-

DELETE FROM DettagliOrdine
	WHERE  DettaglioID=17;

SELECT*FROM DettagliOrdine;

DELETE FROM Progetti
	WHERE ProgettoId=37;

SELECT*FROM Progetti;

DELETE FROM Progetti
	WHERE ProgettoId>56;

DELETE FROM Progetti
	WHERE NOME='Proj26';


/*
	ALTER TABLE NOME DELLA TABELLA 
	ADD CONSTRAINT NOME DELLA CHIAVE ESTERNA
	FOREIGN KEY NOME DELLA COLONNA (DettaglioId)
	REFERENCES RIFERIMENTO ALLA TABELLA ESTERNA CON 
	IL NOME DELLA COLONNA (DettaglioId)
*/
ALTER TABLE Ordini
ADD CONSTRAINT FK_Ordini_Dettagli
FOREIGN KEY (DettaglioId) REFERENCES DettagliOrdine(DettaglioId);

SELECT*FROM DettagliOrdine; -- ultimo DettaglioId 87


SELECT*FROM Ordini; --numero degli ordini=37

-- count
SELECT 
	COUNT(*) AS 'TOTALE RIGHE'
FROM Clienti;


-- SUM ()
SELECT
	SUM(Totale) AS 'Somma totale degli ordini'
FROM Ordini; 

-- COUNT il numero totale degli ordini
SELECT 
	COUNT(*) AS 'Totale degli ordini'
FROM Ordini;

-- Ordine media AVG
SELECT 
	AVG(Totale) AS 'La media degli ordini'
FROM Ordini
SELECT*FROM Ordini;

-- ANALISI DEI DATI 
SELECT
	COUNT(*) AS 'Totale degli ordini',
	AVG(Totale) AS 'La media degli ordini',
	MIN(Totale) AS 'Ordine minimo',
	MAX(Totale) AS 'Ordine massimo',
	SUM(Totale) AS 'Somma totale degli ordini'
FROM Ordini;

-- Progetti assegnati ai dipendenti
SELECT 
	D.Nome, D.Cognome, P.Nome AS Progetto, A.ruolo
FROM Assegnazioni
JOIN Dipendenti D ON A.DipendenteId=D.DipendenteId
JOIN Progetti P ON A.ProgettoId=P.ProgettoId;


-- Numero dipendenti per reparto
SELECT R.Nome, COUNT(D.DipendenteID) AS TotDipendenti
FROM Reparti R
LEFT JOIN Dipendenti D ON R.RepartoID = D.RepartoID
GROUP BY R.Nome;

SELECT*FROM Progetti;

--Budget totale progetti
SELECT SUM(Budget) AS BudgetTotale
FROM Progetti;

-- Clienti con ordini
SELECT C.Nome, O.OrdineID, O.Totale
FROM Clienti C
JOIN Ordini O ON C.ClienteID = O.ClienteID;

-- Fatturato totale per cliente
SELECT C.Nome, SUM(O.Totale) AS Fatturato
FROM Clienti C
JOIN Ordini O ON C.ClienteID = O.ClienteID
GROUP BY C.Nome;

-- Prodotti venduti (quantità totale)
SELECT Prodotto, SUM(Quantita) AS TotaleVenduto
FROM DettagliOrdine
GROUP BY Prodotto;

ALTER TABLE DettagliOrdine
ALTER COLUMN Quantita INT;

-- MODIFICA IMPORTANTE PER LUNEDI
/*
('', 'Bari')
('Management', '')*/
ALTER TABLE Dipartimenti
ADD CONSTRAINT CK_Dipartimenti_Nome CHECK (Nome <> '');

SELECT*FROm Dipartimenti;

-- Aggiunge vincolo per evitare dipendenti senza reparto
ALTER TABLE Dipendenti
ALTER COLUMN RepartoID INT NOT NULL;


-- Rinomina “Reparti” → “Dipartimenti”
EXEC sp_rename 'Reparti', 'Dipartimenti';

--RINOMINA "Dipartimenti" in "Reparti"

EXEC sp_rename 'Dipartimenti', 'Reparti';
--RINOMINARE COLONNE
-- Nome → NomeReparto
-- Dipendenti per reparto
EXEC sp_rename 'Dipartimenti.Nome', 'NomeReparto', 'COLUMN';

SELECT*FROM 
-- Sede → SedeReparto
EXEC sp_rename 'Dipartimenti.Sede', 'SedeReparto', 'COLUMN';

/*
    MODIFICARE TIPO DI DATO (ALTER COLUMN)
    Rendere Nome NOT NULL (già lo è, ma esempio valido)
*/
ALTER TABLE Dipendenti
ALTER COLUMN Nome NVARCHAR(80) NOT NULL;


-- Aumentare dimensione Email
ALTER TABLE Dipendenti
ALTER COLUMN Email NVARCHAR(150);






-- Rendere stipendio NOT NULL
ALTER TABLE Dipendenti
ALTER COLUMN Stipendio DECIMAL(10,2) NOT NULL;


-- Rendere RepartoID NOT NULL
ALTER TABLE Dipendenti
ALTER COLUMN RepartoID INT NOT NULL;


-- AGGIUNGERE COLONNE NUOVE
-- Aggiungere colonna “Telefono” ai dipendenti
ALTER TABLE Dipendenti
ADD Telefono NVARCHAR(20);

SELECT*FROM Dipendenti;

-- Aggiungere colonna “Attivo”
ALTER TABLE Dipendenti
ADD Attivo BIT DEFAULT 1;

-- ELIMINARE COLONNE
-- Rimuovere Telefono
ALTER TABLE Dipendenti
DROP COLUMN Telefono;

-- modificare nome colonna
EXEC sp_rename 'Dipendenti.Salario', 'Stipendio', 'COLUMN';

-- MODIFICARE DATI (UPDATE)
-- Aggiornare stipendio di un dipendente
UPDATE Dipendenti
SET Stipendio = 3000
WHERE DipendenteID = 5;

SELECT*FROM Dipendenti;

-- Aumentare stipendio del 10%
UPDATE Dipendenti
SET Stipendio = Stipendio * 1.10;

-- Cambiare reparto
UPDATE Dipendenti
SET RepartoID = 2
WHERE DipendenteID = 3;

-- Aggiornare email
UPDATE Dipendenti
SET Email = 'nuova@email.com'
WHERE DipendenteID = 5;

-- Progetti assegnati ai dipendenti
SELECT D.Nome, D.Cognome, P.Nome AS Progetto, A.Ruolo
FROM Assegnazioni A
JOIN Dipendenti D ON A.DipendenteID = D.DipendenteID
JOIN Progetti P ON A.ProgettoID = P.ProgettoID;

-- Numero dipendenti per reparto
SELECT R.Nome, COUNT(D.DipendenteID) AS TotDipendenti
FROM Reparti R
LEFT JOIN Dipendenti D ON R.RepartoID = D.RepartoID
GROUP BY R.Nome;

--Budget totale progetti
SELECT SUM(Budget) AS BudgetTotale
FROM Progetti;

-- Clienti con ordini
SELECT C.Nome, O.OrdineID, O.Totale
FROM Clienti C
JOIN Ordini O ON C.ClienteID = O.ClienteID;

-- Fatturato totale per cliente
SELECT C.Nome, SUM(O.Totale) AS Fatturato
FROM Clienti C
JOIN Ordini O ON C.ClienteID = O.ClienteID
GROUP BY C.Nome;

-- Prodotti venduti (quantità totale)
SELECT Prodotto, SUM(Quantita) AS TotaleVenduto
FROM DettagliOrdine
GROUP BY Prodotto;


SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine;