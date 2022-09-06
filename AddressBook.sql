create database Address_Book

create Table DataBook
(
FirstName varchar(255),
Lastname varchar(255),
address varchar(255), 
City char(255),
State char(255),
ZipCode int,
PhoneNumber bigint, 
email varchar(255)
)

select * from DataBook;

insert into DataBook(FirstName,Lastname,address,City,State,ZipCode,PhoneNumber,email) values('Marco','Reus','6th main street','Broussia','Dortmund',65446,493043434,'MarcoReus11@gamil.com');
insert into DataBook(FirstName,Lastname,address,City,State,ZipCode,PhoneNumber,email) values('Thomas','Muller','13th main street','Bayern','Munich',645346,4675344326,'Tmuller25@gamil.com');
insert into DataBook(FirstName,Lastname,address,City,State,ZipCode,PhoneNumber,email) values('Thiago','Silva','56th cross street','Chelsea','London',128953,1234478879,'BrasiTiasil3@gamil.com');
--UC4
update DataBook
Set Lastname = 'Motta'
where FirstName = 'Thiago'
--UC5
delete from DataBook
where FirstName ='thomas'
--UC6
select FirstName,Lastname,address,PhoneNumber,email from DataBook
where State = 'London'

insert into DataBook(FirstName,Lastname,address,City,State,ZipCode,PhoneNumber,email) values('Mason','Mount','54th cross street','Chelsea','London',128953,1234478879,'BrasiTiasil3@gamil.com');
insert into DataBook(FirstName,Lastname,address,City,State,ZipCode,PhoneNumber,email) values('chirstian','Pulisic','512th cross street','Chelsea','London',128953,1234478879,'CapPul10@gamil.com');

--uc7
select count(City) from DataBook 
where City='Chelsea' 

select count(State) from DataBook 
where State='London'

--UC8
select * from DataBook ORDER BY FirstName ASC
where City ='Chelsea'

Alter table DataBook
add Type varchar(255)

update DataBook
set Type = 'Family'
where FirstName='chirstian'

insert into DataBook(Type) values('Family'),('Friend'),('Profession')
delete from DataBook
where Type='Family'

select * from DataBook

select count(Type) from DataBook 
where Type='Family' 


insert into DataBook(FirstName,Lastname,address,City,State,ZipCode,PhoneNumber,email,Type) values('Thomas','Muller','13th main street','Bayern','Munich',645346,4675344326,'Tmuller25@gamil.com','Profession');