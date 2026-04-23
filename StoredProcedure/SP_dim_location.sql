CREATE PROCEDURE sp_create_dim_location
AS
BEGIN
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
END;