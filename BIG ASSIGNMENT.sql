create database a6
use a6;

create table studies(PNAME varchar(20), INSTITUTE varchar(20),COURSE varchar(10), COURSE_FEE int);
insert into studies values('ANAND','SABHARI','PGDCA', 4500),
('ALTAF','COIT', 'DCA', 7200),
('JULIANA', 'BDPS', 'MCA', 22000),
('KAMALA', 'PRAGATHI', 'DCA', 5000),
('MARY', 'SABHARI', 'PGDCA', 4500),
('NELSON', 'PRAGATHI', 'DAP', 6200),
('PATRICK','PRAGATHI', 'DCAP', 5200),
('QADIR', 'APPLE', 'HDCA', 14000),
('RAMESH', 'SABHARI' ,'PGDCA', 4500),
('REBECCA','BRILLIANT', 'DCAP', 11000),
('REMITHA', 'BDPS', 'DCS' ,6000),
('REVATHI', 'SABHARI', 'DAP', 5000),
('VIJAYA', 'BDPS', 'DCA', 48000);

select * from studies;

create table software(PNAME varchar(20), TITLE varchar(25), DEVELOPIN varchar(10), SCOST numeric(8,2), DCOST numeric (8,2), SOLD int);

insert into software values('MARY', 'README', 'CPP' ,300 ,1200 ,84),
('ANAND', 'PARACHUTES', 'BASIC' ,399.95, 6000, 439),
('ANAND', 'VIDEO TITLING', 'PASCAL', 7500 ,16000 ,9),
('JULIANA' ,'INVENTORY', 'COBOL', 3000 ,3500, 0),
('KAMALA', 'PAYROLL PKG.', 'DBASE', 9000, 20000 ,7),
('MARY', 'FINANCIAL ACCT.', 'ORACLE', 18000 ,85000 ,4),
('MARY','CODE GENERATOR' ,'C', 4500 ,20000 ,23),
('PATTRICK', 'README', 'CPP', 300 ,1200, 84),
('QADIR', 'BOMBS AWAY', 'ASSEMBLY', 750, 3000 ,11),
('QADIR', 'VACCINES', 'C', 1900, 3100 ,21),
('RAMESH', 'HOTEL MGMT.', 'DBASE', 13000, 35000, 4),
('RAMESH', 'DEAD LEE', 'PASCAL', 599.95, 4500, 73),
('REMITHA', 'PC UTILITIES', 'C', 725, 5000,51),
('REMITHA' ,'TSR HELP PKG.', 'ASSEMBLY', 2500, 6000 ,7),
('REVATHI', 'HOSPITAL MGMT.', 'PASCAL', 1100, 75000, 2),
('VIJAYA', 'TSR EDITOR', 'C', 900, 700 ,6); 

select * from software;

create table programmer(PNAME varchar (20),DOB date, DOJ date, GENDER char(1), PROF1 varchar(15),PROF2 varchar(15), SALARY int);
insert into programmer values('ANAND','1966-04-12' ,'1992-04-21', 'M', 'PASCAL', 'BASIC', 3200),
('ALTAF', '1964-07-02', '1990-11-13', 'M', 'CLIPPER', 'COBOL', 2800),
('JULIANA', '1960-01-31', '1990-04-21', 'F', 'COBOL', 'DBASE', 3000),
('KAMALA', '1968-10-30', '1992-01-02' ,'F', 'C', 'DBASE', 2900),
('MARY', '1970-06-24' ,'1991-02-01', 'F', 'CPP', 'ORACLE', 4500),
('NELSON', '1985-09-11', '1989-10-11', 'M', 'COBOL', 'DBASE', 2500),
('PATTRICK', '1965-09-10', '1990-04-21', 'M', 'PASCAL', 'CLIPPER', 2800),
('QADIR', '1965-08-31', '1991-04-21', 'M', 'ASSEMBLY', 'C', 3000),
('RAMESH', '1967-05-03', '1991-02-28', 'M', 'PASCAL', 'DBASE', 3200),
('REBECCA', '1967-01-01', '1990-12-01', 'F', 'BASIC', 'COBOL', 2500),
('REMITHA', '1970-04-19', '1993-04-20', 'F', 'C', 'ASSEMBLY', 3600),
('REVATHI', '1969-12-02', '1992-01-02', 'F', 'PASCAL', 'BASIC', 3700),
('VIJAYA', '1965-12-14','1992-05-02', 'F', 'FOXPRO', 'C', 3500);
select*from programmer
select * from software;
select * from studies;



