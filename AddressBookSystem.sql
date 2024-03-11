create database AddressBookSystem;
use AddressBookSystem;
create table addressBook(
id int primary key auto_increment,
firstName varchar(30),
lastName varchar(30),
address varchar(30),
city varchar(30) default 'Mumbai',
state varchar(30) default 'Maharashtra',
phone bigint ,
email varchar(50)
);