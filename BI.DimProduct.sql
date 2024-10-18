create table BI.DimProduct (
	ProductID int primary key 
	,ProductName varchar(50)
	,ProductNumber varchar(50)
	,ProductModel varchar(50)
	,ProductSubcategory varchar(50)
	,ProductCategory varchar(50)
	,ProductCost decimal (10, 2)
	,ListPrice decimal (10, 2)
	,SellStartDate date
	,SellEndDate date
)

INSERT INTO BI.DimProduct (ProductID, ProductName, ProductNumber, ProductModel, ProductSubcategory, ProductCategory, ProductCost, ListPrice, SellStartDate, SellEndDate)
select 
	pp.ProductID
	,pp.Name
	,pp.ProductNumber
	,ppm.Name
	,ppsc.Name
	,ppc.Name
	,pp.StandardCost
	,pp.ListPrice
	,pp.SellStartDate
	,pp.SellEndDate
from Production.Product pp 
	left join Production.ProductModel ppm on pp.ProductModelID = ppm.ProductModelID
	left join Production.ProductSubcategory ppsc on pp.ProductSubcategoryID = ppsc.ProductSubcategoryID
	left join Production.ProductCategory ppc on ppsc.ProductCategoryID = ppc.ProductCategoryID


create view vw.DimProduct as
select * 
from BI.DimProduct

