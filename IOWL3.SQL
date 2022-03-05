--3.	What is the most popular consumed liquor in Iowa?
SELECT 
item_description
,ROUND(SUM(volume_sold_gallons),2) AS gallons_sold
FROM `bigquery-public-data.iowa_liquor_sales.sales` 
GROUP BY 1
ORDER BY 2 DESC limit 5
