use BikeStores --using BikeStores DB. It's a sample database from www.sqlservertutorial.net


--reading category table
select * from production.categories 


--reading products where prices between 300 and 500
select product_id,
       product_name,
	   list_price
from production.products
where list_price between 300 and 500 


--reading products where their prices are 189.99, 209.99 and 470.99 order by brandID
select * from production.products
where list_price in (189.99,209.99,470.99)
order by brand_id asc


--reading employees whose names starting with "M"
select * 
from sales.staffs
where first_name like 'm%'


--reading orders where order date is between given dates
select * from sales.orders
where order_date between '2016-01-01' and '2016-01-31'


--reading productID and storeID where products are out of stock
select product_id,
       store_id
from production.stocks
where quantity = 0


--reading employees whose names contain "ne"
select * 
from sales.staffs
where first_name like '%ne%'


--reading customers with no phone number
select * from sales.customers
where phone is null


--reading orders where their shipment is delayed
select *
from sales.orders
where shipped_date>required_date


--Using another database to practice

use Northwind


select TitleOfCourtesy,
       firstname+SPACE(1)+LastName as [Full Name],
	   DATEDIFF(YEAR,BirthDate,GETDATE()) as Age       
from Employees


--reading the products with instock units between 0 and 100
select *
from Products
where UnitsInStock between 0 and 100
order by CategoryID asc


--reading all of the data from the products
select * from Products 


--reading the products with instock units between 0 and 100
select *
from Products
where UnitsInStock between 0 and 100
order by CategoryID asc

