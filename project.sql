create database yatra ;

use yatra ;

create table driver
(IDCODE int primary key , 
DFNAME varchar (70), 
dlname varchar (60),
 DGENDER varchar (50),
 DAGE int , 
 DEXPERIENCE_YEAR int,
 vehicle text,
 PAYMENT_MODE text ,
 PHONE_NO int,
 EMAIL text,
 DATE_OF_JOINING date
 ) ;
 
 
 create table passenger
 (CUSTOMERID int primary key ,
 PFNAME varchar(70),
 PLNAME varchar(60),
 P_AGE int,
 PGENDER text,
 location text,
 destination text,
 PPHONE int ,
 PEMAIL text,
 time_spend datetime ,
 DP int,
 review text ,
 foreign key (DP) references driver (IDCODE)
 ) ;
 
 select * from driver
 join passnger
 on driver.IDCODE = passnger.DP;
 
 select * from driver
left join passnger
 on driver.IDCODE = passnger.DP;
 
 select * from driver
right join passnger
 on driver.IDCODE = passnger.DP;
 
 select * from driver 
 cross join passenger ;
 
 select * from driver
  left join passnger
 on driver.IDCODE = passnger.DP
 union
 select * from driver
  right join passnger
 on driver.IDCODE = passnger.DP;
 
 
 
 
 
 
 