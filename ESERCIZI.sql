CREATE DATABASE AziendaDb;

USE AziendaDb;

CREATE TABLE Reparti (
	RepartoId INT not null PRIMARY KEY IDENTITY (1,1),
	Nome NVARCHAR (100) not null,
	Sede NVARCHAR (100) null
	);

	--DROP TABLE Reparti;
	-- non eseguire DROP --

CREATE TABLE Progetti (
	ProgettoId INT not null PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) not null,
	Budget DECIMAL(12,2),
	DataInizio DATE,
	DataFine DATE);

CREATE TABLE Dipendenti(
	DipendenteId INT not null PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR(100) not null,
	Cognome NVARCHAR(100) not null,
	Email NVARCHAR(100) UNIQUE null,
	Stipendio DECIMAL(10,2),
	DataAssunzione DATE,
	RepartoId INT,
	FOREIGN KEY(RepartoId) REFERENCES Reparti(RepartoId)
	);

--DROP TABLE Dipendenti;

CREATE TABLE Assegnazioni(
	DipendenteId INT,
	ProgettoId INT,
	Ruolo NVARCHAR(50),
	PRIMARY KEY(DipendenteId, ProgettoId),
	
-- la chiave esterna (FOREIGN KEY)
--serve a collegare le tabelle e mantenere il collegamento dei dati
-- (DipendenteId)--> Dipendenti(DipendenteId)
/* 
Dipendenti.ProgettoId deve esistere nella tabella Progetti(ProgettoId)
non puo' assegnare un dipendente a un rapporto oppure a un progetto


Progetti ha ProgettoId come PRIMARY KEY
Dipendenti ha DipendenteId come PRIMARY KEY

Assegnazioni ha due PRIMARY KEY (ProgettoId, DipendenteId) 
					FOREIGN KEY (ProgettoId)CHIAVE ESTERNA fa riferimento alla tabella Progetti(ProgettoId),
					FOREIGN KEY (DipendenteId) CHIAVE ESTERNA fa riferimento alla tabella Dipendenti(DipendenteId)
*/
	FOREIGN KEY(DipendenteId) REFERENCES Dipendenti(DipendenteId),
	FOREIGN KEY(ProgettoId) REFERENCES Progetti(ProgettoId)
	);

	SELECT* FROM Dipendenti;

	SELECT * FROM Progetti;

	SELECT * FROM Reparti;

	SELECT * FROM Assegnazioni;


INSERT INTO Reparti
	(Nome, Sede)
VALUES
	('Risorse Umane','MILANO'),
	('Vendite','Napoli');

SELECT * FROM Assegnazioni;

SELECT * FROM Reparti WHERE RepartoId IN (2,3);

SELECT * FROM Reparti WHERE Nome = 'Vendite';

SELECT * FROM Reparti WHERE Nome LIKE 'V%';

SELECT * FROM Reparti WHERE Nome LIKE '%a%';

SELECT* FROM Dipendenti; 

CREATE TABLE Clienti(
ClienteId INT not null PRIMARY KEY IDENTITY(1,1),
Nome NVARCHAR(100) not null,
Email NVARCHAR(100) NOT NULL,
Telefono NVARCHAR(50) UNIQUE
);

--DROP TABLE Clienti;

SELECT* FROM Clienti;

CREATE TABLE Ordini(
OrdineId INT NOT NULL PRIMARY KEY IDENTITY(1,1),
ClienteId INT,
DataOrdine DATE,
Totale DECIMAL(10,2),
FOREIGN KEY (ClienteId) REFERENCES CLIENTI(ClienteId)
);

-- =========================
-- TABELLA DETTAGLI ORDINE
-- =========================
CREATE TABLE DettagliOrdine (
    DettaglioID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    OrdineID INT,
    Prodotto NVARCHAR(100),
    Quantita INT,
    PrezzoUnitario DECIMAL(10,2),
    FOREIGN KEY (OrdineID) REFERENCES Ordini(OrdineID)
);

INSERT INTO Reparti
	(Nome, Sede)
