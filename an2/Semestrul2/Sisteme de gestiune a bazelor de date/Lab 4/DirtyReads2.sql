SET TRANSACTION ISOLATION LEVEL READ COMMITTED -- Problem: UNCOMMITTED
	BEGIN TRAN
	SELECT * FROM Client
	WAITFOR DELAY '00:00:10'
	SELECT * FROM Client
COMMIT TRAN