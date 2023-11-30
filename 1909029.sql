
drop table monthlyPayment;
drop table perDayBudget;
drop table guestMeal;
drop table studentFeedback;
drop table managerInfo;
drop table basicInfo;

set linesize 200;

CREATE table basicInfo(
studentName varchar(30),
roll number(20),
email varchar(30),
boarder number(10),
blood_grp varchar(5),
dept varchar(10), 
address varchar(10),
room_no varchar(10),
primary key(roll)
);

CREATE table monthlyPayment(
roll number(20),
refund number(10),
meal_off number(10),
current_monthly_payment number(10),
payment_date Date,
foreign key(roll) references basicInfo(roll) ON DELETE CASCADE,
primary key(roll)
);

CREATE table managerInfo(
manager_id number(20),
manager_roll number(20),
dateFrom Date,
dateTo Date,
foreign key(manager_roll) references basicInfo(roll) ON DELETE CASCADE,
primary key(manager_id)
);

CREATE table perDayBudget(
today Date,
manager_id number(20),
total_budget number(10),
meat_cost number(10),
fish_cost number(10),
vegetable_cost number(10),
other_cost number(10),
foreign key(manager_id) references managerInfo(manager_id) ON DELETE CASCADE, 
primary key(today)
);

CREATE table studentFeedback(
roll number(20),
feedbackDate Date,
feedbackTime varchar(10),
manager_id number(20),
rating number(3),
feedbackComment varchar(100),
foreign key(roll) references basicInfo(roll) ON DELETE CASCADE,
foreign key(manager_id) references managerInfo(manager_id) ON DELETE CASCADE
);

CREATE table guestMeal(
roll number(10),
dinningDate Date,
approve varchar(5),
paymentAmount number(5),
foreign key(roll) REFERENCES basicInfo(roll) ON DELETE CASCADE
);

----------**************** Insert Data  *****************------------------------
--------- insert data into basicInfo Table 
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Naeem',1909029,'abdullahnaeem119@gmail.com',2046,'O+','ECE','Barishal','111');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Partho',1909016,'adnan@gmail.com',2047,'A-','ECE','Dhaka','211');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Tanjim',1917052,'tanjim@gmail.com',2120,'O+','URP','Gaibandha','111');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Labib',1907108,'labib@gmail.com',2049,'A+','CSE','Khulna','112');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Sumon',1907109,'sumon@gmail.com',2050,'B+','CSE','Jessore','113');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Robayed',1903110,'robayed@gmail.com',2051,'A+','EEE','Faridpur','110');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Wasif',1905112,'wasif@gmail.com',2053,'O+','ME','Dhaka','117');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Rabbi',1901113,'rabbi@gmail.com',2054,'AB+','CE','Narayanganj','000');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Pias',1917114,'george@gmail.com',2055,'AB+','URP','Dhaka','211');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Abir',1909026,'abir@gmail.com',2056,'A+','ECE','BBaria','117');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Arghya',1907116,'arghya@gmail.com',2057,'B+','CSE','Dhaka','118');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Rian',1901117,'rian@gmail.com',2058,'O+','CE','Gazipur','118');

