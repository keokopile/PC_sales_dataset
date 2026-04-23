CREATE PROCEDURE sp_create_dim_customer
AS
BEGIN
  DROP TABLE [computer_std].[dbo].[dim_customer]
CREATE TABLE [computer_std].[dbo].[dim_customer](
	[Customer_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
)
---insert data into dim customer
INSERT INTO [computer_std].[dbo].[dim_customer] (customer_name, customer_surname,customer_contact_number, customer_email_address)
SELECT DISTINCT
	   [Customer_Name],
	   [customer_surname],
	   [customer_contact_number],
	   [customer_email_address]
FROM [computer_std].[dbo].[uncleaned_pc_data]
END;