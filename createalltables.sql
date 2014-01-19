CREATE TABLE Villager
	(card_no INTEGER,
	 card_name VARCHAR,
	 gender VARCHAR,
	age INTEGER,
	 name VARCHAR,
	 PRIMARY KEY (card_no) );



CREATE TABLE EPanchayat
	(panchayat_id INTEGER,
	 PRIMARY KEY (panchayat_id));

CREATE TABLE Dairy_1
	(phone_no INTEGER,
	dairy_id INTEGER,
	panchayat_id INTEGER,
	 PRIMARY KEY (dairy_id),
	FOREIGN KEY (panchayat_id) REFERENCES EPanchayat ON DELETE CASCADE);
	 
CREATE TABLE Dairy_2
	(cattle_strength INTEGER,
	 dairy_id INTEGER,
	 PRIMARY KEY (dairy_id));


CREATE TABLE Water
	(pump_id INTEGER,
	 technology VARCHAR,
	 maintenance_date Date,
	 problems VARCHAR,
	 PRIMARY KEY (pump_id),
panchayat_id INTEGER,
	FOREIGN KEY (panchayat_id) REFERENCES EPanchayat ON DELETE CASCADE );




CREATE TABLE Housing_1
	(scheme_no INTEGER,
	 scheme_name VARCHAR,
	 house_quantity INTEGER,
	 cost INTEGER,
	 PRIMARY KEY (scheme_no),
 panchayat_id INTEGER,
	 FOREIGN KEY (panchayat_id) REFERENCES EPanchayat ON DELETE CASCADE);


CREATE TABLE Housing_2
	(scheme_no INTEGER,
	 location VARCHAR,
	 PRIMARY KEY (scheme_no) );



CREATE TABLE Education
	(s_id INTEGER,
	card_no INTEGER NOT NULL,
	 name VARCHAR,
	upto INTEGER,
	 PRIMARY KEY (s_id, card_no),
FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE );

CREATE TABLE Cattles
	(cattle_reg_id INTEGER,
	card_no INTEGER NOT NULL,
	 type VARCHAR,
	 quantity INTEGER,
	 milk_quantity INTEGER,
	 PRIMARY KEY (cattle_reg_id, card_no),
FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE );


CREATE TABLE Land_1
	(land_reg_id INTEGER,
	card_no INTEGER NOT NULL,
	 location VARCHAR,
	 PRIMARY KEY (land_reg_id, card_no),
FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE );

CREATE TABLE Land_2
	(land_reg_id INTEGER,
	card_no INTEGER,
	 quantity INTEGER,
	 PRIMARY KEY (land_reg_id),
FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE );


CREATE TABLE Vehicle
	(number_plate INTEGER,
	card_no INTEGER NOT NULL,
	 type VARCHAR,
	 PRIMARY KEY (number_plate, card_no),
FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE );



CREATE TABLE House_1
	(reg_id INTEGER,
	card_no INTEGER NOT NULL,
	 location VARCHAR,
	 PRIMARY KEY (reg_id),
FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE );

CREATE TABLE House_2
	(reg_id INTEGER,
	card_no INTEGER,
	 cost INTEGER,
	 PRIMARY KEY (reg_id),
FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE );


CREATE TABLE Death_Registration
	(certificate_no INTEGER,
	 name VARCHAR,
	 DOD Date,
	 gender VARCHAR,
	 religion VARCHAR,
	 BPL VARCHAR,
	card_no INTEGER NOT NULL,
	 PRIMARY KEY (certificate_no),
FOREIGN KEY (card_no) REFERENCES Villager );


CREATE TABLE Birth_Registration
	(certificate_no INTEGER,
	 name VARCHAR,
	 DOB Date,
	 gender VARCHAR,
	 caste VARCHAR,
	 religion VARCHAR,
	 BPL VARCHAR,
	 mother_tongue VARCHAR,
	card_no INTEGER NOT NULL,
	 PRIMARY KEY (certificate_no) ,
FOREIGN KEY (card_no) REFERENCES Villager );



CREATE TABLE Lost_Found
	(complaint_id INTEGER,
	card_no INTEGER NOT NULL,
	 value INTEGER,
	 date Date,
	 item VARCHAR,
	 PRIMARY KEY (complaint_id, card_no),
FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE );


CREATE TABLE Pension
	(amount INTEGER,
	card_no INTEGER NOT NULL,
	 p_id INTEGER,
	 date Date,
	 PRIMARY KEY (p_id, card_no),
FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE );



CREATE TABLE Tax
	(tax_no INTEGER,
	 start_date Date,
	 end_date Date,
	 date Date,
	card_no INTEGER,
	 PRIMARY KEY (tax_no, card_no) ,
FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE);




CREATE TABLE Bills
	(bill_no INTEGER,
	 type VARCHAR,
	 date Date,
                card_no INTEGER,
	 PRIMARY KEY (bill_no, card_no) ,
	 FOREIGN KEY (card_no) REFERENCES Villager ON DELETE CASCADE);

CREATE TABLE Address
	(house_no INTEGER,
	 street VARCHAR,
	 village VARCHAR,
	card_no INTEGER,
	employee_no INTEGER,
	 PRIMARY KEY (house_no) ,
FOREIGN KEY (card_no) REFERENCES Villager,
FOREIGN KEY (card_no) REFERENCES Villager);



CREATE TABLE Employee_1
   (salary INTEGER,
	employee_no INTEGER,
	age INTEGER,
	gender CHAR(10),
	PRIMARY KEY  (employee_no)
	);
 



CREATE TABLE Employee_2
   (name CHAR(20),
	employee_no INTEGER,
	joining DATE,
	PRIMARY KEY  (employee_no)
	);
 
 
CREATE TABLE Department
	(department_id  INTEGER,
	 department_name VARCHAR,
	employee_no INTEGER,
	 PRIMARY KEY (department_id),
FOREIGN KEY (employee_no) REFERENCES Employee_1 );
