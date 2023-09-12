create database OLA;
use OLA;

create table driver
(
	Driver_id int,
    Driver_Name varchar(20),
    Driver_Co_Num varchar(20),
    Ride_Fare int,
    Pickup_Location varchar(20),
    Driver_otp int primary key,
    Pickup_Date datetime,
    Available_Vehicle varchar(20)    
);

create table customer
(
	Customer_id int,
    Customer_name varchar(20),
    Customer_Co_Num varchar(50),
    Customer_otp int primary key,
    Drop_Location varchar(20),
    foreign key customer(Customer_otp) references driver(Driver_otp)
);

select * from driver
inner join customer
on driver.Driver_id = customer.Customer_id ;

select * from driver
left join customer
on driver.Driver_otp = customer.Customer_otp ;

select * from driver
right join customer
on driver.Driver_otp = driver.Driver_otp ;









