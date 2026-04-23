CREATE PROCEDURE sp_create_dim_channel
AS
BEGIN
  DROP TABLE [computer_std].[dbo].[dim_channel]
CREATE TABLE [computer_std].[dbo].[dim_channel](
	[Channel_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Channel] [nvarchar](50) NOT NULL
)

---insert data into dim channel
INSERT INTO [computer_std].[dbo].[dim_channel] (channel)
SELECT DISTINCT [channel]
FROM  [computer_std].[dbo].[uncleaned_pc_data];
END;