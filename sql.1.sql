create table Contact(
Contact_id int primary key,
Company_id int,
First_name varchar(45),
Last_name varchar(45),
Street varchar(45),
City varchar(45),
State varchar(5),
Zip varchar(10),
IsMain boolean,
Email varchar(45),
Phone varchar(12),
FOREIGN KEY (Company_id) REFERENCES Company(Company_id)
);

create table Employee(
Employee_ID int primary key,
First_name varchar(45),
Last_name varchar(45),
Salary decimal(10,2),
HireDate date,
JobTitle varchar(25),
Email varchar(45),
Phone varchar(12)
);

create table ContactEmployee(
ContactEmployeeID int primary key,
Contact_id int,
Employee_ID int,
ContactDate date,
Descriptionn varchar(100),
FOREIGN KEY (Contact_id) REFERENCES Contact(Contact_id),
FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

create table Company(
Company_id int primary key,
Company_Name varchar(25),
Street varchar(45),
City varchar(45),
State varchar(5),
Zip varchar(10)
);

INSERT INTO Company VALUES
(1, 'Toll Brothers', '100 Main St', 'Philadelphia', 'PA', '19103'),
(2, 'Urban Outfitters, Inc.', '500 Market St', 'Philadelphia', 'PA', '19106'),
(3, 'Tech Solutions', '12 Park Ave', 'New York', 'NY', '10001'),
(4, 'Green Foods', '22 Lake St', 'Chicago', 'IL', '60007'),
(5, 'Sunrise Textiles', '88 Cotton Rd', 'Houston', 'TX', '77001'),
(6, 'Blue Ocean Ltd', '9 Beach Rd', 'Miami', 'FL', '33101'),
(7, 'Future Systems', '45 Silicon St', 'San Jose', 'CA', '95101');

INSERT INTO Contact VALUES
(1, 1, 'Dianne', 'Connor', '11 Hill St', 'Philadelphia', 'PA', '19103', 1, 'dianne@toll.com', '215-555-1001'),
(2, 2, 'Mark', 'Adams', '22 Pine St', 'Philadelphia', 'PA', '19106', 1, 'mark@urban.com', '215-555-1002'),
(3, 3, 'Susan', 'Mills', '33 Oak St', 'New York', 'NY', '10001', 1, 'susan@tech.com', '212-555-1003'),
(4, 4, 'John', 'Reed', '44 Lake St', 'Chicago', 'IL', '60007', 1, 'john@green.com', '312-555-1004'),
(5, 5, 'Amy', 'Stone', '55 Cotton Rd', 'Houston', 'TX', '77001', 1, 'amy@sunrise.com', '713-555-1005'),
(6, 6, 'Peter', 'White', '66 Beach Rd', 'Miami', 'FL', '33101', 1, 'peter@blue.com', '305-555-1006'),
(7, 7, 'Nina', 'Brown', '77 Silicon St', 'San Jose', 'CA', '95101', 1, 'nina@future.com', '408-555-1007');

INSERT INTO Employee VALUES
(1, 'Lesley', 'Bland', 60000, '2020-01-10', 'Manager', 'lesley@company.com', '215-555-1111'),
(2, 'Jack', 'Lee', 55000, '2021-03-15', 'Sales Rep', 'jack@company.com', '215-555-2222'),
(3, 'Robert', 'King', 50000, '2019-06-20', 'Analyst', 'robert@company.com', '215-555-3333'),
(4, 'Emily', 'Davis', 52000, '2022-02-10', 'Coordinator', 'emily@company.com', '215-555-4444'),
(5, 'Chris', 'Moore', 48000, '2018-09-05', 'Assistant', 'chris@company.com', '215-555-5555'),
(6, 'Sophia', 'Clark', 61000, '2020-11-12', 'Manager', 'sophia@company.com', '215-555-6666'),
(7, 'Daniel', 'Scott', 47000, '2023-01-08', 'Intern', 'daniel@company.com', '215-555-7777');

INSERT INTO ContactEmployee VALUES
(1, 1, 2, '2024-01-10', 'Initial meeting'),   
(2, 2, 1, '2024-01-11', 'Follow-up call'),
(3, 3, 3, '2024-01-12', 'Product demo'),
(4, 4, 4, '2024-01-13', 'Support call'),
(5, 5, 5, '2024-01-14', 'Price discussion'),
(6, 1, 1, '2024-01-15', 'Contract talk'),
(7, 6, 2, '2024-01-16', 'New proposal');

#update Lesley's phone number
UPDATE Employee
SET Phone = '215-555-8800'
WHERE First_Name = 'Lesley' AND Last_Name = 'Bland';

#update company name
UPDATE Company
SET Company_Name = 'Urban Outfitters'
WHERE Company_Name = 'Urban Outfitters, Inc.';

# remove Dianne Connor’s contact event with Jack Lee
DELETE FROM ContactEmployee
WHERE ContactEmployeeID = 1;

# employee who contacted toll brothers
SELECT e.First_Name, e.Last_Name
FROM Employee e
JOIN ContactEmployee ce ON e.Employee_id = ce.Employee_id
JOIN Contact c ON ce.Contact_id = c.Contact_id
JOIN Company co ON c.Company_id = co.Company_id
WHERE co.Company_Name = 'Toll Brothers';

/*
 Significance of % and _ in LIKE
% is used to match any number of characters
_ is used to match particular position of character in a specific place
*/

/*
Normalization in database:
Normalization is a process of organzing data in database to:
	-Reduce data redundancy 
    -Improve data consistency
    -Prevent update, insert, and delete
Simply,normalization means splitting large tables into smaller, related tables and linking them using keys.
*/

/*
Joins in MYSQL:
A JOIN in MySQL is used to combine rows from two or more tables based on a related column between them.
~Types of joins:
				Inner Join
                Outer Join
                Left Join
                Right Join
                Self Join
*/

/* DDL,DCL AND DML:
DDL – Data Definition Language
	   Common DDL commands:
							CREATE → create table or database
							ALTER → modify table structure
							DROP → delete table or database
							TRUNCATE → remove all data from a table

DML – Data Manipulation Language
	  Common DML commands:
						INSERT → add new records
						UPDATE → modify existing records
						DELETE → remove records
                        SELECT → retrieve data
				
DCL – Data Control Language
		Common DCL commands:
							GRANT → give permissions
							REVOKE → remove permissions
*/

/*
Join clause:
The JOIN clause in MySQL is used to combine data from two or more tables based on a related column between them.
Common type of joins:
					Inner Join
					Outer Join
					Left Join
					Right Join
					Self Join
*/

