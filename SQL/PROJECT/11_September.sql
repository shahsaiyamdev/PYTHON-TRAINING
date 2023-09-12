create database today;
 use today ; 
 
 create table lecture1
 (
	LE_ID int primary key ,
    LE_NAME varchar(20),
    LE_GENDER enum("M", "F", "O"),
    LE_DATE date
);

insert into lecture1 values (22 , "BOBBY", "F" "2008-16-07") ; 

create table lecture2
(
	LE_ID int primary key ,
    LE_FNAME varchar(25),
    LE_GENDER enum("M", "F", "O"),
    LE_DATE datetime 
);




