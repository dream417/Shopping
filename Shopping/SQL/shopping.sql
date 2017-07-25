#���ݿ�����ȫ��Сд

#create database shopping;

use shopping;

drop table if exists ruser;
create table ruser
(
	id int primary key auto_increment,
	username varchar(40),
	password varchar(16),
	phone varchar(40),
	addr varchar(255),
	rdate datetime
);

drop table if exists category;
create table category
(
	id int primary key auto_increment,
	pid int,#pidΪ0�������ڵ�
	name varchar(255),
	descr varchar(255),
	isleaf int,#������㣬��ÿ��ռ2λ�����99���ӽڵ�
	grade int #�����𣬴�1��ʼ
);

drop table if exists product;
create table product
(
	id int primary key auto_increment,
	name varchar(255),
	descr varchar(255),
	normalprice double,
	memberprice double,
	pdate datetime,
	categoryid int references catetory(id)
);

drop table if exists salesorder;
create table salesorder
(
	id int primary key auto_increment,
	userid int,
	addr varchar(255),
	odate datetime,
	status int
);

drop table if exists salesitim;
create table salesitim
(
	id int primary key auto_increment,
	productid int,
	uniprice double,
	pcount int,
	orderid int
);

truncate table category 
delete from product where categoryid = 21 

select * from category;

#select pid, sum(pcount) sumCount fromo salesitem group by pid order by desc limit 0��10


select * from product where 1=1  and categoryid in (20) and (name like '%��%' or descr like '%��%') and normalprice > 1.0 and normalprice < 5.0 and memberprice > 0.9 and memberprice < 3.0 and pdate >= '2017-07-23 09:04:21' and pdate <= '2017-07-23 09:42:21' limit 0,13

update category set isleaf=0 where id = 20; 
