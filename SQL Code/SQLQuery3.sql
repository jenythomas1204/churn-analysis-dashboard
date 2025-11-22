USE db_Churn;
GO
SELECT Gender, COUNT(Gender) as TotalCount,
COUNT(Gender) * 100.0 / (Select COUNT(*) from stg_Churn) as Percentage
From dbo.stg_Churn
Group By Gender

SELECT Contract, COUNT(Contract) as TotalCount,
COUNT(Contract) * 100.0 / (Select COUNT(*) from Stg_Churn) as Percentage
From Stg_Churn
Group By Contract

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100  as RevPercentage
from stg_Churn
Group by Customer_Status

SELECT State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by State
Order by Percentage desc

Select Distinct Internet_Type
From stg_Churn