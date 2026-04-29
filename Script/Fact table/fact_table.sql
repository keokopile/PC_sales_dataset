DROP TABLE [computer_std].[fact_pc_order_stats
CREATE TABLE [dbo].[fact_pc_order_stats](
	[customer_id],
	[payment_id],
	[channel_id],
	[location_id],
	[priority_id],
	[sale_id],
	[shop_id],
	[storage_id],
	[pc_id]
	[Cost_Price] [int] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Discount_Amount] [int] NOT NULL,
	[Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL,
	[Finance_Amount] [nvarchar](50) NOT NULL,
	[Credit_Score] [int] NOT NULL,
	[Cost_of_Repairs] [nvarchar](50) NOT NULL,
	[Total_Sales_per_Employee] [int] NOT NULL,
	[PC_Market_Price] [int] NOT NULL
) 


