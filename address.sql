CREATE DATABASE IF NOT EXISTS address;

CREATE TABLE "people" (
	"owner_id" int(10) not null,
	"first_name" varchar(20) NOT NULL,
	"last_name" varchar(20) NOT NULL,
	
);

CREATE TABLE "address" (
	"address_id" int(10) not null,
	"address" varchar(30) NOT NULL,
	"city" varchar(20) NOT NULL,
	"state" varchar NOT NULL,
	PRIMARY KEY ("address_id")
);
