SELECT TOP (1000) [Storage_Type]
      ,[RAM]
      ,[Storage_Capacity]
  FROM [computer_std].[dbo].[dim_storage]

  SELECT * FROM [computer_std].[dbo].[dim_storage]

  SELECT DISTINCT storage
  FROM [computer_std].[dbo].[dim_storage]