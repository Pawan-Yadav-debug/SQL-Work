create database basic_assienment
use basic_assienment
create table studies
(
PNAME VARCHAR(20),
INSTITUTE VARCHAR(20),
COURSE VARCHAR(20),
COURSE_FEE INT
)
insert into studies values ('ANAND', 'SABHARI', 'PGDCA', 4500),
                           ('ALTAF', 'COIT','DCA', 7200),
						   ('JULIANA', 'BDPS','MCA',22000),
						   ('KAMLA', 'PRAGATI', 'DCA', 5000),
						   ('MARY', 'SABHARI', 'PGDCA', 4500),
						   ('NELSON','PRAGATHI', 'DAP', 6200),
						   ('PATRICK', 'PRAGATHI', 'DCAP', 5200),
						   ('QADIR', 'APPLE', 'HDCA', 14000),
						   ('RAMESH', 'SABHARI', 'PGDCA', 4500),
						   ('REBECCA', 'BRILLIANT', 'DCAP',11000),
						   ('REMITHA', 'BRILLIANT', 'DCS', 6000),

						   ('REVATHI', 'SABHARI', 'DAP', 5000),
						   ('VIJAYA', 'BDPS', 'DCA', 48000)
SELECT* FROM STUDIES
SELECT* FROM SOFTWARE

create table SOFTWARE
(PNAME VARCHAR(20),
TITLE VARCHAR(20),
DEVELOPIN VARCHAR(20),
SCOST FLOAT,
DCOST INT,
SOLD INT)
INSERT INTO SOFTWARE VALUES ('MARRY', 'README', 'CPP', 300, 1200, 84),
                            ('ANAND', 'PARACHUTE', 'CPP', 399.95,1200, 43),
							('ANAND', 'VIDEO TITLING', 'PASCAL', 7500, 16000, 9),
							('JULIANA', 'INVENTRAY', 'COBOL', 3000, 3500, 0),
							('KAMALA', 'PAYROLL PKG', 'DBASE', 9000, 20000, 7),
							('MARY', 'FINANCIAL ACCT.', 'ORACLE', 18000, 85000, 4),
							('MARY', 'CODE GENERATOR', 'C', 4500, 20000, 23),
							('PATRICK', 'README', 'CPP', 300, 1200, 84),
							('QADIR', 'BOMBS AWAY', 'ASSEMBLY', 750, 3000, 11),
							('QADIR', 'VACCINES', 'C', 1900, 3100, 21),
							('RAMESH', 'HOTEL MGMT', 'DBASE', 13000, 35000, 4),
							('RAMESH', 'DEAD LEE', 'PASCAL', 599.95, 4500, 73),
							('REMITHA', 'PC UTILITIES', 'C', 725, 5000, 51),
							('REMITHA', 'TSR HELP PKG', 'ASSEMBELY', 2500, 6000, 7),
							('REVATHI', 'HOSPITAL MGMT.', 'PASCAL', 1100, 75000, 2),
							('VIJAYA', 'TSR EDITOR', 'C', 900, 700, 6)

SELECT* FROM STUDIES
SELECT* FROM SOFTWARE

CREATE TABLE PROGRAMMER
(PNAME VARCHAR(20),
DOB DATETIME,
DOJ DATETIME,
GENDER CHAR,
PROF1 VARCHAR(20),
PROF2 VARCHAR(20),
SALARY INT)

INSERT INTO PROGRAMMER VALUES ('ANAND', '12-APR-66', '21-APR-92', 'M', 'PASCAL', 'BASIC', 3200)

INSERT INTO PROGRAMMER VALUES ('ALTAF', '02-JUL-64', '13-NOV-90', 'M', 'CLIPPER', 'COBOL', 2800), 
                              ('JULIANA', '31-JUL-60', '21-APR-90', 'F', 'COBOL', 'DBASE', 3000),
							  ('KAMALA', '30-OCT-68', '02-JAN-92', 'F', 'C', 'DBASE', 2900),
							  ('MARY', '24-JUN-70', '01-FEB-91', 'F', 'CPP', 'ORACLE', 4500),
							  ('NELSON', '11-SEP-85', '11-OCT-89', 'M', 'COBOL', 'DBASE', 2500),
							  ('PATTRICK', '10-NOV-65', '21-APR-90', 'M', 'PASCAL', 'CLIPPER', 2800),
							  ('QADIR', '31-AUG-65', '21-APR-91', 'M', 'ASSEMBLY', 'C', 3000),
							  ('RAMESH', '03-MAY-67', '28-FEB-91', 'M', 'PASCAL', 'DBASE', 3200),
							  ('REBECCA', '01-JAN-67', '01-DEC-90', 'F', 'BASIC', 'COBOL', 2500),
							  ('REMITHA', '19-APR-70', '20-APR-93','F', 'C', 'ASSEMBLY', 3600),
							  ('REVATHI', '02-DEC-69', '02-JAN-92', 'F', 'PASCAL', 'BASIC', 3700),
							  ('VIJAYA', '14-DEC-65', '02-MAY-92', 'F', 'FOXPRO', 'C', 3500)

select datepart(month, dob), convert varchar(dob) from programmer where dob='jan'


select pname,
dob,
getdate() as [today],
datediff(yy,dob,getdate())as age
from programmer

SELECT* FROM STUDIES
SELECT* FROM SOFTWARE
SELECT* FROM PROGRAMMER

1. Find out the selling cost AVG for packages developed in Pascal.

SELECT AVG(SCOST) AS AVG_OF_PACKEGERS 
FROM SOFTWARE WHERE DEVELOPIN='PASCAL'




2. Display Names, Ages of all Programmers.

select pname,
dob,
getdate() as [today],
datediff(yy,dob,getdate())as age
from programmer


3. Display the Names of those who have done the DAP Course.

select pname from studies where course='dap'


4. Display the Names and Date of Births of all Programmers Born in January.


select* from PROGRAMMER where left(datename(mm,dob),3) ='jan'


5. Display the Details of the Software Developed by Ramesh.

select developin from software where pname='ramesh'

6. Display the Details of Packages for which Development Cost have been recovered.

select title from SOFTWARE where scost>dcost

7. Display the details of the Programmers Knowing C.

select* from programmer where prof1='c'

8. What are the Languages studied by Male Programmers?

select pname, prof1, prof2 from programmer where gender='m'

9. Display the details of the Programmers who joined before 1990.

SELECT * FROM Programmer WHERE YEAR(DOJ)<1990;

10. Who are the authors of the Packages, which have recovered more than double the
Development cost

select pname from software where 2*scost<dcost*sold



