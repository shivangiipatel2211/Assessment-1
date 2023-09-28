# Assessment 1
#Question 1-----------------------------------------------------------------------------------------------------------------------------------------------------

create database worker;
 create table worker(
 worker_id int,
 first_name varchar(50),
 last_name varchar(50),
 salary int,
 joining_date datetime,
 department varchar(50));
 
insert into worker (worker_id,first_name,last_name,salary,joining_date,department)
 values
 ("1","Monika","Arora","100000","2014-02-20 09:00","HR"),
 ("2","Niharika","Verma","80000","2014-06-11 9:00","Admin"),
 ("3","Vishal","Singhal","30000","2014-02-20 9:00","HR"),
 ("4","Amitabh","Singh","50000","2014-02-20 9:00","Admin"),
 ("5","Vivek","Bhati","50000","2014-06-11 9:00","Admin"),
 ("6","Vipul","Diwan","20000","2014-06-11 9:00","Account"),
 ("7","Satish","Kumar","75000","2014-01-20 9:00","Account"),
 ("8","Geetika","Chauhan","90000","2014-04-11 9:00","Admin");
 
 #1 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending...................
 select *
 from worker
 order by first_name asc , department desc;
 
 #2 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table......................................
select *
from worker
where first_name="Vipul" or first_name="Satish";

#3 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets..........................................................
select first_name
from worker
where first_name like "_____h";

#4 Write an SQL query to print details of the Workers whose SALARY lies between 1.......................................................................................
SELECT salary
FROM worker
WHERE salary >= 30000 AND salary <= 50000;

#5 Write an SQL query to fetch duplicate records having matching data in some fields of a table........................................................
SELECT salary,count(*)
FROM worker
GROUP BY salary
HAVING COUNT(*) > 1;

#6  Write an SQL query to show the top 6 records of a table............................................................................................
select *
from worker
limit 6;

#7 Write an SQL query to fetch the departments that have less than five people in them.................................................................
SELECT Department, COUNT(*) as "Num Of workers"
FROM worker
GROUP BY Department
HAVING COUNT(*) < 5;

#8 Write an SQL query to show all departments along with the number of people in there..................................................................
SELECT Department, COUNT(*) as "Num Of workers"
FROM worker
GROUP BY Department;

#9. Write an SQL query to print the name of employees having the highest salary in each department.......................................................
SELECT concat(E.first_name,' ',E.last_name), E.Salary, E.Department
FROM worker E
INNER JOIN (
    SELECT Department, MAX(Salary) AS MaxSalary
    FROM worker
    GROUP BY Department
) MaxSalaries
ON E.Department = MaxSalaries.Department AND E.Salary = MaxSalaries.MaxSalary;

#QUESTION : 2 ------------------------------------------------------------------------------------------------------------------------------------------------------------
#Open school database, then select student table and use following SQL statements. TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT...........

 create table student(
 std_id int,
 std_name varchar(50),
 sex varchar(50),
 percentage int,
 class int,
 sec varchar(50),
 streams varchar(50),
 dob date);
 
 
insert into student (std_id,std_name,sex,percentage,class,sec,streams,dob)
 values
 ("1001","Surekha Joshi","Female","82","12","A","Science","1998-03-08"),
 ("1002","Maahi Agraval","Female","56","11","C","Commerce","2008-11-23"),
 ("1003","Sanam Verma","Male","59","11","C","Commerce","2006-06-29"),
 ("1004","Ronit Kumar","Male","63","11","C","Commerce","1997-11-05"),
 ("1005","Dipes Pulkit","Male","78","11","B","Science","2003-09-14"),
 ("1006","Jahanvi Puri","Female","60","11","B","Commerce","2008-07-11"),
 ("1007","Snam Kumar","Male","23","12","F","Commerce","1998-08-03"),
 ("1008","Sahil Saras","Male","56","11","C","Commerce","2008-07-11"),
 ("1009","Akshara Agrawal","Female","72","12","B","Commerce","1996-01-10"),
 ("1010","Stuti Mishra","Female","39","11","F","Science","2008-11-23"),
 ("1011","Harsh Agrawal","Male","42","11","C","Science","1998-08-03"),
 ("1012","Nikunj Agrawal","Male","49","12","C","Commerce","1998-06-28"),
 ("1013","Akriti Saxena","Female","89","12","A","Science","2008-11-23"),
 ("1014","Tani Rastogi","Female","82","12","A","Science","2008-11-23");
 
 #1  To display all the records form STUDENT table.........................................................................................................
 select *
 from student;
 
 #2 To display any name and date of birth from the table STUDENT.........................................................................................
select std_name, dob 
from student ; 

#3 To display all students record where percentage is greater of equal to 80 FROM student table...........................................................
select * 
from student
where percentage >= 80; 

#4 To display student name, stream and percentage where percentage of student is more than 80.............................................................
select std_name, streams, percentage 
from student
where percentage > 80; 

#5 To display all records of science students whose percentage is more than 75 form student table........................................................... 
select * 
from student
where streams = "Science" AND percentage > 75;