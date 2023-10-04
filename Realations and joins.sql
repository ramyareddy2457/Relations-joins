create database Relations;
use Relations;

-- Employee and Address are one to one 
create table Employee(
emp_id int primary key unique,
name varchar(30),
age int ,
department varchar(1)
);
insert into employee(emp_id,name,age, department)values(1,'ramya',22,'A'),(2,'rana',28,'B'),(3,'karthik',30,'C'),(4,'sravan',32,'D'),(5,'kuchi',23,'E'),(6,'perla ramya',454,'F'),(7,'sreeja',232,'G');

create table Address(
id int primary key unique,
hno varchar(20),
rdno int,
colony varchar(20),
city varchar(20),
pincode long,
emp_id int not null unique
);
insert into Address(id,hno,rdno,colony,city,pincode,employeeId)values(1,'2-46',23,'sri ramana colony','hyderabad',509324,3),(2,'505',24,'kharmanghat','hyderabad',500048,2),(3,'402',25,'champapet','kalwakurthy',50005958,3),(4,'606',56,'kothapet','hyerabd',574857,1),(5,'88',09,'l.b nabar','hyd',7687687,9),(6,'99',938,'b n reddy','hyd',34324344,6),(7,'2323',232,'r n reddy','hyd',343232,10);

-- Inner join
select * from Employee inner join Address on employee.emp_id = address.emp_id; 
-- left join
select * from Employee left join Address on employee.emp_id = address.emp_id;
-- right join
select * from Employee right join Address on employee.emp_id = address.emp_id;   
-- full join
select * from Employee left join Address on employee.emp_id = address.emp_id union select * from Employee right join Address on employee.emp_id = address.emp_id;


-- Author and Book are one to many

create table Author(id int primary key unique,
authorName varchar(20),
phoneNO int,
address varchar(20)
);
insert into Author values(1,'Anitha',96409817,'hyd'),(2,'goverdhan',901016934,'hyd'),(3,'rangamma',8364827,'hyd');

create table Book(id int primary key unique,
bookTitle varchar(30),
price int,
published int,
AuthorId int,
foreign key (AuthorId) references Author(id)
);
insert into Book values(7025,'mytruth',1500,2022,1),(7026,'TheIndianStory',1600,2023,2),(7027,'QueenOfLife',1900,2022,2),(7028,'monsoon',1700,2023,3);

-- Receipe and ingredients are many to many.

create table Receipe( receid int primary key unique,
name varchar(20),
itemsUsed int,
type varchar(30)
);
insert into receipe values(1,'potato',8,'fried'),(2,'Dal',5,'curry'),(3,'chicken',6,'curry');

create table ingredients(
ingreId int primary key unique,
seed varchar(20),
chilli varchar(20),
ginger varchar(30)
);
insert into ingredients values(1,'cumin','wet','used'),(2,'black','dry','used'),(3,'cumin','wet','used');

create table ReceIngre(
id int primary key unique,
receid int,
ingreId int
);
insert into ReceIngre values(1,1,3),(2,2,2),(3,3,3),(4,3,1);