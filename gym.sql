CREATE SCHEMA Gym;
USE Gym;

CREATE TABLE Branch
(Branch_code int not null,
Branch_street varchar(20),
Branch_street_number int,
Branch_city varchar(20),
Branch_open_time time,
Branch_close_time time,
Branch_capacity int,
Branch_phone varchar(11),
PRIMARY KEY (Branch_code)
)engine=innodb;

CREATE TABLE Areas
(Area_code int not null,
Area_branch_code int,
Area_desc varchar(20),
PRIMARY KEY (Area_code),
FOREIGN KEY (Area_branch_code) REFERENCES branch(branch_code)
)engine=innodb;

CREATE TABLE registration_Packages 
(Package_code int NOT NULL,
Package_price int,
Package_duration int,
PRIMARY KEY (Package_code)
)engine=innodb;

CREATE TABLE Manufacturers
(Manufacturer_name varchar(20) not null,
Manufacturer_street varchar(20),
Manufacturer_street_number int,
Manufacturer_city varchar(20),
Manufacturer_phone varchar(20),
PRIMARY KEY (Manufacturer_name)
)engine=innodb;

CREATE TABLE Employees 
(Employee_id int not null,
Employee_f_name varchar(20),
Employee_l_name varchar(20),
Employee_dob date,
Employee_position varchar(20),
Employee_street varchar(20),
Employee_street_number int,
Employee_city varchar(20),
Employee_phone varchar(20),
Employee_salary int,
Employee_seniority int,
Employee_branch int,
PRIMARY KEY (Employee_id),
FOREIGN KEY (Employee_branch) references branch(branch_code)
)engine=innodb;

CREATE TABLE Trainers
(Trainer_id int not null,
Area_code int,
Trainer_specialization varchar(20),
primary key (Trainer_id),
FOREIGN KEY (Trainer_id) references Employees(Employee_id),
FOREIGN KEY (Area_code) references Areas(Area_code)
)engine=innodb;

create table shifts
(Trainer_id int not null,
shift_date date,
shift_start time,
shift_end time,
FOREIGN KEY (Trainer_id) references Trainers(Trainer_id)
)engine=innodb;

CREATE TABLE Members
(Member_id int not null,
Member_f_name varchar(20),
Member_l_name varchar(20),
Member_street varchar(20),
Member_street_number int,
Member_city varchar(20),
Member_dob date,
Member_phone varchar(11),
Member_exp_date date,
Member_package int,
Member_active boolean,
PRIMARY KEY (Member_id),
FOREIGN KEY (Member_package) REFERENCES registration_Packages(Package_code)
)engine=innodb;

create table Freeze_Subscription
(Member_id int not null,
Freeze_start date,
Freeze_end date,
FOREIGN KEY (Member_id) references Members(Member_id)
)engine=innodb;

create table Member_attendance
(Member_id int not null,
attendance_date date,
attendance_in time,
Area_code int,
FOREIGN KEY (Member_id) references Members(Member_id),
FOREIGN KEY (Area_code) references Areas(Area_code)
)engine=innodb;

CREATE TABLE Equipment_In_Gym
(Equipment_code int NOT NULL,
Equipment_name varchar(20),
Equipment_Manufacturer varchar(20),
Equipment_manufacture_date date,
last_check_id int,
Equipment_last_check date,
Equipment_area_code int,
Equipment_status boolean,
PRIMARY KEY (Equipment_code),
FOREIGN KEY (Equipment_area_code) REFERENCES areas(area_code),
FOREIGN KEY (last_check_id) REFERENCES Employees(Employee_id)
)engine=innodb;

CREATE TABLE Order_equipment
(Order_code int not null,
Manufacturer_name varchar(20),
Equipment_name varchar(20),
order_date date,
order_price int,
Equipment_amount int,
Area_code int,
Employee_id int,
PRIMARY KEY (Order_code),
FOREIGN KEY (Manufacturer_name) REFERENCES Manufacturers(Manufacturer_name),
FOREIGN KEY (Employee_id) REFERENCES Employees(Employee_id)
)engine=innodb;

create table Equipment_tracking
(Equipment_code int,
Area_code int,
fault_description varchar(50),
FOREIGN KEY (Equipment_code) references Equipment_In_Gym(Equipment_code)
)engine=innodb;