-----------------Assignment – SQL Queries


--1. Find out the selling cost AVG for packages developed in Pascal.
select avg(scost) as Avg_Cost from Software
where Developin = 'Pascal';

--2. Display Names, Ages of all Programmers.
select pname, DATEDIFF(yy,dob,getdate()) as Age from Programmer;

--3. Display the Names of those who have done the DAP Course.
select pname from Studies
where Course = 'DAP';

--4. Display the Names and Date of Births of all Programmers Born in January.
select pname, DOB from Programmer
where month(DOB) = '01';

--5. What is the Highest Number of copies sold by a Package?
select max(sold) as Maximum_Copies from Software;

--6. Display lowest course Fee.
select min(course_fee) as Lowest_Fees from Studies;

--7. How many programmers done the PGDCA Course?
select count(Course) as No_of_Programmers from Studies
where Course = 'PGDCA';

--8. How much revenue has been earned thru sales of Packages Developed in C.
select sum(scost*sold) as Revenue from Software
where Developin = 'C';

--9. Display the Details of the Software Developed by Ramesh.
select * from Software
where Pname = 'Ramesh';

--10. How many Programmers Studied at Sabhari?
select count(*) as Number_Of_Programmers from Studies
where Institute = 'Sabhari';

--11. Display details of Packages whose sales crossed the 2000 Mark.
select * from Software
where scost > 2000;

--12. Display the Details of Packages for which Development Cost have been recovered.
select * from Software
where (scost*sold) > DCOST;

--13. What is the cost of the costliest software development in Basic?
select max(dcost) as Maximum_Cost from Software
where Developin = 'Basic';

--14. How many Packages Developed in DBASE?
select count(1) as Packages from Software
where Developin = 'Dbase';

--15. How many programmers studied in Pragathi?
select count(1) as Programmers from Studies
where Institute = 'Pragathi';

--16. How many Programmers Paid 5000 to 10000 for their course?
select count(1) as Programmers from Studies
where Course_Fee between 5000 and 10000;

--17. What is AVG Course Fee
select avg(course_fee) as Avg_Fees from Studies;

--18. Display the details of the Programmers Knowing C.
select * from Programmer
where Prof1 = 'C'
or Prof2 = 'C';

--19. How many Programmers know either COBOL or PASCAL.
select count(1) as Programmers from Programmer
where prof1 in ('Cobol','Pascal')
or Prof2 in ('Cobol','Pascal');

--20. How many Programmers Don’t know PASCAL and C
select count(1) as Programmers from Programmer
where prof1 not in ('C','Pascal')
and Prof2 not in ('C','Pascal');

--21. How old is the Oldest Male Programmer.
select max(datediff(yy,dob,getdate())) as Oldest_Programmer from Programmer;

--22. What is the AVG age of Female Programmers?
select avg(datediff(yy,dob,getdate())) as Avg_Female_Age from Programmer
where Gender = 'F';

--23. Calculate the Experience in Years for each Programmer and Display with their
--names in Descending order.
select pname, datediff(yy,doj,getdate()) as Experience from Programmer
order by Pname desc;

--24. Who are the Programmers who celebrate their Birthday’s During the Current
--Month?
select pname from Programmer
where month(dob) = month(getdate());

--25. How many Female Programmers are there?
select count(1) as Female_Programmers from Programmer
where Gender = 'F';

--26. What are the Languages studied by Male Programmers.
select pname, prof1, prof2 from Programmer
where Gender = 'M';

--27. What is the AVG Salary?
select avg(salary) as Avg_Salary from Programmer;

--28. How many people draw salary 2000 to 4000?
select count(1) as People from Programmer
where Salary between 2000 and 4000;

--29. Display the details of those who don’t know Clipper, COBOL or PASCAL.
select * from Programmer
where prof1 not in ('Clipper','Cobol','Pascal')
and prof2 not in ('Clipper','Cobol','Pascal');

