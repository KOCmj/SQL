create table SALESPERSON (
	INVOICE_ID SERIAL primary KEY
);

create table PRODUCTS (
	UPC SERIAL primary KEY
);

create table CARS (
	CARS_ID SERIAL primary KEY,
	TICKET_ID SERIAL,
	CAR_NAME VARCHAR(100),
	CAR_YEAR VARCHAR(10)
);

create table CUSTOMER (
	SERVICE_ID SERIAL primary KEY,
	CARS_ID INTEGER not NULL,
	INVOICE_ID INTEGER not NULL,
	foreign KEY(CARS_ID) references CARS(CARS_ID),
	foreign KEY(INVOICE_ID) references SALESPERSON(INVOICE_ID)
);

create table SERVICE (
	TICKET_SERVICE_ID SERIAL primary KEY,
	CAR_NAME VARCHAR(100) not NULL,
	CAR_YEAR VARCHAR(10) not NULL,
	CARS_ID INTEGER not NULL,
	foreign KEY(CARS_ID) references CARS(CARS_ID)
);

create table MECHANIC (
	CARS_ID INTEGER not NULL,
	TICKET_SERVICE_ID INTEGER not NULL,
	UPC INTEGER not NULL,
	foreign KEY(TICKET_SERVICE_ID) references SERVICE(TICKET_SERVICE_ID),
	foreign KEY(UPC) references PRODUCTS(UPC)
);

create table PRODUCTS_INFORMATION (
	PARTS_NAME VARCHAR(300),
	PARTS_AMOUNT NUMERIC(10,2),
	UPC INTEGER not NULL,
	foreign KEY(UPC) references PRODUCTS(UPC)
);

create table DEALERSHIP (
	DEALERSHIP_ID SERIAL primary key,
	SERVICE_ID INTEGER not NULL,
	foreign KEY(SERVICE_ID) references SERVICE(TICKET_SERVICE_ID)
);