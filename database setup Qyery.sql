drop table Person
drop table Login

CREATE TABLE Login
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Username] NCHAR(100) UNIQUE not NULL, 
    [Password] NCHAR(100) not NULL, 
    [Admin] INT NULL DEFAULT 0
)
create table Person
(
	PersonId int IDENTITY(1,1) not null PRIMARY KEY,
	Id int not null foreign key REFERENCES login(Id),
	Fname NCHAR(255) null,
	Lname NCHAR(255) null,
	Age int null, 
	Email NCHAR(255) null, 
	Phone int null,
	City NCHAR(255), 
	Street NCHAR(255)
)

insert into Login (Username, Password, Admin)
values ('jens', 123 , 1);
insert into Login (Username, Password)
values ('Tea', 123);
insert into Login (Username, Password)
values ('Killme', 123);
insert into Login (Username, Password, Admin)
values ('KillmeAdmin', 123 , 1);


insert into Person (Id, Fname, Lname, Age, Email, Phone, City, Street)
values ((select Id from Login where Id = 1), 'Jens', 'neergaard', 31, 'jens@jens.dk', 12345678 , 'something', 'somthing')
insert into Person (Id, Fname, Lname, Age, Email, Phone, City, Street)
values ((select Id from Login where Id = 2), 'Tea', 'something', 31, 'Somthing@something.dk', 12345678 , 'morestuff', 'evenmore')
insert into Person (Id, Fname, Lname, Age, Email, Phone, City, Street)
values ((select Id from Login where Id = 3), ' ', ' ',0 , ' ',0  , ' ', ' ')
insert into Person (Id, Fname, Lname, Age, Email, Phone, City, Street)
values ((select Id from Login where Id = 4), ' ', ' ', 0, ' ',0  , ' ', ' ')

select * from person
select * from Login