--30. Display the Cost of Package Developed By each Programmer.
select pname, sum(dcost) as Development_Cost from Software
group by pname;

--31. Display the sales values of the Packages Developed by the each Programmer.
select pname, sum(SCOST*Sold) as Sales_Earned from Software
group by pname;

--32. Display the Number of Packages sold by Each Programmer.
select pname, count(title) as Packages from Software
group by Pname;

--33. Display the sales cost of the packages Developed by each Programmer Language wise.
select pname, developin, sum(scost*sold) as Sales from Software
group by Pname, Developin
order by Pname;

--34. Display each language name with AVG Development Cost, AVG Selling Cost and
--AVG Price per Copy.
select developin, avg(dcost) as Avg_DCost, 
avg(scost*sold) as Avg_SCost, 
avg(scost) as Avg_Price 
from Software
group by Developin;

--35. Display each programmer’s name, costliest and cheapest Packages Developed by him or
--her.
select pname, 
max(dcost) as Costliest, 
min(dcost) as Cheapest 
from Software
group by Pname;


--36. Display each institute name with number of Courses, Average Cost per Course.
select institute, 
count(course) as Courses, 
avg(course_fee) as Avg_Fees
from Studies
group by Institute;

--37. Display each institute Name with Number of Students.
select institute, count(pname) as Students from Studies
group by Institute;

--38. Display Names of Male and Female Programmers. Gender also.
select pname, gender from Programmer;

--39. Display the Name of Programmers and Their Packages.
select pname, salary from Programmer;

--40. Display the Number of Packages in Each Language Except C and C++.
select developin, count(1) as No_Of_Packages from Software
where Developin not in ('C','CPP')
group by Developin;

--41. Display the Number of Packages in Each Language for which Development Cost is less than 1000.
select developin, count(1) as No_Of_Packages from Software
where DCOST < 1000
group by Developin;

--42. Display AVG Difference between SCOST, DCOST for Each Package.
select Developin, avg(abs(scost - dcost)) as Avg_Diff from Software
group by Developin;

--43. Display the total SCOST, DCOST and amount to Be Recovered for each Programmer for Those Whose Cost has not yet been Recovered.
select pname, sum(scost*sold) as Total_SCost, sum(dcost) as Total_DCost, sum(dcost - (scost*sold)) as Recovery_Amt from Software
group by Pname
having sum(dcost - (scost*sold)) > 0

--44. Display Highest, Lowest and Average Salaries for those earning more than 2000.
select max(salary) as Highest, min(salary) as Lowest, avg(salary) as Average from Programmer
where salary > 2000;

--45. Who is the Highest Paid C Programmers?
select top 1 pname from Programmer
where Prof1 = 'C' or Prof2 = 'C'
order by Salary desc;

select * from Programmer
--46. Who is the Highest Paid Female COBOL Programmer?
select top 1 pname from Programmer
where Gender = 'F' and (Prof1 = 'COBOL' or Prof2 = 'COBOL')
order by Salary desc;

--47. Display the names of the highest paid programmers for each Language.
select pname, Prof1 from
(
select *, DENSE_RANK()over(partition by prof1 order by salary desc) as Ordered_Salaries from
(
select pname, prof1, salary from Programmer
union all
select pname, prof2, salary from Programmer
) as Sorted)
as Final_Table where Ordered_Salaries = 1;


--48. Who is the least experienced Programmer.
select pname from Programmer
where DATEDIFF(dd,DOJ,getdate()) = (select min(DATEDIFF(dd,DOJ,getdate())) from Programmer)


--49. Who is the most experienced male programmer knowing PASCAL.
select top 1 pname from Programmer
where (Prof1 = 'Pascal' or Prof2 = 'Pascal')
and Gender = 'M'
order by DATEDIFF(dd,DOJ,getdate()) desc

--50. Which Language is known by only one Programmer?
select Prof1 from
(select prof1 from Programmer
union all
select prof2 from Programmer) as Coalesced
group by Prof1
having count(Prof1) = 1;

