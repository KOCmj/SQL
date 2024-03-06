-- INSERTING INFO
insert into CUSTOMER (
	CUSTOMER_ID,
	FIRST_NAME,
	LAST_NAME,
	EMAIL,
	PHONE_NUMBER
) values (
	1,
	'Muffy',
	'KOC',
	'MKOC@gmail.com',
	'222-333-3690'
);

-- inserting into inventory
insert into INVENTORY (
	UPC,
	PRODUCT_AMOUNT
) values (
	1,
	20
);

-- CONCESSION
insert into CONCESSION (
	order_ID,
	ORDER_DATE,
	TOTAL_COST,
	UPC
) values (
	1,
	CURRENT_DATE,
	30.00,
	1
);

-- TICKET
insert into TICKET (
	TICKET_ID,
	CUSTOMER_ID,
	ORDER_ID,
	COST_
) values (
	1,
	1,
	1,
	25.00
);

-- MOVIE
insert into MOVIE (
	MOVIE_ID,
	MOVIE_NAME,
	CUSTOMER_ID
) values (
	1,
	'ONE PIECE ONNUTITY',
	1
);

insert into PRODUCT (
	ITEM_ID,
	AMOUNT,
	PROD_NAME,
	MOVIE_ID,
	UPC
) values (
	1,
	10.00,
	'Pistachios',
	1,
	1
);

select * from CUSTOMER, INVENTORY, CONCESSION, TICKET, MOVIE, PRODUCT
