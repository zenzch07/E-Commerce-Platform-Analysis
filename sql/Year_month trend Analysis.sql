SELECT FORMAT_DATE('%Y-%m',Date) as year_month,
SUM(Total_Amount) as Revenue,
COUNT(Order_ID) as no_of_sales
from ecomm.df
GROUP BY year_month
ORDER BY year_month