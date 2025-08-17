# Motorcycle Parts Sales Analysis  

## Table of Contents
- [Introduction](#introduction)  
- [Dataset Description](#dataset-description)  
- [Objective](#objective)  
- [Queries Overview](#queries-overview)
- [Visualization and Analysis](#visualization-and-analysis) 
- [Results and Insights](#results-and-insights)  
- [Future Work](#future-work)  
- [Technologies Used](#technologies-used)  
- [Setup Instructions](#setup-instructions)  
- [Contact Information](#contact-information)  

---

## Introduction
This project analyzes sales data from a motorcycle parts company operating three warehouses (North, Central, and West).  
The focus is on calculating **net revenue from wholesale orders**, broken down by product line, month, and warehouse.  

---

## Dataset Description
The dataset is stored in a PostgreSQL database containing one main table: **sales**.  

| Column        | Data Type | Description                                                                 |
|---------------|-----------|-----------------------------------------------------------------------------|
| order_number  | VARCHAR   | Unique order number                                                         |
| date          | DATE      | Order date (June–August 2021)                                               |
| warehouse     | VARCHAR   | Warehouse of the order (North, Central, West)                               |
| client_type   | VARCHAR   | Type of client (Retail or Wholesale)                                        |
| product_line  | VARCHAR   | Product category                                                            |
| quantity      | INT       | Number of items ordered                                                     |
| unit_price    | FLOAT     | Price per item                                                              |
| total         | FLOAT     | Total price of the order                                                    |
| payment       | VARCHAR   | Payment method (Credit card, Transfer, Cash)                                |
| payment_fee   | FLOAT     | Fee percentage charged depending on payment method                          |

---

## Objective
The goal is to calculate:  
- **Wholesale net revenue** for each product line  
- Grouped by **month** and **warehouse**  
- Sorted by product line, month, and descending net revenue 

---

## Queries Overview
1. EXTRACT the month from date `column`.  
2. Filter orders where `client_type = 'Wholesale'`.  
3. Group data by product_line, month, and warehouse.  
4. Calculate `net_revenue` as total minus payment fees.  
5. Sort results by product_line, month, and net revenue (descending). 
---

## Visualization and Analysis

To better understand the data, visualizations were created: 

Table showing then first 15 output


<img width="473" height="416" alt="image" src="https://github.com/user-attachments/assets/e8dc560f-a2a8-4933-93b3-dd4acccb2376" />


1. **Revenue by Product Line**  
   - A bar chart showing total net revenue for each product line.
     
   <img width="1030" height="359" alt="image" src="https://github.com/user-attachments/assets/05ef3a5e-e138-4748-a572-71ea43027fbc" />


2. **Monthly Revenue Trends**  
   - A line chart showing revenue changes across June, July, and August.  

   <img width="1013" height="379" alt="image" src="https://github.com/user-attachments/assets/cfd04766-e6da-4da9-867b-073e5d2d73fd" />

3. **Warehouse Comparison**  
   - A stacked bar chart comparing revenues across the three warehouses.  

   <img width="1024" height="366" alt="image" src="https://github.com/user-attachments/assets/99b36870-897e-48bf-a2f0-ec87fcac9286" />
 

**Analysis:**  
- Frame and Body has the highest net revenue (39,477.51 USD), followed by Suspension and Traction (38,294.76 USD).
- August had the highest sales overall, particularly in engine parts.  
- Central warehouse recorded the highest sales.  
  

---

## Results and Insights
- The query returns wholesale net revenue by product line, month, and warehouse.
- This helps identify which product lines drive the most revenue and in which warehouse and month.
- Key insights can guide decisions such as:
  - Optimizing warehouse distribution
  - Adjusting product stock levels
  - Monitoring seasonal revenue trends

---

## Future Work
- Extend the analysis to include retail clients and compare with wholesale trends.
- Incorporate payment method impact to evaluate cost efficiency.
- Develop dashboards (Power BI, Tableau) for real-time revenue monitoring.
- Apply forecasting models (e.g., ARIMA, Prophet) to predict future sales patterns.

---

## Technologies Used
- **Database**: PostgreSQL  
- **Language**: SQL

---
  
## Setup Instructions
- Open PostgreSQL and connect to your database.
- Run the SQL scripts.

---

## Contact Information
LinkedIn: [Kian Gabriel Padua](www.linkedin.com/in/kian-gabriel-padua-0863ab1ab)
Email: kianpadua124@gmail.com
