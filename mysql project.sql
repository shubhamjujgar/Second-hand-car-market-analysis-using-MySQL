create schema cars ; 
use cars;

-- READ DATA -- 
select * from car_dekho;

-- TOTAL CARS: TO GET A COUNT OF TOTAL RECORDS -- 
select count(*) from car_dekho;

-- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2023 -- 
select count(*) from car_dekho
where year = 2023 ;

-- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2020,2021,2022 -- 
-- group by--
select count(*) from car_dekho 
where year in (2020,2021,2022)
group by year;

-- Client asked me to print the total of all cars by year. I don't see all the details 
select year,count(Name) from car_dekho
group by year;

-- Client asked to car dealer agent how many diesel cars will there be in 2020? 
select fuel,count(*) from car_dekho
where fuel = 'Diesel' AND year = 2020;   #20

-- Client requested to car dealer agent how many petrol car will there be in 2020? -- 
select fuel,count(*) from car_dekho
where fuel = 'Petrol' AND year = 2020;   #51

-- The manager told the employee to give a print all the fuel cars (petrol,diesel,CNG) come by all year--
select year ,count(*) from car_dekho
where fuel IN ('petrol','Diesel','CNG')
group by year;

-- Manager said there were more than 100 cars in a given year,which year had more than 100 cars
select year,count(*) from car_dekho 
group by year
having count(*)>100;

-- the manager said to the employee all cars count detail between 2015 and 2023 we need a complete list 
select count(*) from car_dekho
where year between 2015 and 2023;

-- The manager said to the employee all cars detail between 2015 to 2023 we need a complete list --
select * from car_dekho
where year between 2015 and 2023;

-- end --






