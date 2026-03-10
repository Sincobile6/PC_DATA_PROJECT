-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
SELECT SHOP_NAME SUM(Sale_Price-Cost_Price) AS Profit_per_shop
from pc_sales
group by Shop_Name

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).

select sales_person_name 
sum((Sale_Price - Cost_Price) / Sale_Price) as profit_margin_per_sale
from pc_sales
group by sales_person_name

-- 23. Determine which Continent has the highest total revenue.

select continent sum(sale_price) as total_revenue
from pc_sales
group by continent

-- 24. Calculate average Sale Price per RAM size.

select Ram avg(sale_price) as average_sale_price
from pc_sales
group by Ram

-- 25. Find the PC Model with the highest Sale Price.

select top(10) pc_model, sale_price
from pc_sales
order by sale_price desc

-- 26. Calculate the average number of days between Purchase Date and Ship Date.

SELECT AVG(DATEDIFF(day, Purchase_Date, Ship_Date)) AS AvgDaysBetween
FROM pc_sales

-- 27. Determine which Sales Person Department generates the highest revenue.

select sales_person_department sum(sale_price) as highest_revenue
from pc_sales
group by sales_person_department

-- 28. Calculate total revenue per Storage Capacity.

select storage_capacity sum(sale_price)as total_revenue
from pc_sales
group by storage_capacity

-- 29. Identify sales where Sale Price is lower than PC Market Price.

SELECT SALES_PERSON_NAME, Sale_Price, PC_Market_Price
FROM pc_sales
WHERE Sale_Price < PC_Market_Price

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.
SELECT sales_person_name,
    SUM(total_sales_per_employee) AS total_sales,
    RANK() OVER (ORDER BY SUM(total_sales_per_employee) DESC) AS sales_rank
FROM pc_sales
GROUP BY sales_person_name
ORDER BY sales_rank

