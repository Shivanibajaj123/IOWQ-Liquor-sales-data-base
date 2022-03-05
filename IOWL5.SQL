--5.	numbers of bottles sold in distinct city

SELECT DISTINCT city, COUNT(bottles_sold) AS bottles 
FROM `bigquery-public-data.iowa_liquor_sales.sales` 
GROUP BY city, bottles_sold limit 5
