USE address_db.sql;

CREATE TABLE "people" (
	'people_id' int(10) not null,
	'first_name' varchar(20) NOT NULL,
	'last_name' varchar(20) NOT NULL,
	PRIMARY KEY ('people_id')
	
);

CREATE TABLE "address" (
	'address_id' int(10) not null,
	'address' varchar(30) NOT NULL,
	'city' varchar(20) NOT NULL,
	'state' varchar NOT NULL,
	'zip_code' char(9),	
	PRIMARY KEY ('address_id')
);
