CREATE PROCEDURE sp_create_dim_PC
AS
BEGIN
  DROP TABLE [computer_std].[dbo].[dim_pc]
CREATE TABLE [computer_std].[dbo].[dim_pc](
	[PC_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL
)

---insert data into dim PC
INSERT INTO [computer_std].[dbo].[dim_PC] (pc_make, pc_model)
SELECT DISTINCT [pc_make],
				[pc_model]
FROM  [computer_std].[dbo].[uncleaned_pc_data]
END;