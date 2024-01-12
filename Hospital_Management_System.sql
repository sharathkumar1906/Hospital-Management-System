-- employee details
create table employee (emp_id number(5) PRIMARY KEY, emp_name varchar2(20), Department varchar2(30), specialist varchar2(30) default 'Non',
                            emp_doj DATE);
    
select * from employee;
update employee set emp_name='Dr. Vinay' where emp_id='1003';

insert into employee values(1001, 'Dr. Balaji', 'Sr.Doctor', 'Pulmonologist', '10-9-22');
insert INTO employee VALUES(1002, 'Dr. Savithri', 'Jr.Doctor', 'Gynec', '1-9-22');
insert into employee VALUES(1016, 'Dr.Sharath','Sr.Doctor','Pediatrician','12-6-15');

insert INTO employee VALUES(1003, 'Dr. Viany', 'Sr.Doctor', 'Dentist', '10-8-22');
insert INTO employee VALUES(1004, 'Dr. PJ', 'Deen of Dental', 'Dentist', '16-7-15');
insert INTO employee VALUES(1005, 'Dr. Swathi', 'Deen of gynaecology', 'Gynec', '12-2-14');
insert INTO employee VALUES(1006, 'Dr. kishor', 'Jr.Doctor', 'Pulmonologist', '1-6-23');

insert into employee values(1007, 'Dr.Sujith', 'Dean of Physiotherapy', 'physiotherapist', '24-7-16');
insert into employee values(1008, 'Dr.Rajini', 'Sr.Doctor', 'physiotherapist', '10-7-2018');
insert into employee VALUES(1009, 'Dr.lokesh', 'Jr.Doctor', 'physiotherapist', '20-12-2021');

insert into employee VALUES(1010, 'Dr.john', 'Sr.Doctor', 'General Medican', '1-10-2015');
insert into employee VALUES(1011, 'Dr.shankar', 'Sr.Doctor', 'General Medicine', '6-8-2014');
insert into employee VALUES(1012, 'Dr.joshna', 'jr.Doctor','General Medicine', '5-10-2022');

insert into employee(emp_id, emp_name, department, emp_doj) VALUES(2001, 'Rakesh', 'Pharmacist','12-1-2017');
insert into employee(emp_id, emp_name, department, emp_doj) VALUES(2002, 'Pooja', 'Pharmacist','20-6-2022');
insert into employee(emp_id, emp_name, department, emp_doj) VALUES(2003, 'mallar','pharmacist', '25-8-2018');

insert into employee(emp_id, emp_name, department, emp_doj) VALUES(2004, 'Rupa', 'Sr.Nurse','12-4-12');
insert into employee(emp_id, emp_name, department, emp_doj) VALUES(2005, 'Ramesh','Ward boy','3-6-18');
insert into employee(emp_id, emp_name, department, emp_doj) VALUES(2006, 'Venkatesh','Jr.Nurse','5-9-17');

insert into employee values(1013, 'Dr.satish','Dean of Pulmonology', 'Pulmonologist', '12-9-10');
insert into employee values(1014, 'Dr.harshitha', 'Sr.Doctor', 'General Surgeon', '12-8-17');
insert into employee values(1015, 'Dr.bharath', 'Sr.Doctor','Pediatrician', '08-09-15');

delete from employee where emp_id in  (2003, 1009, 1004);

-- billing details

create table billing_details(bill_id number(10) Primary key, p_id number(5), doctor_charges number(10), medicine_charges number(10),
                        room_charges number(10), nursing_charges number(10), lab_charges number(10),FOREIGN key (p_id) references paitent(p_id));
                        alter table billing_details add test_details varchar2(50);
select * from billing_details;
select * from paitent;
insert INTO billing_details VALUES(1201, 101, 500, 730, 0, 0, 150, 'Blood Test');
insert into billing_details VALUES(1202, 102, 600, 1200, 1000, 400, 1000, 'Blood Test, Scan');

insert into billing_details values(1203, 103, 550, 2000, 0, 0, 350, 'Scan');
insert into billing_details values(1204, 104, 500, 430, 0, 0, 0,'NA');
insert into billing_details values(1205, 105, 600, 500, 0, 0, 350, 'Scan');
insert into billing_details VALUES(1206, 106, 700, 300, 0, 0, 0 ,'NA');

