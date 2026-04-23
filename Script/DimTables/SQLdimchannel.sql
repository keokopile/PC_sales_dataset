
-----create dim table channel
 SELECT  channel
  INTO [computer_std].[dbo].[dim_channel]
  FROM [computer_std].[dbo].[uncleaned_pc_data];

-----Use the select statement
SELECT TOP (1000) [Channel]
  FROM [computer_std].[dbo].[dim_channel]


  ----use distinct statement
  SELECT DISTINCT channel
  FROM [computer_std].[dbo].[dim_channel]


  SELECT * FROM [computer_std].[dbo].[dim_channel]
  SELECT * FROM [computer_std].[dbo].[dim.payment]
  SELECT * FROM [computer_std].[dbo].[dim_location]
  SELECT * FROM [computer_std].[dbo].[dim_customer]
  SELECT * FROM [computer_std].[dbo].[dim_pc]
  SELECT * FROM [computer_std].[dbo].[dim_priority]
  SELECT * FROM [computer_std].[dbo].[dim_sale]
  SELECT * FROM [computer_std].[dbo].[dim_shop]
  SELECT * FROM [computer_std].[dbo].[dim_storage]