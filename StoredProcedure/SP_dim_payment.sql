CREATE PROCEDURE sp_create_dim_payment
AS
BEGIN
  DROP TABLE [computer_std].[dbo].[dim.payment]
CREATE TABLE [computer_std].[dbo].[dim.payment](
	[Payment_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Payment_Method] [nvarchar](50) NOT NULL
)

---insert data into dim payment
INSERT INTO [computer_std].[dbo].[dim.payment] (payment_method)
SELECT DISTINCT [payment_method]
FROM  [computer_std].[dbo].[uncleaned_pc_data]
END;