--51. Who is the Above Programmer Referred in 50?
select pname from
(
(select prof1 from
(select prof1 from Programmer
union all
select prof2 from Programmer) as Coalesced
group by Prof1
having count(Prof1) = 1) as T1
join 
(select pname, prof1 from Programmer
union all
select pname, prof2 from Programmer) as Unioned
on T1.prof1 = Unioned.Prof1)

--52. Who is the Youngest Programmer knowing DBASE?
select top 1 pname from Programmer
where Prof1 = 'DBASE' or Prof2 = 'DBASE'
order by DATEDIFF(dd,DOB,getdate()) 

--53. Which Female Programmer earning more than 3000 does not know C, C++,
--ORACLE or DBASE?
select pname from Programmer
where Salary > 3000
and Gender = 'F'
and Prof1 not in ('C','CPP','Oracle','DBASE')
and Prof2 not in ('C','CPP','Oracle','DBASE')

--54. Which Institute has most number of Students?
select top 1 Institute from Studies
group by Institute
order by count(Institute) desc;


--55. What is the Costliest course?
select top 1 course from Studies
order by Course_Fee desc

--56. Which course has been done by the most of the Students?
select top 1 Course from Studies
group by Course
order by count(Course) desc;

--57. Which Institute conducts costliest course.
select top 1 Institute from Studies
order by Course_Fee desc

--58. Display the name of the Institute and Course, which has below AVG course fee.
select Institute, Course from Studies
where Course_Fee < (select avg(course_fee) from Studies);

--59. Display the names of the courses whose fees are within 1000 (+ or -) of the
--Average Fee
select course from Studies
where (select avg(course_fee) from Studies) - 1000 <= Course_Fee
and Course_Fee <= (select avg(course_fee) from Studies) + 1000

--60. Which package has the Highest Development cost?
select top 1 title from Software
order by DCOST desc

--61. Which course has below AVG number of Students?
select course, count(course) as Students from Studies
group by Course
having count(course) < (select count(PNAME)/count(distinct course) from Studies);


--62. Which Package has the lowest selling cost?
select top 1 title from Software
order by SCOST

--63. Who Developed the Package that has sold the least number of copies?
select top 1 pname from Software
order by Sold

--64. Which language has used to develop the package, which has the highest
--sales amount?
select top 1 developin from Software
order by (scost * sold)

--65. How many copies of package that has the least difference between
--development and selling cost where sold.
select sold from Software
where abs(scost - dcost) = (select min(abs(scost-dcost)) from Software);

--66. Which is the costliest package developed in PASCAL.
select top 1 title from Software
where Developin = 'Pascal'
order by DCOST


--67. Which language was used to develop the most number of Packages.
select top 1 developin, count(title) as Package_Count from Software
group by Developin
order by count(title) desc

--68. Which programmer has developed the highest number of Packages?
select top 1 Pname, count(title) as Package_Count from Software
group by Pname
order by count(title) desc

--69. Who is the Author of the Costliest Package?
select top 1 pname from Software
order by scost desc;

--70. Display the names of the packages, which have sold less than the AVG
--number of copies.
select Title from Software
where Sold < (select avg(sold) from Software)

--71. Who are the authors of the Packages, which have recovered more than double the
--Development cost?
select pname from Software
where (scost*sold) > (2*dcost);

--72. Display the programmer Name and the cheapest packages developed by them in
--each language.
select Pname, Title, Developin from 
(select *, DENSE_RANK()over(partition by pname,title order by dcost) as Ranked from Software)
as T2 where Ranked = 1


--73. Display the language used by each programmer to develop the Highest
--Selling and Lowest-selling package.
select pname, Developin, scost*sold as Sales from 
(select *, DENSE_RANK()over(partition by pname order by scost*sold) as Ranked_Asc, DENSE_RANK()over(partition by pname order by scost*sold desc) as Ranked_Desc from Software)
as T2 where Ranked_Asc = 1 or Ranked_Desc = 1;

--74. Who is the youngest male Programmer born in 1965?
select top 1 pname from Programmer
where year(DOB) = '1965'
and Gender = 'M'
order by DOB

--75. Who is the oldest Female Programmer who joined in 1992?
select top 1 pname from Programmer
where year(DOJ) = '1992'
and Gender = 'F'
order by DOB desc


