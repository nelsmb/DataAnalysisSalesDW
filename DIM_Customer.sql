/* DIM Customers Info */
SELECT 
       [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName]
      --,[MiddleName]
      ,[LastName]
	  ,CONCAT([FirstName],' ',[LastName]) AS FullName
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE WHEN [Gender] = 'M' THEN 'Male' WHEN [Gender] = 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,[City] -- From [DimGeography]
  FROM 
       [AdventureWorksDW2019].[dbo].[DimCustomer]
       LEFT JOIN [dbo].[DimGeography]
       ON [dbo].[DimCustomer].[GeographyKey] = [dbo].[DimGeography].[GeographyKey]
  ORDER BY 
       [CustomerKey] ASC -- Order by Customer