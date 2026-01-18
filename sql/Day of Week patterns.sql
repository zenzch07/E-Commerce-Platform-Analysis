SELECT
FORMAT_DATE('%A',Date) as day_of_week,
ROUND(SUM(Total_Amount),2) as Total_Revenue,
ROUND(AVG(Total_Amount),2) as avg_order_value,
COUNT(Order_ID) as no_of_sales
from ecomm.df
GROUP BY day_of_week
ORDER BY CASE day_of_week
WHEN 'Monday' THEN 1
WHEN 'Tuesday' THEN 2
WHEN 'Wednesday' THEN 3
WHEN 'Thursday' THEN 4
WHEN 'Friday' THEN 5
WHEN 'Saturday' THEN 6
ELSE 7
END 