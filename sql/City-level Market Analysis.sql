SELECT City,
ROUND(COUNT(*)*100/SUM(COUNT(*)) OVER(),2) AS Market_share,
ROUND(AVG(Total_Amount),2) as avg_order_value,
ROUND(SUM(Total_Amount)*100/SUM(SUM(Total_Amount)) OVER(),2) as Revenue_share,
from ecomm.df
GROUP BY City
ORDER BY Market_share DESC