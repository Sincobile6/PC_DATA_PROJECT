-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).

select sum(Sale_price) as total_revenue
from pc_sales;

--calculate revenue by pc make

select pc_make sum(convert, int(sale_price)) as revenue
from pc_sales 
group by pc_make;

--find the number of sales per pc_make
select pc_make
count(sale_price) as sales_per_pc_make
from pc_sales
group by pc_make

--find the pc above average price
select pc_make,
avg(sale_price) as average_price
from pc_sales
where avg(sale_price) >sale_price
group by pc_make

select * 
from pc_sales
where sale_price > (select avg(sale_price) from pc_sales) 

--which brand/pc sales generates the most revenue

select top 1 pc_make,
sum(sale_price) as most_revenue
from pc_sales
group by pc_make
order by most_revenue desc;

--which processor type sells the most?

select top 1 ram,
count(sale_price) as sales_of_pcs
from pc_sales
group by ram
order by sales_of_pcs desc

--find the percentage contribution per pc make

select pc_make
sum((sale_price/196781603)*100) as percentage_contribution
from pc_sales
group by pc_make

SELECT 
    Pc_make,
    SUM(Sale_Price) AS Revenue,
    SUM(Sale_Price) * 100.0 /
        (SELECT SUM(Sale_Price) FROM pc_sales) 
        AS Revenue_Percentage
FROM pc_sales
GROUP BY pc_make
ORDER BY Revenue DESC;


SELECT 
    Pc_Make,
    SUM(Sale_Price) AS Revenue,
    SUM(Sale_Price) * 100.0 / SUM(SUM(Sale_Price)) OVER () AS Revenue_Percentage
FROM pc_sales
GROUP BY Pc_Make
ORDER BY Revenue DESC;

--what is the average pc price

--what is the most expensive pc sold

--which brands dominate the market share?

--what percentage of revenue comes from high_end machines?

--which pc are priced above average market price


-- 12. Calculate total profit (SUM of Sale Price - Cost Price).

select sum(Sale_Price - Cost_Price) as Total_Profit
from pc_sales;

-- 13. Find the average Discount Amount.

select AVG(discount_amount) as averageDiscount
from pc_sales

-- 14. Calculate total Finance Amount issued.

select sum (cast(finance_amount) as bigint) as Total_Finance_Amount
from pc_sales

select sum( convert(bigint, finance_amount) as total_financial_amount
from pc_sales

-- 15. Find total revenue per PC Make.

select pc_make 
sum(sale_price) as total_revenue
from pc_sales
group by pc_make

select pc_make 
sum(sale_price - discount_amount) as total_revenue
from pc_sales
group by pc_make

-- 16. Find average Sale Price per Storage Type.

select storage_type avg(sale_price) as Average_Sale_Price
from pc_sales
group by storage_type

-- 17. Calculate total revenue per Shop Name.

select Shop_Name sum(Sale_Price) as total_revenue_per_shop
from pc_sales
group by Shop_Name

-- 18. Calculate total revenue per Sales Person Name.

select sales_person_name sum(sale_price) as total_revenue
from pc_sales
group by sales_person_name

-- 19. Find average Credit Score per Payment Method.
select * from pc_sales

select Payment_Method avg(Credit_Score) as average_Credit_Score
from pc_sales
group by Payment_Method

-- 20. Calculate total Cost of Repairs per Sales Person Department.

select sales_person_department 
SUM(CAST(COST_OF_REPAIRS AS INT) as Total_Cost_of_repairs
from pc_sales
group by sales_person_department