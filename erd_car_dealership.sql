CREATE TABLE car (
	"car_id" INT PRIMARY KEY,
	"salesman_id" SERIAL,
	"owner_id" INT,
	"model" VARCHAR(20),
	"make" VARCHAR(20),
	"year" INT,
	"color" VARCHAR(20),
	"MSRP" DECIMAL (6,2),
	FOREIGN KEY (salesman_id) REFERENCES employee(employee_id),
	FOREIGN KEY (owner_id) REFERENCES customer(customer_id)
)
CREATE TABLE employee(
	"employee_id" SERIAL PRIMARY KEY,
	"employee_type" INTEGER,
	"first_name" VARCHAR(20),
	"last_name" VARCHAR(20)
)
CREATE TABLE customer(
	"customer_id" INT PRIMARY KEY,
	"first_name" VARCHAR(50),
	"last_name" VARCHAR(50),
	"address" VARCHAR(50),
	"billing_info" VARCHAR(50)
)
CREATE TABLE invoice(
	"invoice_id" SERIAL PRIMARY KEY,
	"employee_id" SERIAL,
	"car_id" INT,
	"customer_id" SERIAL ,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (car_id) REFERENCES car(car_id)
)
CREATE TABLE service_labor_log(
	"labor_id" SERIAL PRIMARY KEY,
	"ticket_id" INT,
	"mechanic_id" SERIAL,
	FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id),
	FOREIGN KEY (mechanic_id) REFERENCES employee(employee_id)
)
CREATE TABLE service_ticket(
	"ticket_id" INT PRIMARY KEY,
	"car_id" INT,
	"customer_id" INT,
	"price" MONEY,
	"needs_parts" BOOLEAN,
	FOREIGN KEY (car_id) REFERENCES car (car_id),
	FOREIGN KEY (customer_id) REFERENCES  customer (customer_id)
)
SELECT *
FROM employee
INSERT INTO employee (
	"employee_id",
	"employee_type",
	"first_name",
	"last_name"
)
VALUES(
	01,
	534,
	'Sam',
	'Houston'
)
INSERT INTO customer(
	"customer_id",
	"first_name",
	"last_name",
	"address",
	"billing_info"
)
VALUES(
	2,
	'Kandace',
	'Lowe',
	'724 Public Ave, Richardson, Tx',
	4324-7352-5738-2873
)

INSERT INTO Car (
	"car_id",
	"salesman_id",
	"owner_id",
	"make",
	"model",
	"year",
	"color",
	"MSRP"
)
Values(
	1,
	1,
	2,
	'Ford',
	'Focus',
	3009,
	'Blue',
	9864.34
)

INSERT INTO invoice(
	"invoice_id",
	"employee_id",
	"car_id",
	"customer_id"
)
VALUES(
	4539,
	01,
	1,
	2
)

INSERT INTO service_ticket(
	"ticket_id",
	"car_id",
	"customer_id",
	"price",
	"needs_parts"
)
VALUES(
	503,
	1,
	2,
	482,
	'TRUE'
)
INSERT INTO service_labor_log
VALUES(
	832,
	503,
	01
)