---------- insert data into monthlyPayment Table
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1909029,110,8,2050,TO_DATE('2023-11-07', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1909016,50,2,2050,TO_DATE('2023-11-07', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1917052,70,2,2050,TO_DATE('2023-11-10', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907108,90,3,2050,TO_DATE('2023-11-05', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907109,150,5,2000,TO_DATE('2023-11-09', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1903110,80,4,2050,TO_DATE('2023-11-05', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1905112,40,2,2050,TO_DATE('2023-11-08', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1901113,75,3,2050,TO_DATE('2023-11-08', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1917114,150,10,2050,TO_DATE('2023-11-12', 'YYYY-MM-DD'));

----------- insert data into managerInfo
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(01,1909029,TO_DATE('2023-10-01', 'YYYY-MM-DD'),TO_DATE('2023-10-31', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(02,1909016,TO_DATE('2023-11-01', 'YYYY-MM-DD'),TO_DATE('2023-11-30', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(03,1917052,TO_DATE('2023-12-01', 'YYYY-MM-DD'),TO_DATE('2023-12-31', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(04,1907108,TO_DATE('2024-01-01', 'YYYY-MM-DD'),TO_DATE('2024-01-31', 'YYYY-MM-DD'));

---------- insert data into perDayBudget 
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-11-01', 'YYYY-MM-DD'),02,35000,15000,10000,5000,4000);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-11-02', 'YYYY-MM-DD'),02,30000,15000,10000,5000,000);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-11-03', 'YYYY-MM-DD'),02,40000,20000,18000,1500,300);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-11-04', 'YYYY-MM-DD'),02,35000,14000,9000,6000,400);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-11-05', 'YYYY-MM-DD'),02,32000,15000,10000,5800,100);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-11-06', 'YYYY-MM-DD'),02,60000,40000,10000,8000,2000);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-11-07', 'YYYY-MM-DD'),02,35000,15000,10000,5000,4500);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-11-08', 'YYYY-MM-DD'),02,35000,15000,10000,5000,4800);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-11-09', 'YYYY-MM-DD'),02,30000,12000,14000,3000,500);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-11-10', 'YYYY-MM-DD'),02,30000,11000,150000,3000,300);

------------ insert data into studentFeedback
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1903110,TO_DATE('2023-11-1', 'YYYY-MM-DD'),'18:02',02,7,'Good');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1905112,TO_DATE('2023-11-01', 'YYYY-MM-DD'),'19:05',02,8,'Good');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907113,TO_DATE('2023-11-01', 'YYYY-MM-DD'),'15:06',02,5,'Medium');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1917114,TO_DATE('2023-11-01', 'YYYY-MM-DD'),'22:29',02,2,'Bad');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1903110,TO_DATE('2023-11-02', 'YYYY-MM-DD'),'14:35',02,10,'Good');

----------- insert data into guestMeal
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1909029,TO_DATE('2023-11-01', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1909016,TO_DATE('2023-11-02', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907109,TO_DATE('2023-11-02', 'YYYY-MM-DD'),'NO',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1903110,TO_DATE('2023-11-03', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907116,TO_DATE('2023-11-03', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1901117,TO_DATE('2023-11-03', 'YYYY-MM-DD'),'NO',50);


insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Aminul',1909031,'aminul@gmail.com',2096,'O+','ECE','Bhola','118');

------ delete row from table 
delete from basicInfo where roll=1909031;

------ Updating the data in a table
update basicInfo set studentName='Piash' where roll=1917114;

------ Displaying table data using SELECT command
select * from studentFeedback where 
roll=(select roll from basicInfo where studentName='Robayed');

------ Aggregate function
------ count number of boarders 
select count(boarder) as number_of_boarders from basicInfo;

----- Group by and Having
----- Displaying average dinning rating of per-day 
select feedbackDate,avg(rating) from studentFeedback group by feedbackDate;
select feedbackDate,avg(rating) from studentFeedback group by feedbackDate having avg(rating)>6;

------ Nested subquery
------- Get The Name of Manager who get 'Bad' feedback 
    select studentName,Roll from basicInfo where
    roll=(select manager_roll from managerInfo where 
    manager_id=(select manager_id from studentFeedback where 
    feedbackComment='Bad'));

------- Set Membership(AND)
------- Displaying data of students from Dhaka who rated the food above five
select * from basicInfo where address='Dhaka' and 
roll in (select roll from studentFeedback where rating > 5);

---- Exists 
select * from basicInfo where address='Dhaka' and 
EXISTS (select * from studentFeedback where rating>5);

------ String operations
select * from basicInfo where dept like 'E%E';
----- Displaying name of departments which have two letters   
select * from basicInfo where dept like '__'; 

------- Join operations
select * from managerInfo natural join basicInfo where dept='CSE';

------- Views
drop view other_cost_every_day; 
create view other_cost_every_day as select today,total_budget,other_cost from perDayBudget;
SELECT today,other_cost
FROM other_cost_every_day
WHERE other_cost <= 1000;

------- So, update basicInfo set roll = 1907118 where roll=1907115; -> is not working 
DELETE from basicInfo where roll = 1907114; 