VALUES
('IT','Roma'),
    ('HR','Milano'),
    ('Vendite','Napoli'),
    ('Marketing','Torino'),
    ('Finanza','Bologna'),
    ('Logistica','Genova'),
    ('Supporto','Firenze'),
    ('Produzione','Bari'),
    ('Ricerca','Parma'),
    ('Qualità','Verona'),
    ('Sicurezza','Trieste'),
    ('Acquisti','Padova'),
    ('Legale','Modena'),
    ('Formazione','Perugia'),
    ('Controllo','Pisa'),
    ('Innovazione','Catania'),
    ('Sviluppo','Palermo'),
    ('Design','Venezia'),
    ('Testing','Lecce'),
    ('HelpDesk','Salerno'),
    ('Cloud','Aosta'),
    ('AI','Trento'),
    ('Data','Bolzano'),
    ('Networking','Ancona'),
    ('Mobile','Taranto'),
    ('Web','Rimini'),
    ('Backend','Ferrara'),
    ('Frontend','Siena'),
    ('DevOps','Lucca'),
    ('QA','Udine'),
    ('IT','USA'),
    ('HR','Roma'),
    ('Finance','Milano'),
    ('Operation','Venezia'),
    ('Marketing','Bologna'),
    ('Sales','Torino'),
    ('Support','Napoli'),
    ('HQ','Oslo'),
    ('Research','Londra'),
    ('Customer','Bankok'),
    ('','Bari'),
    ('Management',''),
    ('Communication', 'Milano'),
	('IT', 'Roma'),
	('Technologist','Florida'),
	('Human Resources', 'Roma'),
	('Vendite', 'Napoli'),
	('Engineering', 'Milano'),
	('Manager', 'Roma'),
	('Food Technologist','Napoli'),
	('CEO', 'Roma'),
	('Legal', 'Napoli'),
	('Accountant', 'Napoli');

SELECT*FROM Reparti;

SELECT * FROM Dipendenti;

INSERT INTO Dipendenti
	(Nome, Cognome, Stipendio, RepartoId, DataAssunzione)
VALUES
	--('Antobello', 'Bambino', '2700', 12, '2024-11-08'),
    ('Prova', 'Corso', '1200', 29, '2026-01-01'),
	('Lucilla', 'Corsi', '500', , '2020-03-03');

    --> CatalinaId = 3 
    -- 

INSERT INTO Progetti 
(Nome, Budget, DataInizio, DataFine)
VALUES
('Proj1',1000,'2024-01-01','2024-02-01'),
('Proj2',2000,'2024-01-02','2024-02-02'),
('Proj3',3000,'2024-01-03','2024-02-03'),
('Proj4',4000,'2024-01-04','2024-02-04'),
('Proj5',5000,'2024-01-05','2024-02-05'),
('Proj6',6000,'2024-01-06','2024-02-06'),
('Proj7',7000,'2024-01-07','2024-02-07'),
('Proj8',8000,'2024-01-08','2024-02-08'),
('Proj9',9000,'2024-01-09','2024-02-09'),
('Proj10',10000,'2024-01-10','2024-02-10'),
('Proj11',11000,'2024-01-11','2024-02-11'),
('Proj12',12000,'2024-01-12','2024-02-12'),
('Proj13',13000,'2024-01-13','2024-02-13'),
('Proj14',14000,'2024-01-14','2024-02-14'),
('Proj15',15000,'2024-01-15','2024-02-15'),
('Proj16',16000,'2024-01-16','2024-02-16'),
('Proj17',17000,'2024-01-17','2024-02-17'),
('Proj18',18000,'2024-01-18','2024-02-18'),
('Proj19',19000,'2024-01-19','2024-02-19'),
('Proj20',20000,'2024-01-20','2024-02-20'),
('Proj21',21000,'2024-01-21','2024-02-21'),
('Proj22',22000,'2024-01-22','2024-02-22'),
('Proj23',23000,'2024-01-23','2024-02-23'),
('Proj24',24000,'2024-01-24','2024-02-24'),
('Proj25',25000,'2024-01-25','2024-02-25'),
('Proj26',26000,'2024-01-26','2024-02-26'),
('Proj27',27000,'2024-01-27','2024-02-27'),
('Proj28',28000,'2024-01-28','2024-02-28'),
('Proj29',29000,'2024-01-29','2024-03-01'),
('Proj30',30000,'2024-01-30','2024-03-02');

SELECT * FROM Progetti;

