--2.	TO FIND MAXIMUM PACKS SOLD OF A SINGLE LIQUOR BRAND

SELECT item_description, MAX(pack) AS Pack
FROM `bigquery-public-data.iowa_liquor_sales.sales` 
GROUP BY item_description
ORDER BY Pack DESC limit 5
