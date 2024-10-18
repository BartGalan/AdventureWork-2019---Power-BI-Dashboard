# AdventureWork 2019 - Power BI Dashboard

## Introducion

This dashboard shows overall sale performance for AdventureWork 2019, Microsoft simple database. This will allow the user to understand how sales for the AdventureWorks store have looked over previous years, taking into account key KPIs, the quantity of products sold broken down by categories and subcategories.  

Through different DAX measures, users can check the division of sales into individual customer groups to see which customers used the store's services the most, and check sales results for each employee to compare which store or region sold the most goods.

The data from the AdventureWorks 2019 database was first transformed using SQL in Microsoft SQL Server Management Studio, then loaded into Power BI. The visualizations in Power BI are based on measures created in the DAX language.


## Project creation steps

- Step 1 : Download dataset in .bak format from Microsoft website: https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms.
- Step 2 : Restore data to Microsoft SQL Server Management Studio (according to the instructions from Microsoft website).
- Step 3 : Create facts tables using SQL language. The fact tables will be used to aggregate sales and the number of orders. They will contain columns such as sale date, order date, order ID, seller ID, and other sales-related information. For the following project, two fact tables, BI.FactSales and BI.FactOrders, were created based on data from AdventureWork (.sql files attached to project):
        
        BI.FactSales (sale data)
        BI.FactOrders (orders data)
- Step 4 : Create dimesion tables The dimension tables will be used to filter the aggregations performed on the fact tables. The following tables were created for the project based on data from AdventureWorks(.sql files attached to project):

        BI.DimProduct (product data)
        BI.DimSalePerson (sales department employee data)
        BI.DimCustomers (customer data)
        BI.DimGeography (region data)
Additionally, a calendar table, BI.DimCalendar, was created using SQL time functions.

- Step 5 : Create views for the above tables using the CREATE VIEW function in SQL.
- Step 6 : Import data from Microsoft SQL Server Management Studio to Power BI. Use option SQL Server in Power BI and choose views of tables to import data.
- Step 7 : Transform data columns using Power Query. Mark calebdar tabele as date table.
- Step 8 : Create measures in DAX language to show insights using Power BI data visualizations. DAX measures were created to display key KPIs related to sales over time, sales in relation to customer types, and the sales performance of sales department employees. In this project, DAX functions such as SUM, AVERAGE, DIVIDE, SUMMARIZE, COUNTROWS, CALCULATE, TOPN, MAXX, FILTER, and LOOKUPVALUE were used.

- Step 9 : Create visualizations. DAX measures were matched to the appropriate types of charts or other types of visualizations to best illustrate the results. Background for dashboard was create by using Figma.


## Dashboard structure

The dashboard consists of four pages:

        - Sales – KPIs for sales and orders, sales and order data over time, sales broken down by category, subcategory, product name, and product model.
        - Customers – sales data broken down by customer types and a ranking of the top 10 customers in a given category.
        - Employees – sales performance of sales department employees, characteristics of the top employees in a given year, and their ranking. 4. Matrix – a table for all order numbers with their details.
        - Matrix – a table for all order numbers with their details.

For all dashboard pages, there is an option to select the year perspective in which the results should be displayed.


 
 ## Report Snapshot (Power BI DESKTOP)

 
![1](https://github.com/user-attachments/assets/481fb0a5-2768-48ce-ae4c-f61ff75e2a0b)


## Summary

The above project can be used to analyze sales for a given store, in order to plan the company's next actions. Based on the data presented in the visualizations, the user can understand what influenced sales performance in previous periods and what the outcomes were. The dashboard can also serve as an engaging way to present data to other entities interested in sales matters.
