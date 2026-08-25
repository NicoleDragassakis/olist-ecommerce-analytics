# Olist E-Commerce Analytics

End-to-end e-commerce analytics project using SQL Server, Excel, Power Query, PivotTables, and Power BI.

## Project Overview

This project analyzes the Brazilian E-Commerce Public Dataset by Olist, which contains approximately 100,000 anonymized orders from 2016 to 2018.

The goal of the project is to explore sales performance, customer behavior, product categories, delivery performance, and review scores using a full analytics workflow.

## Tools Used

- SQL Server
- SQL Server Management Studio
- Excel
- Power Query
- PivotTables
- Power BI

## Project Workflow

1. Imported the Olist CSV files into SQL Server.
2. Explored the relational database using SQL queries.
3. Joined key tables into a master analysis dataset.
4. Connected Excel directly to SQL Server.
5. Used Power Query to validate data types and prepare the dataset.
6. Created PivotTables to explore business trends.
7. Built a Power BI dashboard for final reporting.

## Analysis Areas

The project focuses on questions such as:

- Which product categories generate the most sales?
- Which customer states generate the most sales?
- Which product categories have the highest and lowest review scores?
- How do sales change over time?
- Which sellers generate the most sales?
- How does delivery performance relate to customer satisfaction?

## Dataset

Source: Brazilian E-Commerce Public Dataset by Olist on Kaggle.

The raw dataset is not stored in this repository.

## Repository Structure

```text
sql/
    exploratory_queries.sql
    master_analysis_query.sql

excel/
    olist_analysis.xlsx

powerbi/
    olist_dashboard.pbix

images/
    erd.png
    dashboard_preview.png

data/
    README.md
