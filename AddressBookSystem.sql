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
insert into addressBook (firstName, lastName, address, phone, email) values
("ravi", "kumar", "bandra", 9965466585, "ravi@gmail.com"),
('John', 'Doe', '123 Main St', 1234567890, 'john.doe@example.com'),
('Jane', 'Smith', '456 Elm St', 9876543210, 'jane.smith@example.com'),
('Emily', 'Davis', '101 Maple St', 2468013579, 'emily.davis@example.com'),
('Robert', 'Brown', '222 Pine St', 3698521470, 'robert.brown@example.com');
select * from addressbook;