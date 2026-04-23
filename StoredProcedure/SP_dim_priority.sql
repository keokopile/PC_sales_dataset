CREATE PROCEDURE sp_create_dim_priority
AS
BEGIN
  DROP TABLE [computer_std].[dbo].[dim_priority]
CREATE TABLE [computer_std].[dbo].[dim_priority](
	[priority_id] INT IDENTITY (1,1) PRIMARY KEY,
	[Priority] [nvarchar] (50) NOT NULL
)
---insert data into dim PRIORITY
INSERT INTO [computer_std].[dbo].[dim_priority] (priority)
SELECT DISTINCT [priority]
FROM  [computer_std].[dbo].[uncleaned_pc_data]
END;