insert into billing_details VALUES(1207, 107, 700, 1000, 0,0,500, 'Scan');
insert into billing_details VALUES(1208, 108, 500, 3000, 500, 230, 1000, 'CT Scan');
insert into billing_details VALUES(1209, 110, 500, 3300, 600, 300, 1000, 'CT, Scan');
insert into billing_details VALUES(1210, 111, 750, 2290, 0, 0, 750, 'Scan');
insert into billing_details VALUES(1211, 112, 300, 250, 0, 0, 0, 'NA');

insert into billing_details VALUES(1212, 109, 300, 200, 0, 0, 0, 'NA');
insert into billing_details VALUES(1213, 115, 400, 450, 0, 0, 0, 'NA');
insert into billing_details VALUES(1214, 116, 800, 1000, 600, 250, 1200, 'Scan');

select * from billing_details;
-- Leave datails
create table leave_info (Lemp_id NUMBER(5), emp_name varchar2(20), emp_leave_date date, number_of_leaves number(5),
                                        FOREIGN KEY(Lemp_id) references employee(emp_id));
                                        
select * from leave_info;
alter table leave_info rename column number_of_leaves to total_number_of_leaves;
alter table leave_info rename COLUMN emp_leave_date to recent_leave_date;

insert into leave_info values(1001, 'Dr. Balaji', '12-9-2023', 5);

insert into leave_info VALUES(1002, 'Dr. Savithri', '12-9-2023', 3);
insert into leave_info VALUES(1003, 'Dr. Vinay', '12-7-23',6);
insert into leave_info VALUES(1005, 'Dr. Swathi', '1-5-23',25);
insert into leave_info VALUES(1006, 'Dr. kishor', '11-1-23', 2);
insert into leave_info VALUES(1007, 'Dr.Sujith', '26-8-23',25);
insert into leave_info VALUES(1008, 'Dr.Rajini', '3-7-23',15);
insert into leave_info VALUES(1010, 'Dr.john', '15-6-23',9);
insert into leave_info VALUES(1011, 'Dr.shanker', '25-4-23',30);

insert into leave_info VALUES(1012, 'Dr.joshna', '18-4-23',4);
insert into leave_info VALUES(2001, 'Rakesh', '12-1-23',35);
insert into leave_info VALUES(2002, 'Pooja', '12-2-23',6);
insert into leave_info VALUES(2004, 'Rupa', '8-9-23',25);
insert into leave_info VALUES(2006, 'Venkatesh', '17-12-22',15);

select * from employee;
select * from leave_info;

insert into leave_info VALUES(1013, 'Dr.satish', '13-7-23', 40);
insert into leave_info VALUES(1014, 'Dr.harshitha', '19-6-23', 25);
insert into leave_info VALUES(1015, 'Dr.bharath', '19-6-23', 48);
insert into leave_info VALUES(1016, 'Dr.Sharath', '19-6-23',33);

-- Patient
create table paitent(p_id number(5) PRIMARY KEY, p_name varchar2(20), age number(3), weight number(4), gender varchar2(10), 
                                address varchar2(50), phone_no number(10), disease varchar2(50), doctor_id number(5));
select * from paitent;
alter table paitent rename column disease to problem;
insert into paitent values(101, 'K.Ram', 43, 55.5, 'Male', 'Balaji colony, Tirupati', 989867543, 'Feaver', 1010);
insert into paitent values(102, 'H.Lokeshwari', 31, 67.4, 'Female', 'Gandhi colony, Tirupati', 989847643, 'Baby delivery', 1005);
insert into paitent values(103, 'S.Chinna', 45, 78.9, 'Male', 'R.K.Street, Tirupati', 8767845663, 'Lungs Problem', 1001);
insert into paitent values(104, 'Meghna', 07, 20.3, 'Female', 'Mangalam, Tirupati', 9027364584, 'Cold and Head ach', 1016);
insert into paitent values(105, 'Swarna', 45, 85.7, 'Female', 'Anna-nagar, Chennai',8980787008, 'Back pain', 1011);
insert into paitent VALUES(106, 'Shivani', 23, 55.5, 'Female', 'MG street, SriKalahasthi', 9898645243, 'Fever', 1012);

