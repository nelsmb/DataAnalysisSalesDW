/* DIM Product data */
SELECT
       [ProductKey]
      ,[ProductAlternateKey] AS [ProductItemCode]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS ProductName
	  ,[EnglishProductCategoryName] AS ProductCategory -- Joined with DimProductCategory
	  ,[EnglishProductSubcategoryName] AS ProductSubcategory -- Joined with DimProductSubcategory
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] As ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] AS ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] AS ProductModelName
      --,[LargePhoto]
      ,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL([Status],'Outdated') AS ProductStatus
  FROM 
       [dbo].[DimProduct] AS DP
	   LEFT JOIN [dbo].[DimProductSubcategory] AS DPS
	     ON DP.[ProductSubcategoryKey] = DPS.[ProductSubcategoryKey] 
	   LEFT JOIN [dbo].[DimProductCategory] AS DPC
	     ON DPS.[ProductCategoryKey] = DPC.[ProductCategoryKey]

