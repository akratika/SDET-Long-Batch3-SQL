select * from salesman;
-- Update the grade score of salesmen from Rome to 200
update salesman set grade=200 where city='Rome';

-- Update the grade score of James Hoog to 300
update salesman set grade=300 where name='James Hoog';

-- Update the name McLyon to Pierre
update salesman set name='Pierre' where name='McLyon';