
--Using Trigger

use Northwind


--In this scenario, I would like to create a trigger that updates the product quantity in the order. 
--The order has already been placed for 12 pieces but then it is being increased to 32. Therefore the unitsinstock needs to decrease accordingly.

GO
CREATE TRIGGER trg_SiparisGuncelleme on [order details]
AFTER UPDATE
AS
  BEGIN
   declare @yeniAdet int, @hangiUrunID int, @eskiAdet int
   select @hangiUrunID=ProductID, @yeniAdet=Quantity from inserted
   select @eskiAdet=Quantity from deleted

   update Products 
   set UnitsInStock=UnitsInStock-(@yeniAdet-@eskiAdet)
   where ProductID=@hangiUrunID
  END
 GO


update [Order Details] set Quantity = 32 where OrderID=10248 and ProductID = 11

select * from [Order Details]
select * from Products