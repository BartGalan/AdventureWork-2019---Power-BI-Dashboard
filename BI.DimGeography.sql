create table BI.DimGeography (
	TerritoryID int primary key
	,RegionName varchar(20)
	,RegionCode varchar(20)
	,RegionGroup varchar(20)
	)

INSERT INTO BI.DimGeography (TerritoryID, RegionName, RegionCode, RegionGroup)
select
	st.TerritoryID 
	,st.Name
	,st.CountryRegionCode
	,st.[Group]
from Sales.SalesTerritory st

create view vw.DimGeography as
select *
from BI.DimGeography

