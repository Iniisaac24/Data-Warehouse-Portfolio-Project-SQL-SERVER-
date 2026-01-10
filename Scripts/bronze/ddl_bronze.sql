/*
=============================================================
DDL Script: Create Bronze Tables
=============================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables if they already exist.
	Run the Script to re-define the DDL structure of 'bronze' tables
*/



-- Use the "DataWarehoue" Database
USE DataWarehouse;
GO

-- Create DDL for the 6 Source files (CSV Files)

-- Error Handling , Checks if the tables exists and drop it if it does
IF OBJECT_ID ('bronze.crm_cust_info' , 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
	GO

-- Create table cust_info
CREATE TABLE bronze.crm_cust_info (
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_marital_status NVARCHAR(1),
cst_gndr NVARCHAR(1),
cst_create_date DATE
);
GO

-- Error Handling , Checks if the tables exists and drop it if it does
IF OBJECT_ID ('bronze.crm_prd_info' , 'U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
	GO

-- Create table prd_info
CREATE TABLE bronze.crm_prd_info (
prd_id INT,
prd_key NVARCHAR(50),
prd_nm NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(3),
prd_start_dt DATE,
prd_end_dt DATE
);
GO

-- Error Handling , Checks if the tables exists and drop it if it does
IF OBJECT_ID ('bronze.crm_sales_details' , 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;
	GO

-- Create table sales_details
CREATE TABLE bronze.crm_sales_details (
sls_ord_num NVARCHAR(20),
sls_prd_key NVARCHAR(50),
sls_cust_id NVARCHAR(50),
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
);
GO


-- Error Handling , Checks if the tables exists and drop it if it does
IF OBJECT_ID ('bronze.erp_cust_az12' , 'U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;
	GO

-- Create table cust_az12
CREATE TABLE bronze.erp_cust_az12 (
CID NVARCHAR(50),
BDATE DATE,
GEN NVARCHAR(10)
);
GO

-- Error Handling , Checks if the tables exists and drop it if it does
IF OBJECT_ID ('bronze.erp_loc_a101' , 'U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;
	GO

-- Create table loc_a101
CREATE TABLE bronze.erp_loc_a101 (
CID NVARCHAR(50),
CNTRY NVARCHAR(50)
);
GO

-- Error Handling , Checks if the tables exists and drop it if it does
IF OBJECT_ID ('bronze.erp_px_cat_g1v2' , 'U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat_g1v2;
	GO

-- Create table px_cat_g1v2
CREATE TABLE bronze.erp_px_cat_g1v2 (
ID NVARCHAR(50),
CAT NVARCHAR(50),
SUBCAT NVARCHAR(50),
MAINTENANCE NVARCHAR(50)
);
GO
