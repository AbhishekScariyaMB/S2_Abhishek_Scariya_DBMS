create VIEW view1 as SELECT order_no,order_date from salesorder;
Desc view1;
SELECT* from view1;
insert into view1 values ('5','2013-06-01');
create VIEW view2 as SELECT client_no,cname from clientmaster;
INSERT INTO view2 VALUES(106,'achu');
create view view3 as SELECT * from salesmaster where city='mumbai';
create view view4 as SELECT cname,clientmaster.city as ccity,sname,salesmaster.city from salesmaster,clientmaster;
desc view4;
insert into view4 values('nandu','mumbai','ananthu','mumbai');
create view view5 as SELECT cname,sname from view4;
desc view5;
insert into view5 values('rohan','ronal');
drop view view4
drop view view5
create view EMPLOYEES_VU AS SELECT EMPLOYEE_ID,FIRST_NAME +''+LAST_NAME as EMPLOYEE,DEPARTMENT_ID from EMPLOYEES
desc EMPLOYEES_VU
select EMPLOYEE,DEPARTMENT_ID FROM EMPLOYEES_VU
select * from employees
CREATE VIEW dept50 AS SELECT employee_id empno, last_name employee,department_id deptno FROM employees WHERE department_id = 50 WITH CHECK OPTION;
DESC dept50
UPDATE dept50 SET deptno = 80 WHERE employee = 'Matos';