--76. In which year was the most number of Programmers born.
select top 1 year(DOB) as [Year], count(year(DOB)) as [Number of Programmers] from Programmer
group by year(DOB)
order by count(year(DOB)) desc

--77. In which month did most number of programmers join?
select top 1 month(DOB) as [Month], count(month(DOB)) as [Number of Programmers] from Programmer
group by month(DOB)
order by count(month(DOB)) desc

--78. In which language are most of the programmer’s proficient.
select prof1 from
(
select prof1, count(prof1) as Count_Programmers, DENSE_RANK()over(order by count(prof1) desc) as Ranked from
(select prof1 from Programmer
union all 
select prof2 from Programmer) as T1
group by Prof1
) as T2
where Ranked = 1

--79. Who are the male programmers earning below the AVG salary of
--Female Programmers?
select pname from Programmer
where Salary < (select avg(salary) from Programmer where Gender = 'F')
and Gender = 'M'

--80. Who are the Female Programmers earning more than the Highest Paid?
select pname from Programmer
where Salary > (select max(salary) from Programmer)
and Gender = 'F'


--81. Which language has been stated as the proficiency by most of the Programmers?
select prof1 from
(
select prof1, count(prof1) as Count_Programmers, DENSE_RANK()over(order by count(prof1) desc) as Ranked from
(select prof1 from Programmer
union all 
select prof2 from Programmer) as T1
group by Prof1
) as T2
where Ranked = 1

--82. Display the details of those who are drawing the same salary.
select T1.pname, T1.DOB, T1.DOJ, T1.Gender, T1.Prof1, T1.Prof2, T1.Salary from 
Programmer T1 join Programmer T2
on T1.Salary = T2.Salary
where T1.Pname <> T2.Pname
order by salary


--83. Display the details of the Software Developed by the Male Programmers Earning
--More than 3000/-.
select * from 
Software
join
Programmer
on Software.Pname = Programmer.Pname
where Gender = 'M' and Salary > 3000

--84. Display the details of the packages developed in Pascal by the Female
--Programmers.
select * from 
Software
join 
Programmer
on Software.Pname = Programmer.Pname
where Gender = 'F'
and Developin = 'Pascal'

--85. Display the details of the Programmers who joined before 1990.
select * from Programmer
where year(DOJ) < '1990'

--86. Display the details of the Software Developed in C By female programmers of
--Pragathi.
select * from
Software
join
Studies
on Studies.PNAME = Software.Pname
join
Programmer
on Software.Pname = Programmer.Pname
where Developin = 'C'
and Institute = 'Pragathi'
and Gender = 'F'


--87. Display the number of packages, No. of Copies Sold and sales value of
--each programmer institute wise.
select Institute, T1.Pname,
sum(sold) as [Copies Sold], 
count(title) as [Number of Packages], 
sum(scost*sold) as [Total Sales] 
from 
(select software.pname, Institute, sold, title, SCOST from Software join Studies
on Software.Pname = Studies.Pname) as T1
group by T1.Pname, institute
order by Institute


--88. Display the details of the software developed in DBASE by Male Programmers, who
--belong to the institute in which most number of Programmers studied.
select * from
Programmer join Software
on Programmer.Pname = Software.Pname
join Studies
on Programmer.Pname = Studies.PNAME
where Developin = 'DBASE'
and Gender = 'M'
and Institute = (select top 1 Institute from Studies group by Institute order by count(institute) desc)

--89. Display the details of the software Developed by the male programmers Born
--before 1965 and female programmers born after 1975.
select * from
Programmer join Software
on Programmer.Pname = Software.Pname
where (Gender = 'M' and year(DOB) < '1965')
or (Gender = 'F' and year(DOB) > '1975')

--90. Display the details of the software that has developed in the language which is
--neither the first nor the second proficiency of the programmers.
select title, Developin from Software left join Programmer P1
on Software.Developin = P1.Prof1
join Programmer P2
on Software.Developin = P2.Prof2
where P1.Prof1 is null
and P2.Prof2 is null

--91. Display the details of the software developed by the male students of Sabhari.
select * from Studies
join Software
on Studies.PNAME = Software.Pname
join Programmer
on Programmer.Pname = Software.Pname
where Gender = 'M' 
and Institute = 'Sabhari';

