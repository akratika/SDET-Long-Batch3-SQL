select * from orders;
select * from customers;
select * from salesman;

-- Find all the orders issued against the salesman who may works for customer whose id is 3007
select * from orders 
where salesman_id=(select distinct salesman_id from orders where customer_id = 3007);
 
-- Find all orders attributed to a salesman in New York
select * from orders
where salesman_id = (select salesman_id from salesman where city='New York');

-- Count the customers with grades above New York's average
select grade, count(*) from customers
group by grade having grade > (select AVG(grade) from customers where city='New York');

-- Extract the data from the orders table for those salesman who earned the maximum commission
select order_no, purchase_amount, order_date, salesman_id from orders
where salesman_id IN (select salesman_id from salesman
where commission= (select MAX(commission) from salesman));
