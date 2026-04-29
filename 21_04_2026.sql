USE AziendaDb;

SELECT * FROM Ordini;

--Insert DettagliOrdine
INSERT INTO DettagliOrdine (OrdineID, Prodotto, Quantita, PrezzoUnitario) VALUES
    (17,'Laptop',1,1500),
    (18,'Server',1,2000),
        (19,'Mouse',5,100),
        (20,'Tastiera',1,100),
        (21,'Monitor',2,600),
        (22,'Stampante',1,800),
        (23,'PC Gaming',1,3000);

EXEC sp_rename 'Dipendenti.Stipendio','Salario';

SELECT * FROM Dipendenti;



ALTER TABLE DettagliOrdine
ALTER COLUMN Quantita NVARCHAR(150) NOT NULL;

SELECT*FROM Clienti; 

ALTER TABLE Clienti
ADD Cognome NVARCHAR(100);

UPDATE Clienti 
SET Cognome = 'Greco'
WHERE ClienteId = 1;

ALTER TABLE Clienti
ADD IndirizzoAbitazione NVARCHAR(100);

ALTER TABLE Clienti
ADD Prova NVARCHAR(100);

ALTER TABLE Clienti
DROP COLUMN Prova;


-- inserire indirizzo al ClienteId 1
UPDATE Clienti 
SET IndirizzoAbitazione = 'viale europa'
WHERE ClienteId = 1;


SELECT * FROM Clienti;
    /*UPDATE NOME TABELLA
    --SET NOME COLONNA
    --WHERE valorenome*/

    -- UPDATE CON CONDIZIONI (IMPORTANTISSIMO)
-- Aumenta stipendio solo a chi guadagna meno di 2500
UPDATE Dipendenti
SET Salario = Salario + 200
WHERE Salario < 2500;

--inserire salario di 1300 a tutti quelli che non lo hanno
UPDATE Dipendenti
SET Salario = 1300
WHERE Salario is null;

-- modificare il nome di una tabella
EXEC sp_rename 'ClientiAzienda','Clienti';
-- aumento salario di 200 al dipendenteId n. 12
UPDATE Dipendenti
SET Salario = Salario + 200
WHERE DipendenteId = 12;

-- aumento del 10% salario
UPDATE Dipendenti
SET Salario = Salario*1.10;

-- cambiare il repartoid al dipendenteid
UPDATE Dipendenti
SET RepartoId = 1
WHERE DipendenteId = 51;

UPDATE Clienti
SET IndirizzoAbitazione = 'via roma 2'
WHERE IndirizzoAbitazione is null;

-- AS => Alias (rinominare la colonna)
 /*   -- INNER JOIN(JOIN), LEFT JOIN(da sinistra, RIGHT JOIN(da destra), FULL JOIN

    SELECT Colonne da visualizzare
    FROM Tabella1
    INNER JOIN Tabella2 
    ON Condizione
*/
-- USARE AS per cambiare i nomi delle colonne e tabelle
--solo dipendenti che hanno un reparto valido
/*colonne da visualizzare: 
(Nome Completo del dipendente, Email, Nome del reparto, Sede)*/

SELECT d.Nome AS 'Nome del dipendente',
       d.Cognome 'Cognome del dipendente',
       d.Email,
       r.Nome As 'Nome del Reparto',
       r.Sede
FROM Dipendenti AS d
INNER JOIN Reparti AS r 
ON d.RepartoId= r.RepartoId;

-- Clienti(Nome, Telefono), 
--Ordini(DataOrdine,Totale),
-- DettagliOrdine(Prodotto, Quantita, PrezzoUnitario)

SELECT 
*
FROM Clienti AS cl
JOIN Ordini AS o
ON o.ClienteId = cl.ClienteId
JOIN DettagliOrdine AS d
ON d.OrdineId = o.OrdineId

SELECT 
    cl.Nome AS 'Nome del cliente',
    cl.Telefono AS Contatto,
    o.DataOrdine AS 'Data dell''ordine',
    d.Prodotto AS 'Nome del prodotto',
    d.Quantita AS  'Quantità del prodotto',
    d.PrezzoUnitario AS 'Prezzo Unitario',
    o.Totale AS 'Prezzo totale'
FROM Clienti AS cl
JOIN Ordini AS o
ON o.ClienteId = cl.ClienteId -- ON = a condizione che 
JOIN DettagliOrdine AS d
ON d.OrdineId = o.OrdineId;

--CONCATENAZIONE (+) serve a dire di unire combinazione di un insieme di caratteri

SELECT d.Nome + ' ' + d.Cognome 'Nome Completo del dipendente',
       d.Email,
       r.Nome As 'Nome del Reparto',
       r.Sede
FROM Dipendenti AS d
INNER JOIN Reparti AS r 
ON d.RepartoId= r.RepartoId;

/*
    SUM, AVG, COUNT, MIN e MAX 
	permettono calcoli su gruppi di dati in SQL Server.
*/


-- ESERCITARSI SU DELETE SENZA DIMENTICARE DI METTERE L-ID SPECIFICO

SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine; -- Ordini