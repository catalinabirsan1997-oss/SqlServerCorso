
-- =============================================
-- Author:		Catalina
-- Create date: 28/04/2026
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_GetStudenteByName
	-- Add the parameters for the stored procedure here
	@Nome NVARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		StudenteId,
		Nome + ' - ' + Cognome AS 'Nome completo',
		ISNULL(CONVERT(NVARCHAR, DataNascita, 103), 'N/D') AS DataNascita,
		ISNULL(CONVERT(NVARCHAR, Email), 'N/E') AS Email,
		ISNULL(CONVERT(NVARCHAR, Telefono), '000000000') AS Telefono,
		ISNULL(CONVERT(CHAR(16), CodiceFiscale), 'CF-NULL') AS CodiceFiscale
	
	FROM Studenti
	WHERE Nome=@Nome
END
GO;

EXEC sp_GetStudenteByName 'Sara';
--cancellare una procedure: 
SELECT*FROM Studenti;