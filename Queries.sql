use gym;

/*Manager Queries*/

/*1.	Show all subscriptions that expire this year*/
select *
from members
where Member_exp_date<20210101;

/*2.	Cost of ordering treadmills*/
select order_equipment.Equipment_name,sum(order_equipment.order_price) as "Treadmills_sum",sum(order_equipment.equipment_amount) as "total"
from order_equipment
where Equipment_name="Treadmills";

/*3.	Show information about the most common package*/
select count(members.Member_package) as 'number of members',registration_packages.Package_price,registration_packages.Package_duration
from registration_packages,members
where registration_packages.Package_code=members.Member_package
group by members.Member_package
limit 1;

/*4.	List of employees from oldest to newest ordered by f name*/
select employees.Employee_f_name,employees.Employee_l_name,employees.Employee_seniority
from employees
where employees.Employee_seniority=(select min(employees.Employee_seniority)
from employees) or employees.Employee_seniority=(select max(employees.Employee_seniority)
from employees)
order by Employee_f_name;

/*5.	Monthly expenses*/
select sum(employees.Employee_salary) 'total salary in october',
(select sum(Order_equipment.order_price)
from Order_equipment
where Order_equipment.order_date between 20201001 and 20201031) as 'total orders in october',
sum(employees.Employee_salary) +
(select sum(Order_equipment.order_price)
from Order_equipment
where Order_equipment.order_date between 20201001 and 20201031) as 'total Expenses in october'
from employees;

/*6.	Monthly income*/
select sum(registration_Packages.Package_price/registration_Packages.Package_duration) as 'monthly income'
from registration_Packages,members
where registration_Packages.Package_code=members.Member_package;


/*7.	Amount and price update in order number 70*/
update Order_equipment
set Equipment_amount=4 , order_price=6000
where Order_code=70;

/*8.	Cancelation of wrong entry by the employee*/
delete from shifts
where Trainer_id=285654 and shift_date=20200901;

/*employee Queries*/

/*1.	Information about broken equipment*/
select Equipment_tracking.*,EMPLOYEES.Employee_f_name,EMPLOYEES.Employee_l_name
from Equipment_in_gym,Equipment_tracking,EMPLOYEES
where Equipment_in_gym.Equipment_code=Equipment_tracking.Equipment_code and Equipment_in_gym.last_check_id=EMPLOYEES.Employee_id;

/*2.	Show a list of night shifts for trainer ID 285654*/
select employees.Employee_f_name,employees.Employee_l_name,shifts.shift_date,shifts.shift_start,shifts.shift_end
from shifts,employees
where shifts.Trainer_id=employees.Employee_id and shifts.Trainer_id=285654 and shift_start=1400;

/*3.	Most used area in the gym*/
select Areas.area_code,areas.Area_desc,count(Member_attendance.member_id) as 'attendance per area'
from Member_attendance,Areas
where Member_attendance.Area_code=Areas.Area_code
group by Areas.area_code
order by count(Member_attendance.member_id) desc;


/*4.	List of active members with a 3 month package */
select Member_id,Member_f_name,Member_l_name,Member_exp_date,Member_phone
from Members
where Member_active=1 and Member_package=31;

/*5.	List of members with the letter "L" in their name */
select *
from Members
where Member_f_name like '%L%'
order by Members.member_id desc;

/*6.	Percentage of working Equipment*/
select Equipment_name,avg(Equipment_status) as 'percentage of working Equipment'
from Equipment_In_Gym
group by Equipment_name
having avg(Equipment_status)<0.50;



/*7.	Update package price*/
update registration_Packages
set Package_price=2500
where Package_code=33;

/*8.	Insert a new member*/
insert into Members values(601457542, 'Yuval', 'David', 'Shlomo Hamelech', 1, 'Tel Aviv', 19980520,'054-4575612', 20210105,31,1);