--92. Display the names of the programmers who have not developed any packages.
select Programmer.Pname from Programmer
left join Software
on Programmer.Pname = Software.Pname
where Title is null

--93. What is the total cost of the Software developed by the programmers of Apple?
select sum(dcost) as [Development Cost] from
Software join Studies
on Software.Pname = Studies.PNAME
where Institute = 'Apple'

--94. Who are the programmers who joined on the same day?
select P1.pname, P1.DOJ from
Programmer P1 join Programmer P2
on P1.DOJ = P2.DOJ
where P1.Pname <> P2.Pname
order by DOJ

--95. Who are the programmers who have the same Prof2?
select P1.Pname, P2.Pname, P1.Prof2 from
Programmer P1 join Programmer P2
on P1.Prof2 = P2.Prof2
where P1.Pname <> P2.Pname 


--96. Display the total sales value of the software, institute wise.
select institute, sum(scost*sold) as Sales from
Studies join Software
on Studies.PNAME = Software.Pname
group by Institute

--97. In which institute does the person who developed the costliest package studied.
select Institute from Studies
join Software
on Studies.PNAME = Software.Pname 
where Software.DCOST = (select top 1 DCOST from Software order by DCOST desc)

--98. Which language listed in prof1, prof2 has not been used to develop any package.
select title, Developin from Software left join Programmer P1
on Software.Developin = P1.Prof1
join Programmer P2
on Software.Developin = P2.Prof2
where P1.Prof1 is null
and P2.Prof2 is null

--99. How much does the person who developed the highest selling package earn and
--what course did HE/SHE undergo.
select top 1 Programmer.Pname, course from
Studies join Software
on Studies.PNAME = Software.Pname
join Programmer
on Programmer.Pname = Software.Pname
order by (scost*sold) desc

--100. What is the AVG salary for those whose software sales is more than 50,000/-.
select avg(salary) as [Average Salary] from Software
join Programmer
on Software.Pname = Programmer.Pname
where (scost*sold) > 50000

--101. How many packages were developed by students, who studied in institute that
--charge the lowest course fee?
select count(*) as [Number of Packages] from Studies 
join Software
on Studies.PNAME = Software.Pname
where Institute = (select top 1 Institute from Studies order by Course_Fee)

--102. How many packages were developed by the person who developed the
--cheapest package, where did HE/SHE study?
select top 1 Institute, Numbers as Packages from 
(select Software.Pname, Institute, ROW_NUMBER()over(order by Software.pname) as Numbers from Studies
join Software
on Studies.PNAME = Software.Pname
where Software.Pname = (select top 1 pname from Software order by DCOST desc))
as T1
order by Numbers desc

--103. How many packages were developed by the female programmers earning more
--than the highest paid male programmer?
select count(*) as [Number of Packages] from Software
join Programmer
on Software.Pname = Programmer.Pname
where Gender = 'F'
and Salary > (select top 1 Salary from Programmer where Gender = 'M' order by salary desc)

--104. How many packages are developed by the most experienced programmer from
--BDPS.
select count(*) as [Number of Packages] from Programmer
join Studies on Programmer.Pname = Studies.PNAME where
DOJ = (select top 1 DOJ from Programmer
join Studies
on Programmer.Pname = Studies.PNAME
where Institute = 'BDPS'
order by DOJ desc)

--105. List the programmers (from the software table) and the institutes they studied.
select distinct Software.Pname, Institute from Software
join Studies
on Software.Pname = Studies.PNAME;

--106. List each PROF with the number of Programmers having that PROF and the
--number of the packages in that PROF.
select prof1, count(distinct pname) as [Number of Programmers], count(title) as [Number of Packages] from
(select Programmer.Pname, title, prof1 from Programmer
join Software
on Programmer.Pname = Software.Pname
union all
select Programmer.Pname, title, Prof2 from Programmer
join Software
on Programmer.Pname = Software.Pname) as T1
group by prof1

--107. List the programmer names (from the programmer table) and No. Of Packages
--each has developed.
select Programmer.Pname, count(title) as [Number of Packages] from Programmer
join Software
on Programmer.Pname = Software.Pname
group by Programmer.Pname;