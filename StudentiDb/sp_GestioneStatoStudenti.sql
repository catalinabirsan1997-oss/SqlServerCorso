
-- =============================================
-- Author:		Catalina
-- Create date: 28/04/2026
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_GestioneStatoStudenti
AS
BEGIN
	SELECT
	Nome,
	Cognome,
	ISNULL(CONVERT(NVARCHAR, DataNascita, 103), 'DD/MM/YYYY') AS DataNascita,
		CASE -- condizione verifica se ci sono date di nascita
			WHEN DataNascita IS NULL THEN 'Manca la data di nascita'
			ELSE 'Data presente'
		END AS Stato
	FROM Studenti;
END,
ELSE
BEGIN
	PRINT 'Tutti gli studenti hanno la data di nascita'
END
GO
