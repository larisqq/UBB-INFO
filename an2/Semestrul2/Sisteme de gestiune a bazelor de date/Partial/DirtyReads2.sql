BEGIN TRANSACTION
	UPDATE Publicatii SET
	Taxa=113 WHERE Aid = 1;
	WAITFOR DELAY '00:00:7';
ROLLBACK TRANSACTION

UPDATE Publicatii SET
	Taxa=500 WHERE Aid = 1;