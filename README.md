# PC Sales Data Warehouse Project

## Overview

This project is about building a simple data warehouse using a PC sales dataset. The aim is to take raw, messy data and turn it into structured tables that can be used for reporting and analysis.

The work includes creating dimension tables, a fact table, and using stored procedures to load and transform the data.

---

## Dataset

The dataset includes information about:

* Locations (continent, country/state, city)
* Shops (name and age)
* Products (PC make, model, storage type, RAM, storage capacity)
* Customers (name, surname, contact number, email)
* Employees (sales person and department)
* Sales (cost price, sale price, discount, payment method)
* Dates (purchase and shipping)
* Finance (finance amount and credit score)
* Other fields like channel, priority, repairs, and market price

---

## Data Model

A star schema was used to organise the data.

### Dimension tables:

* dim_customer
* dim_location
* dim_pc
* dim_storage
* dim_payment
* dim_channel
* dim_priority
* dim_shop
* dim_sale

### Fact table:

* fact_pc_order_stats

---

## Process

1. Load the raw dataset into `uncleaned_pc_data`
2. Clean and transform the data
3. Insert data into dimension tables using stored procedures
4. Load the fact table for analysis

---

## Example Query

```sql
SELECT * FROM dbo.dim_storage;
```

---

## Notes

* Stored procedures are used to keep the process consistent
* DISTINCT is used in some queries to avoid duplicates
* Data types like NVARCHAR are used for flexibility

---

## Future Work

* Add dashboards (Power BI)
* Improve data cleaning
* Automate the pipeline

---

## Author

Keokopile Motshidisi Mosia
Background in IT support and cloud computing
Certified in Network+, AWS Cloud Practitioner, and Security+

---

## Purpose

This project is part of building practical data engineering skills, especially around SQL, data modelling, and working with real datasets.
