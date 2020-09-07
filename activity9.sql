-- Create the customers table
create table customers (
    customer_id int primary key, customer_name varchar(32),
    city varchar(20), grade int, salesman_id int);

-- Insert values into it
insert into customers values 
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

-- select query
select * from customers;
select* from salesman;
-- SQL statement to know which salesman are working for which customer
select c.customer_name as "Customer Name", c.city as "City", s.name as "Salesman Name", s.commission as "Commission" 
from customers c inner join salesman s
on c.salesman_id = s.salesman_id;

-- Make a list in ascending order for the customer who holds a grade less than 300 and works either through a salesman
select c.customer_name as "Customer Name", c.grade as "Grade", s.name as "Salesman Name"
from customers c left join salesman s
on c.salesman_id= s.salesman_id
where c.grade < 300 order by c.customer_id;

-- Find the list of customers who appointed a salesman for their jobs who gets a commission from the company is more than 12%
select c.customer_name as "Customer Name", c.city as "City", s.name as "Salesman Name", s.commission as "Commission"
from customers c right join salesman s
on c.salesman_id = s.salesman_id
where s.commission >12; 

-- Find the details of a order i.e. order number, order date, amount of order, which customer gives the order
-- and which salesman works for that customer and commission rate he gets for an order
select * from orders;
select o.order_no as "OrderNo", o.order_date as "OrderDate", o.purchase_amount as "OrderAmount",
c.customer_name as "CustomerName", s.name as "SalesmanName", s.commission as "Commission"
from orders o 
inner join customers c on o.customer_id = c.customer_id
inner join salesman s on o.salesman_id = s.salesman_id;