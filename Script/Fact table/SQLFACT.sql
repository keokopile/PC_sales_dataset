------CREATE FACT TABLE 

SELECT  
      [Cost_Price]
      ,[Sale_Price]
      ,[Discount_Amount]
      ,[Purchase_Date]
      ,[Ship_Date]
      ,[Finance_Amount]
     
      ,[Credit_Score]
      
      ,[Cost_of_Repairs]
      ,[Total_Sales_per_Employee]
      ,[PC_Market_Price]
  INTO  [computer_std].[dbo].[fact_pc_order_stats]   
  FROM [computer_std].[dbo].[uncleaned_pc_data]


  ----SELECET STATEMENT 
  SELECT * FROM [computer_std].[dbo].[fact_pc_order_stats]

  ---DISTINCT
  SELECT DISTINCT  [computer_std].[dbo].[fact_pc_order_stats];