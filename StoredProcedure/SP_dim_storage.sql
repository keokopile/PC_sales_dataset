CREATE PROCEDURE sp_create_dim_storage
AS
BEGIN
 INSERT INTO [computer_std].[dbo].[dim_storage] (storage_type, ram, storage_capacity)
SELECT [storage_type], 
	   [ram], 
	   [storage_capacity]
FROM  [computer_std].[dbo].[uncleaned_pc_data]
END;