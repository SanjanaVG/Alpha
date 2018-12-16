use Db_EmpRepository;

create table Tbl_Employee (Emp_ID int primary key,EmpName varchar(20),Email_Address varchar(30),ContactNo varchar(10),DOB date,Gender varchar(1),Adress varchar(50),DOJ date,Department varchar(20),Designation varchar (20),Salary decimal(10,2),Password1 varchar(20),RoleID int references Tbl_Roles(RoleID), DeleteFlag varchar(1) );

create table Tbl_Roles(RoleId int primary key,Roles varchar(30));

insert into Tbl_Employee(Emp_ID,EmpName,Email_Address,ContactNo,DOB,Gender,Adress,DOJ,Department,Designation,Salary,Password1,RoleID,DeleteFlag)
values (1001,'Sanjana','sanjana@slkgroup.com',9944556688,'30-NOV-1995','F','Hubli','11-OCT-2016','BFSI','Software-Developer',30000.00,'sanjana',101,'N');

insert into Tbl_Roles values(101,'Admin');
insert into Tbl_Roles values(102,'HR');
insert into Tbl_Roles values(103,'Manager');

select * from Tbl_Employee;
select * from Tbl_Roles;
