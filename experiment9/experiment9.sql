create table clientmaster (client_no int primary key not null, cname varchar(20), city varchar(26));
create table salesmaster (salesmanno int primary key,sname VARCHAR(20),city VARCHAR(10));
create table salesorder (order_no varchar(20) primary key not null check (order_no like '0%'),client_no int REFERENCES clientmaster(client_no), order_date date);
INSERT INTO clientmaster VALUES(101,'senchu','kannur'),(102,'sobin','kannur'),(103,'sajan','mumbai'),(104,'siju','gujarath'),(105,'george','kottayam');
select * from clientmaster;
insert into salesmaster VALUES(1,'biju','mumbai'),(2,'amith','mumbai'),(3,'sreelal','kannur'),(4,'anoop','thrissur'),(5,'goutham','pala');
select * from salesmaster;		
insert into salesorder values ('0',101,'2013-06-01'),('01',103,'2013-02-01'),('02',103,'2013-03-21'),('03',102,'2013-03-02'),('04',105,'2013-04-02');
select * from salesorder;

select *  from clientmaster join salesorder on clientmaster.client_no=salesorder.client_no where clientmaster.cname='sajan';
SELECT c.cname,s.sname FROM clientmaster c,salesmaster s WHERE c.city='mumbai' and s.city IN (SELECT city FROM salesmaster where city='mumbai');
SELECT c.cname,s.order_date,s.order_no FROM clientmaster c,salesorder s WHERE c.client_no IN (SELECT s.client_no from salesorder);