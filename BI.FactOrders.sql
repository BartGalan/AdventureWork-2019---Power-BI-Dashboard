create table BI.FactOrders (
	SalesOrderID INT 
	,SalesOrderDetailID INT PRIMARY KEY
	,OrderQty INT
	,ProductID INT
	,UnitPrice DECIMAL(18, 2)
	,UnitPriceDiscount DECIMAL(18, 2)
	,LineTotal DECIMAL(18, 2)
)

INSERT INTO BI.FactOrders (SalesOrderID, SalesOrderDetailID, OrderQty, ProductID, UnitPrice, UnitPriceDiscount, LineTotal) 
SELECT
	sod.SalesOrderID
	,sod.SalesOrderDetailID
	,sod.OrderQty
	,sod.ProductID
	,sod.UnitPrice
	,sod.UnitPriceDiscount
	,sod.LineTotal
FROM Sales.SalesOrderDetail sod

create view vw.FactOrders as
select * 
from BI.FactOrders