insert into paitent VALUES(107, 'Meera', 25, 54.5, 'Female','Adayar, chennai',7677456325, 'Irregular Peroids', 1002);
insert into paitent values(108, 'Rahul', 29, 67.8, 'Male', 'M.R.Palli, Tirupati', 9084673578,'Leg fracture', 1008);
insert into paitent values(109, 'Ahmadh',55, 98.01, 'Male', 'R.K Layout, Chennai',6547893589, 'stomach problem', 1012);
insert into paitent values(110, 'Raheem',31, 78.6, 'Male', 'K.T road, Tirupati',8926747889,'Hand fracture',1007);
insert into paitent values(111, 'sohail',22,85.8,'Male','Postal colony, Tirupati', 7645373893, 'lungs issue', 1013);
insert into paitent values(112, 'Manoj', 56,78.6,'Male','Gandhi road, Chennai', 9086472811, 'Leg pain',1008);

insert into paitent values(113, 'Bhavya', 12, 41.2, 'Female', 'Gandhi ciricle, Chennai', 6734689126, 'Nee injury', 1015);
insert into paitent VALUES(114, 'Teja', 10, 25.7, 'Male','University road, Tirupati', 9856748033, 'Weekness', 1016);
insert into paitent VALUES(115, 'Abhi', 20, 68.9, 'Female','Byragpateda, Tirupati', 6573894679, 'Motions and vomtings',1014);
insert into paitent values(116, 'Guru', 23, 84.3, 'Male', 'Thiruchanoor road, Tiruapti', 9869847584, 'Nee injury',1010);

delete from paitent where p_id in (123, 124, 125);
select * from Hospital_Management_System.paitent;

select * from leave_info;
select * from employee;
-- payroll_info
--gross pay: amount without cuttings
--net salary: amount after cuttings
create table payroll_info(emp_id number(5) primary key, emp_name varchar2(20),department varchar2(20), specialist varchar2(20), bank_details varchar2(50),  
                            salary_per_year number(10), gross_pay number(10), net_pay number(10), FOREIGN KEY(emp_id) references employee(emp_id));

desc payroll_info;
select * from payroll_info;
select * from employee;

insert into payroll_info values (1001, 'Dr. Balaji', 'Sr.Doctor', 'pulmonologist', 'SBI 90BF87000FG1', '2400000', '200000', '190234');
insert into payroll_info values (1002, 'Dr. Savithri', 'Jr.Doctor', 'Gynec', 'SBI 896479BHN120', '100000', '83333', '79078');
insert into payroll_info values (1003, 'Dr. Vinay', 'Sr.Doctor', 'Dentist', 'ICIC ICIC901678Bg3266', '1500000', '125000', '120000');
insert into payroll_info values (1005, 'Dr. Swathi', 'Sr.Doctor', 'Dean of gynaecology', 'HDFC 90BF87890FG1', '3400000', '283333', '279008');

insert into payroll_info values (1006, 'Dr. kishor', 'Jr.Doctor', 'pulmonologist', 'SBI 1235647BH4555', '100000','83333', '79078');
insert into payroll_info values (1007, 'Dr.Sujith', 'Dean ofphysiotherapy', 'physiotherapist', 'SBI 1235647BH7865', '3000000', '250000', '239008');
insert into payroll_info values (1008, 'Dr.Rajini', 'Sr.Doctor','physiotherapist', 'SBI 8976583649FGRT', '2400000', '200000', '190234');
insert into payroll_info values (1010, 'Dr.john','Sr.Doctor','General Medican','ICIC ICIC8764567BG3266', '2400000', '200000', '190234');
insert into payroll_info values (1011, 'Dr.shankar', 'Sr.Doctor','General Medican', 'SBI 9087647BGHTT89', '2400000', '200000', '190234');
insert into payroll_info values (1012, 'Dr.joshna','jr.Doctor','General Medican', 'ICIC 91235647BGHTT89', '100000', '83333', '79078');

