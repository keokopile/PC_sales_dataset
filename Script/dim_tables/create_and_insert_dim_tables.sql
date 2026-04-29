---CREATE TABLE IF NOT EXIST
DROP TABLE [dbo].[dim_customer]
CREATE TABLE [computer_std].[dbo].[dim_customer](
	[Customer_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
)

---insert data into dim customer
INSERT INTO [computer_std].[dbo].[dim_customer] (customer_name, customer_surname, customer_email_address)
SELECT DISTINCT
	   [Customer_Name],
	   [customer_surname],
	   [customer_email_address]
FROM [computer_std].[dbo].[uncleaned_pc_data]

----select all the data from the dim customer
SELECT * FROM [computer_std].[dbo].[dim_customer]



----create table if not exist
DROP TABLE [computer_std].[dbo].[dim_location]
CREATE TABLE [computer_std].[dbo].[dim_location](
	[Location_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
)

---insert data into dim LOCATION
INSERT INTO [computer_std].[dbo].[dim_location] (continent, country_or_state, province_or_city)
SELECT DISTINCT [continent],
				[country_or_state],
				[province_or_city]
FROM  [computer_std].[dbo].[uncleaned_pc_data]

----select all the data from the dim location
SELECT * FROM [computer_std].[dbo].[dim_location]


----create table if not exist
DROP TABLE [computer_std].[dbo].[dim.payment]
CREATE TABLE [computer_std].[dbo].[dim.payment](
	[Payment_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Payment_Method] [nvarchar](50) NOT NULL
)

---insert data into dim payment
INSERT INTO [computer_std].[dbo].[dim.payment] (payment_method)
SELECT DISTINCT [payment_method]
FROM  [computer_std].[dbo].[uncleaned_pc_data]

----select all the data from the dim payment
SELECT * FROM [computer_std].[dbo].[dim.payment]

---create table if not exist
DROP TABLE [computer_std].[dbo].[dim_channel]
CREATE TABLE [computer_std].[dbo].[dim_channel](
	[Channel_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Channel] [nvarchar](50) NOT NULL
)

---insert data into dim channel
INSERT INTO [computer_std].[dbo].[dim_channel] (channel)
SELECT DISTINCT [channel]
FROM  [computer_std].[dbo].[uncleaned_pc_data]

----select all the data from the dim channel
SELECT * FROM [computer_std].[dbo].[dim_channel]


----create table if not exist
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

----select all the data from the dim PC
SELECT * FROM [computer_std].[dbo].[dim_pc]



----create table if not exist
DROP TABLE [computer_std].[dbo].[dim_priority]
CREATE TABLE [computer_std].[dbo].[dim_priority](
	[priority_id] INT IDENTITY (1,1) PRIMARY KEY,
	[Priority] [nvarchar] (50) NOT NULL
)
---insert data into dim PRIORITY
INSERT INTO [computer_std].[dbo].[dim_priority] (priority)
SELECT DISTINCT [priority]
FROM  [computer_std].[dbo].[uncleaned_pc_data]

----select all the data from the dim priority
SELECT * FROM [computer_std].[dbo].[dim_pc]


---create table if not exit
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

----select all the data from the dim sale
SELECT * FROM [computer_std].[dbo].[dim_sale]


----create table if not exist
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

----select all the data from the dim shop
SELECT * FROM [computer_std].[dbo].[dim_shop]

-----create table if not exist
DROP TABLE [computer_std].[dbo].[dim_storage]
CREATE TABLE [computer_std].[dbo].[dim_storage](
	[Storage_id] INT IDENTITY(1,1) PRIMARY KEY,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[RAM] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL
)

---insert data into dim STORAGE
INSERT INTO [computer_std].[dbo].[dim_storage] (storage_type, ram, storage_capacity)
SELECT storage_type, ram, storage_capacity
FROM  [computer_std].[dbo].[uncleaned_pc_data]

----select all the data from the dim STORAGE	
SELECT * FROM [computer_std].[dbo].[dim_storage]



