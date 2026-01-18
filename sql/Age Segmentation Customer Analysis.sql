SELECT CASE
WHEN Age<=35 THEN 'Youth' #Bottom 50 percentile
WHEN Age>35 AND Age<=42 THEN 'Middle-Age' #50-75 percentile
ELSE 'Old' END AS Age_Group,
ROUND(SUM(Total_Amount),2) AS Total_Revenue,
ROUND(AVG(Total_Amount),2) AS Average_Spend,
ROUND(AVG(Customer_Rating),2) as Average_Rating,
ROUND(SUM(Total_Amount)*100/(SUM(SUM(Total_Amount)) OVER()),2) AS revenue_pct,
ROUND(COUNT(*)*100/SUM(COUNT(*)) OVER(),2) as customer_pct
from ecomm.df
GROUP BY Age_Group