use Northwind

--reading all of the data from the products
select * from Products 

--reading the products with instock units between 0 and 100
select *
from Products
where UnitsInStock between 0 and 100
order by CategoryID asc

--reading the total number of product that are available
select COUNT(ProductID) as [Total Product Number]
from Products

--reading the total units in stock
select SUM(UnitsInStock) as [Total Units in Stock]
from Products

--reading the employees that are older than 65 years old, listed in ascending order of birth years of the employees
select EmployeeID,
       TitleOfCourtesy+SPACE(1)+FirstName+SPACE(1)+LastName as [Full Name],
	   CONVERT(varchar(10), BirthDate, 103) as BirthDate,
	   DATEDIFF("YY",BirthDate,GETDATE()) as Age,
	   Country,
	   City,
	   Address,
	   CONVERT(varchar(10),HireDate, 103) as HireDate	   
from Employees
where DATEDIFF("YY",BirthDate,GETDATE()) > 65
order by YEAR(BirthDate) asc

--reading female employees by their title of courtesy in the alphabetical order of firstnames
select EmployeeID,
       TitleOfCourtesy+SPACE(1)+FirstName+SPACE(1)+LastName as [Full Name],
	   CONVERT(varchar(10), BirthDate, 103) as BirthDate,
	   DATEDIFF("YY",BirthDate,GETDATE()) as Age,
	   Country,
	   City,
	   Address,
	   CONVERT(varchar(10),HireDate, 103) as HireDate	
from Employees
where TitleOfCourtesy like '%s.'
order by FirstName asc


--Reading orders with a revenue of higher than 5000 
select ProductID,
       CAST(SUM(UnitPrice*Quantity*(1-Discount)) as smallmoney) as [Total Purchase Revenue]
from [Order Details]
group by [ProductID]
having SUM(UnitPrice*Quantity*(1-Discount)) > 5000
order by [Total Purchase Revenue] asc


--Reading products that have been sold order by order dates
select p.ProductID,
       p.ProductName,
	   p.UnitPrice,
	  CAST(DAY(o.OrderDate) as varchar)+'.'+CAST(MONTH(o.OrderDate) as varchar)+'.'+CAST(YEAR(o.OrderDate) as varchar) as [Order Date]
from Products p
join [Order Details] od on p.ProductID=od.ProductID
join Orders o on od.OrderID=o.OrderID
order by 4 asc


--Reading number of countries grouped by category name that have been made a sell
select CategoryName,
       Count(c.CategoryID) as [Number of Countries]
from Categories c
join Products p on p.CategoryID=c.CategoryID
join [Order Details] od on p.ProductID=od.ProductID
join Orders o on od.OrderID=o.OrderID
group by CategoryName
order by 2 desc

