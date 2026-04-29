USE AziendaDb;

SELECT * FROM Assegnazioni;
SELECT * FROM Progetti;

-- modifica del tipo della colonna Nome aumentando la dimensione a 150
ALTER TABLE Progetti
ALTER COLUMN Nome NVARCHAR(150) NULL;

-- ALTER TABLE Tabella 
-- ALTER COLUMN Colonna 
-- ADD CONSTRAINT 
-- => Tipo NVARCHAR (20) NOT NULL;

SELECT * FROM Clienti;

ALTER TABLE Clienti
ALTER COLUMN Email NVARCHAR(150) NOT NULL;

ALTER TABLE Clienti
ALTER COLUMN Email NVARCHAR(50) UNIQUE NOT NULL; -- DA RIVEDERE DOPO

ALTER TABLE 
ALTER COLUMN

-- Verificare il tipo di colonna
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Clienti'
AND COLUMN_NAME = 'Email';


ALTER TABLE Dipendenti
ALTER COLUMN Salario DECIMAL (10,2) NOT NULL;

ALTER TABLE Dipendenti
ADD Telefono NVARCHAR(50);

INSERT INTO Dipendenti
(Nome, Cognome, Email, Stipendio, DataAssunzione, RepartoId, Telefono)
VALUES