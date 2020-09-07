-- Show data from the salesman_id and city columns
select salesman_id, city from salesman;

-- Show data of salesman from Paris
select * from salesman where city='Paris';

-- Show salesman_id and commission of Paul Adam
select salesman_id,commission from salesman where name='Paul Adam';