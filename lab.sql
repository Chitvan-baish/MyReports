create database centum;
use centum;

create table register(
fullname varchar(30), age varchar(30), email varchar(30), phone varchar(10) primary key not null,pass varchar(30),repass varchar(30)); 
select * from register;
create table administrator(
username varchar(30) not null, password varchar(30) not null);
insert into administrator values("chitvan", "chitvan");
select * from administrator;
update register set fullname = "chit" where phone="8700606041";
use myreport;
show tables;
select * from lab;
desc lab;
create table booking(  phone varchar(10) primary key not null,city varchar(30),test varchar(30),lab varchar(30),price varchar(30),timings varchar(30));
