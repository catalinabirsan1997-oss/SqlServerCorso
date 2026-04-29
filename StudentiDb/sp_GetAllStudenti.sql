
-- =============================================
-- Author:		Catalina
-- Create date: 28/04/2026
-- Description:	Questa query restituiscire la lista di tutti gli studenti
-- =============================================
CREATE PROCEDURE sp_GetAllStudenti-- nome della procedura
AS
BEGIN
 -- Insert statements for procedure here
	SELECT * FROM Studenti;
END
GO

-- Esecuzione della stored procedure
EXEC sp_GetAllStudenti;

