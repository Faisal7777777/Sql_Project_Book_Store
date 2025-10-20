# Book Store SQL Project

### Author
Siddique Mohd Faisal

---

## 📖 Project Overview
The **Book Store SQL Project** is a structured relational database system designed to manage and analyze bookstore operations using SQL. It automates key processes such as book inventory tracking, customer management, and order processing.

This project demonstrates essential database design skills, including table creation, data relationships, and advanced SQL query writing for reporting and analytics.

---

## 🎯 Objective
To build a bookstore management database that:
- Stores book, customer, and order details.
- Performs analysis on sales, revenue, and customer patterns.
- Provides SQL queries for both basic and advanced business insights.

---

## 🗂️ Database Structure

### Tables
1. **Customers**
   - Stores customer information including name, contact, and location.

2. **Books**
   - Contains details about each book, such as title, author, genre, year, stock, and price.

3. **Orders**
   - Records book orders, linking customers and books using foreign keys.

---

## ⚙️ SQL Features Implemented

### Basic Queries
- Retrieve all books of a specific genre.
- Find books published after a given year.
- Display customers from a particular country.
- Calculate total stock and total revenue.
- Identify the most expensive or least available book.
- View orders based on date or total amount.

### Advanced Analytical Queries
- Total books sold per genre.
- Average price of books by category.
- Top customers by spending or frequent orders.
- Best-selling and most expensive books.
- Total quantity of books sold by author.
- Cities where high-spending customers are located.

---

## 🧩 Key Relationships
- **Customers ↔ Orders**: Linked through `Customer_ID`
- **Books ↔ Orders**: Linked through `Book_ID`
- Ensures referential integrity between tables using foreign key constraints.

---

## 🛠️ Technologies Used
- **Database Language:** SQL (PostgreSQL / MySQL compatible)
- **Tools:** Any SQL IDE such as pgAdmin, MySQL Workbench, or DBeaver

---

## 💡 How to Run the Project
1. Open your SQL environment (e.g., **pgAdmin** or **MySQL Workbench**).
2. Run the provided script file:
3. Execute the DDL commands (CREATE TABLE) first.
4. Optionally, insert sample data to test queries.
5. Execute the SELECT queries to view reports and analytical insights.

---

## 🧮 Example Query

3. Execute the DDL commands (CREATE TABLE) first.
4. Optionally, insert sample data to test queries.
5. Execute the SELECT queries to view reports and analytical insights.

---

## 🧮 Example Query

3. Execute the DDL commands (CREATE TABLE) first.
4. Optionally, insert sample data to test queries.
5. Execute the SELECT queries to view reports and analytical insights.

---

## 🧮 Example Query


3. Execute the DDL commands (CREATE TABLE) first.
4. Optionally, insert sample data to test queries.
5. Execute the SELECT queries to view reports and analytical insights.

---
## 🧮 Example Query

Retrive the total number of books sold for each genre.

select b.genre, sum(o.quantity) as Total_book_sold
from orders o
join books b on o.book_id=b.book_id
group by b.genre;

---

## 📊 Project Use Cases
- Academic SQL practice project.
- Reference for relational database design and normalization.
- Foundation for developing full-stack bookstore applications.

---

## 📜 License
This project is for **educational purposes** and can be modified or enhanced freely.

---

## 👨‍💻 Author
**Siddique Mohd Faisal**  
A postgraduate student passionate about data, analytics, and structured database systems.

---






1. Open your SQL environment (e.g., **pgAdmin** or **MySQL Workbench**).
2. Run the provided script file:  
