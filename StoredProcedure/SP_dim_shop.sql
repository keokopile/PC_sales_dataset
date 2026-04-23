CREATE PROCEDURE sp_create_dim_shop
as
BEGIN
  DROP TABLE [computer_std].[dbo].[dim_shop]
CREATE TABLE [dbo].[dim_shop](
	[Shop_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [nvarchar](50) NOT NULL
)

---insert data into dim shop
INSERT INTO [computer_std].[dbo].[dim_shop] (shop_name, shop_age)
SELECT DISTINCT [shop_name], 
				[shop_age]
FROM  [computer_std].[dbo].[uncleaned_pc_data]
END;