create table BI.DimSalePerson (
	SalesPersonID int primary key
	,FirstName varchar (50)
	,LastName varchar (50)
	,TerritoryID int
	,JobTitle varchar(50)
	,Gender varchar(1)
	,HireDate date
	)

insert into BI.DimSalePerson (SalesPersonID, FirstName, LastName, TerritoryID, JobTitle, Gender, HireDate)
select 
	pp.BusinessEntityID
	,pp.FirstName
	,pp.LastName
	,sp.TerritoryID
	,e.JobTitle
	,e.Gender
	,e.HireDate
from Person.Person pp
	inner join sales.SalesPerson sp on pp.BusinessEntityID = sp.BusinessEntityID
	inner join HumanResources.Employee e on sp.BusinessEntityID = e.BusinessEntityID

create view vw.DimSalePerson as 
select *
from BI.DimSalePerson

drop view vw.SalePerson