insert into payroll_info values (2001, 'Rakesh', 'Pharmacist', 'Non', 'SBI 90878764567BG', '500000','41666','38789');
insert into payroll_info values (2002, 'Pooja', 'Pharmacist', 'Non', 'SBI 67547389BT36', '400000','31666','28789');
insert into payroll_info values (2004, 'Rupa', 'Sr.Nurse', 'Non','SBI 89750385649','600000','51666','48789');
insert into payroll_info values (2006, 'Venkatesh', 'Jr.Nurse','Non','ICIC ICIC90878231567BG','400000','31666','38789');

insert into payroll_info values (1013, 'Dr.satish', 'Dean of Pulmonology','Pulmonologist','SBI 9840738402DT','3400000', '283333', '279008');
insert into payroll_info VALUES (1014, 'Dr.harshitha','Sr.Doctor','General Surgeon','Cenara Bank 907537BTY67','2400000', '200000', '190234');
insert into payroll_info values (1015, 'Dr.bharath','Sr.Doctor','Pediatrician','SBI 897456FT56987','2400000', '200000', '190234');
insert into payroll_info VALUES (1016, 'Dr.Sharath','Sr.Doctor','Pediatrician','SBI 7894637TY229J','2400000', '200000', '190234');

-- stock_details

create table stock_details(iteam_id number(5) primary KEY, iteam_name varchar2(30), iteam_category varchar2(30), quantity_in_stock number(10), expiry_date DATE,
                                supplier varchar2(20), purchase_date date, purchase_price number(10), from_location varchar2(10), present_quantity number(10));
select * from employee;
select * from stock_details;
update stock_details set iteam_name = 'Tablets' where iteam_id=121;
update stock_details set supplier='Dell and Apple Store' where iteam_id=126;
update stock_details set quantity_in_stock = 5 where iteam_id=112;

insert into stock_details (iteam_id, iteam_name , iteam_category , quantity_in_stock ,
                        supplier, purchase_date , purchase_price, from_location , present_quantity)
                        values (110, 'All Furnitures','Decore',320,'sunil furnature', '12-5-2019',400000,'Delhi',20);
        
insert into stock_details (iteam_id, iteam_name , iteam_category , quantity_in_stock ,
                        supplier, purchase_date , purchase_price, from_location , present_quantity) values 
                        (111, 'AC and Fans', 'Decore',90,'Karthik BlueStar','20-4-2019',1200000, 'Chennai',0);

insert into stock_details (iteam_id, iteam_name , iteam_category ,
                        supplier, purchase_date , purchase_price, from_location) values
                        (112, 'Cars, ambulance', 'Vehicals','Toyot and swaraj','12-7-19',3000000, 'Pondi');
                        
insert into stock_details (iteam_id, iteam_name , iteam_category , quantity_in_stock ,
                        supplier, purchase_date , purchase_price, from_location , present_quantity) values
                        (113, 'Mens uniform','uniform',140, 'Ganesha tailors', '12-7-20', 35000, 'chennai',30);
                        
insert into stock_details (iteam_id, iteam_name , iteam_category , quantity_in_stock ,
                        supplier, purchase_date , purchase_price, from_location , present_quantity) values
                        (114, 'Womens uniform','uniform',100, 'Ganehs tailors','12-7-20',36000, 'chennai',20);
                    
insert into stock_details (iteam_id, iteam_name , iteam_category , quantity_in_stock ,
                        supplier, purchase_date , purchase_price, from_location , present_quantity) values
                        (115, 'Doctors ID cards','ID',16,'Rahul_idcard', '12-08-15', 3000, 'Tirupati',0);
                        
insert into stock_details (iteam_id, iteam_name , iteam_category , quantity_in_stock ,
                        supplier, purchase_date , purchase_price, from_location , present_quantity) values
                        (116, 'Employess ID cards', 'ID',20,'Rahul_idcards', '12-8-15', 2500, 'Tirupati',0);
        
insert into stock_details (iteam_id, iteam_name , iteam_category , quantity_in_stock ,
                        supplier, purchase_date , purchase_price, from_location , present_quantity) values
                        (117, 'Oxygen mask and cyinder', 'Medical Tools', 30, 'keerthi surgicals','12-8-18',70000, 'chennai', 7);
                        
