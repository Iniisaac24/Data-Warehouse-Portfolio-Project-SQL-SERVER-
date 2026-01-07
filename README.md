# SQL Server Data Warehouse Project

## Description
This project implements a centralized **Data Warehouse (DW)** using **Microsoft SQL Server** to support analytical reporting and business intelligence.  
The goal is to integrate, clean, and transform data from multiple operational systems—**CRM** and **ERP**—into a structured warehouse optimized for querying, insights, and decision-making.

The data warehouse follows best practices in dimensional modeling and applies a **layered Medallion Architecture** to ensure data quality, scalability, and maintainability.

---
## About the Author
I am **Ini**, a Computer Science graduate with a background in **User Experience (UX) Design**, now transitioning into a **data-focused role**. This project demonstrates my ability to bridge analytical thinking with technical execution in data engineering and analytics.

This project showcases my practical understanding of:

- Data warehousing concepts  
- ETL design and implementation  
- Dimensional modeling  
- SQL Server–based analytics solutions  

Through this project, I aim to showcase my ability to design scalable data architectures and transform raw operational data into meaningful insights that support data-driven decision-making.


## Architecture Being Implemented
### Medallion Architecture (Bronze, Silver, Gold Layers)

This project adopts the **Medallion Architecture**, which organizes data processing into three logical layers:

#### Bronze Layer (Raw Data)
- Stores raw data exactly as received from source systems
- Data is ingested from **CSV files** without transformation
- Serves as a historical and auditable source of truth
- Schema mirrors source structure

#### Silver Layer (Cleaned & Transformed Data)
- Performs data cleaning, standardization, and validation
- Handles:
  - Data type normalization  
  - Removal of duplicates  
  - Null handling  
  - Referential integrity checks
- Data is structured for analytical use but not yet aggregated

#### Gold Layer (Business-Ready Data)
- Contains curated, business-friendly datasets
- Implements **fact and dimension tables**
- Optimized for reporting, dashboards, and analytics
- Supports KPIs, trends, and performance analysis

---

## Data Sources
The data warehouse ingests data from the following sources:

### CRM (Customer Relationship Management)
- Customer details
- Sales interactions
- Leads and opportunities

### ERP (Enterprise Resource Planning)
- Orders and transactions
- Products and inventory
- Financial and operational records

All source data is provided in **CSV format** and loaded into SQL Server using ETL processes.

---

## Naming Conventions
To ensure consistency and clarity across the warehouse, the following naming conventions are used:

### Databases
- `DW_<ProjectName>`

### Schemas
- `bronze_` – Raw data layer  
- `silver_` – Cleaned and transformed data  
- `gold_` – Business-ready data  

### Tables
- Fact tables: `fact_<business_process>`  
- Dimension tables: `dim_<entity>`  

**Examples:**
- `bronze_crm_customers`
- `silver_erp_orders`
- `gold_fact_sales`
- `gold_dim_customer`

### Columns
- Use `snake_case`
- Descriptive and meaningful names
- Primary keys: `<table_name>_id`
- Foreign keys: `<referenced_table>_id`

---

## Profile
- **Project Type:** SQL Server Data Warehouse  
- **Architecture:** Medallion Architecture  
- **Database:** Microsoft SQL Server  
- **Data Format:** CSV  
- **ETL Approach:** SQL-based transformations  
- **Use Case:** Business Intelligence & Analytics  
