-- 1. SUBQUERY (SOTTOQUERY)

-- media normale
SELECT 
	AVG(Totale) AS Media
FROM Ordini;
-- SUBQUERY Totale sopra la media
SELECT * FROM Ordini
WHERE Totale> (
SELECT 
	AVG(Totale) AS Media
FROM Ordini
);

-- SUBQUERY Totale sotto la media
SELECT * FROM Ordini
WHERE Totale< (
SELECT 
	AVG(Totale) AS Media
FROM Ordini
);

/* 
	SELECT
	-----*-----
	FROM ----
	WHERE CONDIZIONE CON (
		SELECT
		----*---- 
		FROM ----
	);
*/

-- CLIENTI SENZA ORDINI CON (NOT IN)
SELECT * FROM Ordini;

INSERT INTO Ordini (ClienteId)
VALUES 
(31);

SELECT ClienteId
FROM Ordini
	WHERE ClienteId not in(
	SELECT ClienteId 
	FROM ORDINI
	);


	-- ordini sopra la media del cliente
SELECT 
	AVG(Totale) AS Media
FROM Ordini
	WHERE  Totale > (
	SELECT
		AVG(Totale) AS Media
	FROM Ordini
);

SELECT
*
FROM Ordini o
INNER JOIN Clienti c
	ON c.ClienteId=o.ClienteId;


SELECT
*
FROM Ordini AS o
WHERE Totale >(
	SELECT
		AVG(Totale) AS 'Sopra Media'
		FROM Ordini oo
		WHERE o.ClienteId=oo.ClienteId
);

-- trovare gli ordini sopra la media del cliente
SELECT DISTINCT
	o.OrdineId,
	o.ClienteId,
	o.Totale,
	m.MediaCliente
FROM Ordini AS o
INNER JOIN (
	SELECT 
		AVG(oo.Totale) AS MediaCliente
	FROM Ordini as oo
	GROUP BY oo.ClienteId
) AS m ON o.Totale =m.MediaCliente;

SELECT 
	ClienteId,
	AVG(Totale)
FROM Ordini
GROUP BY ClienteId;

-- 2. WHERE E HAVING

/*
	SELECT
	   ----*---
	   FROM ----
	   GROUP BY ---
	   HAVING -----
*/

SELECT
	Prodotto,
	SUM(Quantita) AS QuantitaOrdine
FROM DettagliOrdine
GROUP BY Prodotto
	   HAVING SUM
-- 3. DATA IN SQL SERVER
SELECT *
FROM Ordini
WHERE DataOrdine <'2018-01-18';

SELECT * 
FROM Ordini
WHERE DataOrdine >= DATEADD(DAY, -30, GETDATE());

SELECT 
	CONVERT(NVARCHAR, YEAR(DataOrdine)) AS Anno,
	CONVERT(NVARCHAR, MONTH(DataOrdine)) AS Mese,
	CONVERT(NVARCHAR, DAY(DataOrdine)) AS Giorno
FROM Ordini
WHERE DataOrdine >= DATEADD(YEAR, -30, GETDATE());

--Ordini per mese

--4. TUTTI I JOIN (Left join, right join, inner join, join)

-- 4. CONDIZIONI IF/ELSE (CASE THEN

-- 6. STORE PROCEDURE
-- 7. BACK-UP STANDARD E AUTOMATIZZATA DEL DB
-- 8. VIEW = VISTE