insert into stock_details (iteam_id, iteam_name , iteam_category , quantity_in_stock ,
                        supplier, purchase_date , purchase_price, from_location , present_quantity) values
                        (118, 'BP and sugar checking device', 'Medical Tools', 30, 'keerthi surgicals','12-8-18',17000, 'chennai', 7);
                        
insert into stock_details (iteam_id, iteam_name , iteam_category , quantity_in_stock ,
                        supplier, purchase_date , purchase_price, from_location , present_quantity) values
                        (119, 'Scacnning machine', 'Medical machine', 3, 'ION','12-8-18',850000, 'mumabi', 0);

insert into stock_details values(120, 'Tonics', 'Medicins', 300, '12-3-23', 'ATG pharma','12-8-22',120000, 'bangalore',120);
insert into stock_details values(121, 'Tablest', 'Medicins', 300,'12-3-24', 'ATG pharma','12-8-22',150000, 'bangalore', 140); 

insert into stock_details (iteam_id, iteam_name, iteam_category, quantity_in_stock, supplier, purchase_date, purchase_price, 
                        from_location, present_quantity) values (122, 'surgical cutters and kinfes','surgical iteams', 200, 'keerthi surgicals',
                        '15-9-22', 10000, 'chennai',30);
insert into stock_details (iteam_id, iteam_name, iteam_category, quantity_in_stock, supplier, purchase_date, purchase_price, 
                        from_location, present_quantity) values (123, 'surgical mask and glouses','surgical iteams', 100, 'keerthi surgicals',
                        '15-9-22', 8000, 'chennai',20);


insert into stock_details values (124, 'medical spray','Medicins', 150, '15-8-24', 'ATG pharma','12-8-22',7800,'bangalore',76);

insert into stock_details (iteam_id, iteam_name, iteam_category, quantity_in_stock, supplier, purchase_date, purchase_price, 
                        from_location, present_quantity) values (125, 'surgary uniform','unfrom', 100, 'keerthi surgicals',
                        '15-9-22', 14000, 'chennai',32);

insert into stock_details (iteam_id, iteam_name, iteam_category, quantity_in_stock, supplier, purchase_date, purchase_price, 
                        from_location, present_quantity) values (126, 'Desktops and CPU','Electrical', 30, 'Dell Store',
                        '15-9-18', 600000, 'Bangalore',0);

insert into stock_details (iteam_id, iteam_name, iteam_category, quantity_in_stock, supplier, purchase_date, purchase_price, 
                        from_location, present_quantity) values (127, 'Key_boards and mouses','Electrical', 30, 'Dell Store',
                        '15-9-18', 30000, 'Bangalore',0);
                        
insert into stock_details (iteam_id, iteam_name, iteam_category, quantity_in_stock, supplier, purchase_date, purchase_price, 
                        from_location, present_quantity) values (128, 'Printer and projector','Electrical', 20, 'Dell Store',
                        '15-9-18', 50000, 'Bangalore',0);

-- expenses_details

create table expenses_details (expenses_id number(10) primary key, expenses_date date, expenses_category varchar2(40), amount number(10),
                                payment_method varchar2(20), Tax_amount number(20));
select * from payroll_info;

select sum(net_pay) from payroll_info;
select * from expenses_details;
-- expenses of october month
insert into expenses_details values(090, '1-9-23', 'Salaries', 2641052, 'Net_Banking', 145455);
insert into expenses_details values(091, '3-9-23', 'Vehicals services', 25890,'online transcation',1790);
insert into expenses_details values(092, '1-9-23', 'Current bills', 46500, 'online transcation', 3470);
insert into expenses_details values(093, '5-9-23', 'Infrastructure Maintance', 120590, 'Net_Banking', 6570);
insert into expenses_details values(094, '2-9-23', 'Food iteams for cafeteria', 25900, 'online transcation', 1320);
insert into expenses_details values(095, '13-9-23','System Maintance', 12000, 'online transcation', 540);

-- Tables
        select * from billing_details;
        select * from expenses_details;
        select * from leave_info;
        select * from paitent;
        select * from employee;
        select * from payroll_info;
        select * from stock_details;
        