INSERT INTO Dipendenti 
(Nome, Cognome, Email, RepartoId)
VALUES  
('Mario','Rossi','mario.rossi@email.com', 1),
('Luca','Bianchi','luca.bianchi@email.com', 2),
('Giulia','Neri','giulia.neri@email.com', 3),
('Francesca','Verdi','francesca.verdi@email.com', 4),
('Marco','Rossi','marco.rossi@email.com', 5),
('Laura','Bianchi','laura.bianchi@email.com', 6),
('Andrea','Neri','andrea.neri@email.com', 7),
('Simona','Verdi','simona.verdi@email.com', 8),
(' Stefano','Rossi','stefano.rossi@email.com', 9),
('Elena','Bianchi','elena.bianchi@email.com', 10),
('Davide','Neri','davide.neri@email.com', 11),
('Sara','Verdi','sara.verdi@email.com', 12);

INSERT INTO Dipendenti
    (Nome, Cognome, Email, RepartoId)
VALUES
--('Pinco','Pallino','pinco.pallino@email.com', 17),
--('Tentativo','Infinito','tent.bianchi@email.com', 18),
--('Giulia','Neri','giulia2.neri@email.com', 19),
('Francesca','Verdi','francesca3.verdi@email.com', 20),
('Marco','Rossi','marco3.rossi@email.com', 21),
('Laura','Bianchi','laura4.bianchi@email.com', 22),
('Andrea','Neri','andrea4.neri@email.com', 23),
('Simona','Verdi','simona5.verdi@email.com', 24),
(' Stefano','Rossi','stefano5.rossi@email.com', 25),
('Elena','Bianchi','elena5.bianchi@email.com', 26),
('Davide','Neri','davide5.neri@email.com', 27),
('Sara','Verdi','sara6.verdi@email.com', 28);

SELECT * FROM Dipendenti;

INSERT INTO Assegnazioni
	(DipendenteId, ProgettoId, Ruolo)
VALUES
/*--(5,1,'Dev'),(6,2,'Tester'),(7,3,'PM'),(8,4,'Dev'),(9,5,'Marketing'),
(10,6,'Analista'),
(11,7,'Dev'),(12,8,'Dev'),(13,9,'HR'),(14,10,'Manager'),
(15,11,'Dev'),(16,12,'Tester'),(40,13,'PM'),
(41,14,'Dev'),(42,15,'Marketing'),
(43,16,'Analista'),(44,17,'Dev'),(45,18,'Dev'),(46,19,'HR'),(47,20,'Manager'),
(48,21,'Dev'),(49,22,'Tester'),(50,23,'PM'),(51,24,'Dev'),*/
-- da cambiare (29,25,'Marketing'),
--(30,26,'Analista'),(31,27,'Dev'),(33,28,'Dev'),(34,29,'HR');

--(32,30,'Manager');

SELECT * FROM Progetti;
SELECT * FROM Assegnazioni;
SELECT * FROM Dipendenti;
SELECT * FROM Reparti;
INSERT INTO Ordini (ClienteID, DataOrdine, Totale) VALUES
    (1,'2025-01-01',1500),
    (1,'2025-01-10',2000),
    (2,'2025-02-01',500),
    (3,'2025-02-10',1200),
    (4,'2025-03-01',800),
    (5,'2025-03-10',3000);

SELECT * FROM Ordini;

INSERT INTO Clienti (Nome, Email, Telefono) VALUES
    ('Acme SRL','acme@mail.com','3331111111'),
    ('Beta Spa','beta@mail.com','3332222222'),
    ('Gamma Srl','gamma@mail.com','3333333333'),
    ('Delta Srl','delta@mail.com','3334444444'),
    ('Omega Spa','omega@mail.com','3335555555');

SELECT * FROM Clienti;

    -- Insert DettagliOrdine
INSERT INTO DettagliOrdine (OrdineID, Prodotto, Quantita, PrezzoUnitario) VALUES
    (7,'Laptop',1,1500),
    (2,'Server',1,2000),
    (3,'Mouse',5,100),
    (3,'Tastiera',1,100),
    (4,'Monitor',2,600),
    (5,'Stampante',1,800),
    (6,'PC Gaming',1,3000);

SELECT * FROM DettagliOrdine;

