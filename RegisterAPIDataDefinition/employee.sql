CREATE TABLE employee(
id uuid DEFAULT gen_random_uuid() NOT NULL, 			--random ID generator for users

F_name char (20) NOT NULL,   	                        --first name
L_name char (20) NOT NULL,	                            --last name

employeeID char(5) NOT NULL unique,                		--employeeID Should support up to 5 numerical characters in length  

active char(1) NOT NULL,                                 --Active (Indicates whether an employee is active or inactive)

role char(32),                 							 --Classification or role (Must maintain 3 or more values starting with: general manager, shift manager, and cashier)

manage varchar (1),                                      --Manager (This is a reference, via the Record ID, to another record in the Employee table. May be empty.)

password varchar(200) NOT NULL,                          -- Password 10 characters long

createdOn timestamp without time zone NOT NULL DEFAULT now(), --Created On (timestamp)
primary key(id)
);