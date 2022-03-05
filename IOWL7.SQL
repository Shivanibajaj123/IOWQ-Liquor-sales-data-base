--7.	number of stores of HY-Vee brand
SELECT COUNT(distinct store_name) 
  FROM `bigquery-public-data.iowa_liquor_sales.sales` 
WHERE store_name LIKE '%Hy-Vee%'
