---drop the table to be empity of data
DROP TABLE [dbo].[dim_customer]

CREATE TABLE [dbo].[dim_customer](
	[Customer_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
)


SELECT * FROM [computer_std].[dbo].[dim_customer]


---insert data into dim customer
INSERT INTO [computer_std].[dbo].[dim_customer] (customer_name, customer_surname, customer_email_address)

SELECT [Customer_Name],
	   [customer_surname],
	   [customer_email_address]
FROM [computer_std].[dbo].[uncleaned_pc_data]
