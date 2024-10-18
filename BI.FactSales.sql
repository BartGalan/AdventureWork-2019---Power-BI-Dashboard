CREATE TABLE BI.FactSales (
    SalesOrderID INT PRIMARY KEY
    ,OrderDate DATE
	,ShipDate date
    ,CustomerID INT
	,SubTotal DECIMAL(18, 2)
	,TaxAmount DECIMAL(18, 2)
	,FreightAmount	DECIMAL(18, 2)
    ,TotalDue DECIMAL(18, 2)
    ,SalesPersonID INT
    ,TerritoryID INT
)

INSERT INTO BI.FactSales (SalesOrderID, OrderDate, ShipDate, CustomerID, SubTotal, TaxAmount, FreightAmount, TotalDue, SalesPersonID, TerritoryID)
SELECT 
    soh.SalesOrderID
    ,soh.OrderDate
	,soh.ShipDate
    ,soh.CustomerID
	,soh.SubTotal
	,soh.TaxAmt
	,soh.Freight
    ,soh.TotalDue
    ,soh.SalesPersonID
    ,soh.TerritoryID
FROM Sales.SalesOrderHeader AS soh;


create view vw.FactSales as
select * 
from BI.FactSales



