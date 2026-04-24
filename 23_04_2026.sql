use AziendaDb;

/*
    SUM, AVG, COUNT, MIN e MAX 
	permettono calcoli su gruppi di dati in SQL Server.
*/

	--contare le righe della tabella (COUNT)

SELECT
	COUNT(*) AS 'Totale righe'
FROM Assegnazioni;

	-- quante righe di ruoli ci sono 

SELECT 
	COUNT(a.Ruolo) AS 'tot righe'
FROM Assegnazioni a;

SELECT
	COUNT(EMAIL) AS Email
FROM Clienti;

-- AVG = media

SELECT
	AVG(Salario) AS 'Salario media'
FROM Dipendenti;

SELECT
COUNT(*) AS 'NumRighe',
	AVG(Salario) AS 'Salario media'
FROM Dipendenti;

-- SUM = somma

SELECT
	SUM(Salario) AS 'Totale stipendi'
FROM Dipendenti;

SELECT
	COUNT(*) AS 'NumRighe',
	AVG(Salario) AS 'Salario media',
	SUM(Salario) AS 'Totale stipendi',
	MIN(Salario) AS 'Stipendio minimo',
	MAX(Salario) AS 'Stipendio massimo'
FROM Dipendenti;

-- MIN = MINIMO

SELECT
	MIN(Salario) AS 'Stipendio minimo'
FROM Dipendenti;

	--MAX = valore piu grande

SELECT
	MAX(Salario) AS 'Stipendio massimo'
FROM Dipendenti;

/*ESEMPIO: stipendio per reparto
	Nome completo del dipendente
	Salario
	Stipendio media
	Nome del reparto
	Sede
*/
SELECT 
	d.Nome + ' ' + d.Cognome AS 'Nome completo del dipendente',
	d.Salario,
	AVG(d.Salario) AS 'Stipendio media',
	r.Nome AS 'Nome del reparto',
	r.Sede
FROM Dipendenti AS d
INNER JOIN Reparti AS r ON r.RepartoId = d.RepartoId
GROUP BY d.Nome, d.Cognome, AVG(Salario),d.Salario, r.Nome, r.Sede
ORDER BY r.Nome Desc

SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine;


--report analisi dei dati
SELECT
	COUNT(*) AS 'NumRighe',
	AVG(Salario) AS 'Salario media',
	SUM(Salario) AS 'Totale stipendi',
	MIN(Salario) AS 'Stipendio minimo',
	MAX(Salario) AS 'Stipendio massimo'
FROM Dipendenti;