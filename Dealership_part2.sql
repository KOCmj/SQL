insert into SALESPERSON (
	INVOICE_ID
) values (
	1
);

insert into PRODUCTS (
	UPC
) values (
	1
);

insert into CARS (
	CARS_ID,
	TICKET_ID,
	CAR_NAME,
	CAR_YEAR
) values (
	1,
	1,
	'OP Corvette',
	'2026'
);

insert into CUSTOMER (
	SERVICE_ID,
	CARS_ID,
	INVOICE_ID
) values (
	1,
	1,
	1
);

insert into SERVICE (
	TICKET_SERVICE_ID,
	CAR_NAME,
	CAR_YEAR,
	CARS_ID
) values (
	1,
	'OP Corvette',
	'2026',
	1
);

insert into MECHANIC (
	CARS_ID,
	TICKET_SERVICE_ID,
	UPC
) values (
	1,
	0,
	1
);

insert into PRODUCTS_INFORMATION (
	PARTS_NAME,
	PARTS_AMOUNT,
	UPC
) values (
	'Wings',
	2.00,
	1
);

insert into DEALERSHIP (
	DEALERSHIP_ID,
	SERVICE_ID
) values (
	3,
	1
);

select * from SALESPERSON, PRODUCTS, CARS, CUSTOMER, SERVICE, MECHANIC, PRODUCTS_INFORMATION, DEALERSHIP
