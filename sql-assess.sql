create table Worker(
				WorkerID int,
                FirstName varchar(50),
                LastName varchar(50),
                Salary int,
                JoiningDate datetime,
                Department varchar(20)
                );
			
INSERT INTO Worker 
VALUES
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');
            
select*from Worker 
order by FirstName asc, LastName desc;

select*from Worker where 
FirstName = "Vipul" or FirstName = "Satish";

select*from Worker where FirstName like  "_____h";

SELECT FirstName, department, COUNT(*)
FROM Worker
GROUP BY FirstName, department
HAVING COUNT(*) > 1;

select * from Worker 
order by WorkerID
limit 6;

select department, COUNT(*) AS total_workers
from Worker
group by department
having COUNT(*) < 5;

select department, COUNT(*) AS total_workers
from Worker
group by department;

SELECT FirstName, LastName, DEPARTMENT, SALARY
FROM Worker w1
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM Worker w2
    WHERE w1.DEPARTMENT = w2.DEPARTMENT
);





CREATE TABLE Student (
    StdID INT,
    StdName VARCHAR(50),
    Sex VARCHAR(10),
    Percentage INT,
    Class VARCHAR(5),
    Sec CHAR(1),
    Stream VARCHAR(20),
    DOB DATE
);

INSERT INTO Student
VALUES
(1001, 'Surekha Joshi', 'Female', 82, '12', 'A', 'Science', '1998-03-08'),
(1002, 'MAAHI AGARWAL', 'Female', 56, '11', 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'Male', 59, '11', 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 63, '11', 'C', 'Commerce', '1997-11-05'),
(1005, 'Dipesh Pulkit', 'Male', 78, '11', 'B', 'Science', '2003-11-14'),
(1006, 'JAHANVI Puri', 'Female', 60, '11', 'B', 'Commerce', '2008-11-07'),
(1007, 'Sanam Kumar', 'Male', 23, '12', 'F', 'Commerce', '1998-03-08'),
(1008, 'SAHIL SARAS', 'Male', 56, '11', 'C', 'Commerce', '2008-11-07'),
(1009, 'AKSHRA AGARWAL', 'Female', 72, '12', 'B', 'Commerce', '1996-10-01'),
(1010, 'STUTI MISHRA', 'Female', 39, '11', 'F', 'Science', '2008-11-23'),
(1011, 'HARSH AGARWAL', 'Male', 42, '11', 'C', 'Science', '1998-03-08'),
(1012, 'NIKUNJ AGARWAL', 'Male', 49, '12', 'C', 'Commerce', '1998-06-28'),
(1013, 'AKRITI SAXENA', 'Female', 89, '12', 'A', 'Science', '2008-11-23'),
(1014, 'TANI RASTOGI', 'Female', 82, '12', 'A', 'Science', '2008-11-23');


select*from Student;

select stdName, Dob from Student;

SELECT * FROM student WHERE percentage >= 80;

SELECT stdName, Stream, Percentage WHERE percentage > 80;