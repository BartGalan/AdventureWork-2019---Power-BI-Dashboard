create table BI.DimCustomers (
	CustomerID int primary key
	,PersonID int
	,StoreID int
	,TerritoryID int
	,BusinnessEntityIDStore int
	,[Name] varchar(50)
	,SalesPersonID int
	,BusinnessEntityIDInv int
	,PersonType varchar (2)
	,FirstName varchar(50)
	,LastName varchar(50)
)


insert into BI.DimCustomers (CustomerID, PersonID, StoreID, TerritoryID, BusinnessEntityIDStore, [Name], SalesPersonID, BusinnessEntityIDInv, PersonType, FirstName, LastName)
select 
	c.CustomerID
	,c.PersonID
	,c.StoreID
	,c.TerritoryID
	,s.BusinessEntityID
	,s.[Name]
	,s.SalesPersonID
	,p.BusinessEntityID
	,p.PersonType
	,p.FirstName
	,p.LastName
from Sales.Customer c
	left join Sales.Store s on c.StoreID = s.BusinessEntityID
	left join Person.Person p on c.PersonID = p.BusinessEntityID


create view vw.DimCustomers as
select *
from BI.DimCustomers
	



