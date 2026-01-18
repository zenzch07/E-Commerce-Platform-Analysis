SELECT Product_Category as Product,
ROUND(SUM(Total_Amount),2) as Revenue,
ROUND(AVG(Total_Amount),2) as avg_order_value,
ROUND(AVG(Customer_Rating),2) as avg_rating,
COUNT(*) as no_of_sales,
SUM(Quantity) as items_sold,
ROUND(AVG(Quantity),2) as avg_items_per_order
from ecomm.df
GROUP BY Product
ORDER BY Revenue DESC