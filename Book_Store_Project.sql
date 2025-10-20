Drop Table If Exists Customers;
Create Table Customers
(
Customer_ID Serial Primary key,
Name Varchar(100),
Email Varchar(100),
Phone Varchar(15),
City Varchar(50),
Country Varchar(150)
);



Drop Table IF EXists Orders;
Create Table Orders
(
Order_ID Serial Primary key,
Customer_ID Int REFERENCES Customers(Customer_ID),
Book_ID Int REFERENCES Books(Book_ID),
Order_date Date,
Quantity Int,
Total_Amount Numeric(10,2)
);

Drop Table IF EXISTS Books;
Create Table Books
(
Book_id serial primary key,
Title Varchar(100),
Author Varchar(100),
Genre Varchar(50),
Published_year int,
Price Numeric(10,2),
Stock int
);

SELECT * FROM Books
SELECT * FROM Orders
SELECT * FROM CUSTOMERS


--Q1.RERRIVE ALL BOOKS IN THE 'FICTION' GENRE:

SELECT * FROM Books
WHERE Genre='Fiction';

--Q2.Find books published after the year 1950:

Select * from Books
where Published_year > 1950;

--Q3.Lists all the customers from Canada:

Select * From Customers
Where Country ='Canada';



--Q4.Show orders Placed in November 2023:

Select * From Orders
Where Order_date Between '2023-11-01' AND '2023-11-30';


--Q5.Retrive the Total stock of book available:

Select Sum(Stock) as Total_stock
From Books;

--Q6.Find the Details of the most expensive books:

Select * from Books
Order by Price DESC Limit 1;

--Q7.Show all customers who ordered more than 1 quantity of books:

Select * From Orders
Where Quantity > 1;

--Q8.Retrive all Orders where the total Amount Exceeds $20:

select * from orders
Where Total_amount>20;

--Q9.List all the Genre Available in the Books Table:

Select DISTINCT genre
From Books;

--Q10.Find the book with the lowest stock:

Select * from Books
Order by Stock limit 1;


--Q11.Calculate the total revenue generated from all orders:

Select sum(Total_amount) as Revenue from Orders;


--ADVANCE QUERIES--

--Q1.Retrive the total number of books sold for each genre:

select b.genre, sum(o.quantity) as Total_book_sold
from orders o
join books b on o.book_id=b.book_id
group by b.genre;


Q2.Find the average price of books in the 'Fantasy' genre:

select avg(price) As Average_Price
From books
where genre = 'Fantasy';

--Q3:Lists customers who have placed atleast 2 orders:

Select o.customer_id, c.name, Count(o.order_id) as order_count
from orders o
join customers c on o.customer_id=c.customer_id
group by o.customer_id,c.name
having count (order_id) >=2;


--Q4.Find the most frequently order book:

select o.book_id, b.title, count(o.order_id) as Order_count
from orders o
join books b on o.book_id=b.book_id
Group by o.book_id,b.title
order by Order_count DESC LIMIT 1;


--Q5.show the top 3 most expensive books of 'Fantasy' genre:

select * from books
where genre='Fantasy'
order by Price DESC LIMIT 3;


--Q6.Retrive the total quantity of books sold by each genre:

select b.author , sum(o.quantity) as Total_books_sold
from orders o
join books b on o.book_id=b.book_id
group by b.author;


--Q7.List the cities where customers who spent over $30 are located:

Select DISTINCT c.city,total_amount as Rare_city
from orders o
join customers c on o.customer_id=c.customer_id
where o.total_amount >30;


--Q8.Find the customer who spent the most on orders:

select c.customer_id, c.name, sum(o.total_amount) as Total_spent
from orders o
join customers c on o.customer_id=c.customer_id
group by c.customer_id , c.name
order by Total_spent DESC LIMIT 1 ;









