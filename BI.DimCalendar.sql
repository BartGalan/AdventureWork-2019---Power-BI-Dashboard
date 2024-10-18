CREATE TABLE BI.DimCalendar (
    DateID int identity (1,1)
	,[Date] DATE PRIMARY KEY
)

WITH DateCTE AS (
    SELECT CAST('2011-01-01' AS DATE) AS [Date]
    UNION ALL
    SELECT DATEADD(DAY, 1, [Date])
    FROM DateCTE
    WHERE [Date] < '2014-12-31'
)
INSERT INTO BI.DimCalendar ([Date])
SELECT [Date] FROM DateCTE
OPTION (MAXRECURSION 0);


alter table BI.DimCalendar
add [Year] int

update BI.DimCalendar
set [Year] = YEAR([Date])

alter table BI.DimCalendar
add [Month] int 

update BI.DimCalendar
set [Month] = MONTH([Date])

alter table BI.DimCalendar
add DayofMonth int

update BI.DimCalendar
set DayofMonth = DAY([Date])

alter table BI.DimCalendar
add DayofWeek int

update BI.DimCalendar
set DayofWeek = DATEPART(dw,[Date])

alter table BI.DimCalendar
add DayofYear int

update BI.DimCalendar
set DayofYear = DATEPART(dy,[Date])

alter table BI.DimCalendar
add [Week] int

update BI.DimCalendar
set [Week] = DATEPART(ww,[Date])

alter table BI.DimCalendar
add MonthName nvarchar(3)

update BI.DimCalendar
SET MonthName = LEFT(DATENAME(MONTH, [Date]), 3)

alter table BI.DimCalendar
add MonthYear nvarchar(8)

update BI.DimCalendar
set MonthYear = concat(MonthName,' ',cast(Year as nvarchar(4)))

alter table BI.DimCalendar
add Quarter int

update BI.DimCalendar
set Quarter = DATEPART(QUARTER, [Date])

alter table BI.DimCalendar
add HalfofYear int

update BI.DimCalendar
set HalfofYear = CASE
                    WHEN MONTH([Date]) BETWEEN 1 AND 6 THEN 1
                    WHEN MONTH([Date]) BETWEEN 7 AND 12 THEN 2
                    ELSE NULL
                 END;

create view vw.DimCalendar as
select * 
from BI.DimCalendar