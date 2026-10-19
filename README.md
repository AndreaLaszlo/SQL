# SQL Practice

1. Project overview

The project is a relational database designed to represent a relational database of a restaurant order management system. It servers as a practical environment to practice and showcase my sql knowledge in PostgreSQL.
The database models customers, orders, products. It provides a foundation for practicing data definition, manipulation, relational queries and data analysis.

2. Project objectives

The main objectives for this project are:
- design a relational database schema
- define primary keys, foreign keys, integrity constraints
- model relationships
- practice sql queries from the basics to advanced levels
- answer business questions using structured data

3. Database Schema

The database consists of four tables: 
- customers - stores customer informations
- orders - stores orders from customers with statuses and prices
- products - stores the products produced by the restaurant with actual price
- the connection table between orders and products - connects the orders with the products and stores the ordered quantity and also the current unit price of the product

Between the orders and the connection table and also between the products and connection table there is a one to many relationship.
The connection table's primary key consists of the (customer_id, order_id) constraint. This ensures that one product only appears once within one order in the ordered items table-

4. Technologies

- PostgreSQL
- SQL
- dbdiagram.io for relational database representation

5. SQL Concepts

The project covers the below concepts:
- DDL: create table, data types and constraints
- DML: insert, update, delete
- relational queries
- aggregations
- subqueries and common table expressions
- window functions and analytical queries
- data integrity and relational database design

6. Repository structure

The repository follows the below structure:
- schema/ — database schema and table definitions.
- data/ — sample data for testing and analysis.
- queries/ — SQL exercises organized by topic and difficulty.
- README.md — project documentation.
 
7. Business questions

- Which products are ordered most frequently?
- Which customers place the most orders?
- What is the total value of each order?
- What is the monthly revenue from delivered orders?
- Which products generate the highest sales?
- How do customer ordering patterns change over time?

8.  Getting started

  1. Create a PostgreSQL database.
  2. Execute the SQL scripts in the appropriate order.
  3. Load the sample data.
  4. Run the queries in the queries/ directory.
