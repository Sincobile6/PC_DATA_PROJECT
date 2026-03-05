-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).

select sum(Sale_price) as total_revenue
from pc_sales

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).

select sum(Sale_Price - Cost_Price) as Total_Profit
from pc_sales

-- 13. Find the average Discount Amount.

select AVG(discount_amount) as averageDiscount
from pc_sales

-- 14. Calculate total Finance Amount issued.

select sum(convert, int(finance_amount)) as Total_Finance_Amount
from pc_sales

-- 15. Find total revenue per PC Make.

select pc_make sum(sale_price) as total_revenue
from pc_sales
group by pc_make

-- 16. Find average Sale Price per Storage Type.

select storage_type avg(sale_price) as Average_Sale_Price
from pc_sales
group by storage_type

-- 17. Calculate total revenue per Shop Name.
-- 18. Calculate total revenue per Sales Person Name.
-- 19. Find average Credit Score per Payment Method.
-- 20. Calculate total Cost of Repairs per Sales Person Department.