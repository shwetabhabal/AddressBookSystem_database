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
update addressbook set phone='9656448425', email='john@gmail.com' where firstName= 'John';
update addressbook set email= 'jane@gmail.com' where firstName= 'Jane';
update addressbook set email = 'emily@gmail.com' where firstName = 'Emily';
update addressbook set email = 'Robert@gmail.com' where firstName = 'Robert';

delete from addressBook where firstName = 'Robert';
select * from addressbook;

select * from addressbook where city = 'mumbai';
select * from addressbook where state = 'maharashtra';

select city, state, count(*) from addressBook group by city, state;

select * from addressbook where city='mumbai' order by firstName;

alter table addressBook 
add column type varchar(30);
update addressbook set type ='friend' where id=1;
update addressbook set type = 'profession' where id=2;
update addressbook set type='friend' where id=3;
update addressbook set type = 'family' where id=4;
select type, count(*) from addressbook group by type;

insert into addressbook (firstName, lastName, address,phone, email,type) value
("Elena", "forbes", "401 Mystic", 9645223834, "elena@gmail.com", "friend"),
("Elena", "forbes", "401 Mystic", 9645223834, "elena@gmail.com", "family");