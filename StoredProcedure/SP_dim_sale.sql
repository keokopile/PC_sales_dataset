CREATE PROCEDURE sp_create_dim_sale
AS
BEGIN
  DROP TABLE [computer_std].[dbo].[dim_sale]
CREATE TABLE [computer_std].[dbo].[dim_sale](
	[Sale_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL
)
---insert data into dim sale
INSERT INTO [computer_std].[dbo].[dim_sale] (sales_person_department, sales_person_name)
SELECT DISTINCT [sales_person_department], 
				[sales_person_name]
FROM  [computer_std].[dbo].[uncleaned_pc_data]
END;