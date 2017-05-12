create table category (
id IDENTITY,
name VARCHAR(50) not null,
description VARCHAR(255) not null,
active boolean not null,

constraint PK_category_id PRIMARY KEY (id));

create table supplier (
id IDENTITY,
name VARCHAR(50) not null,
description VARCHAR(255) not null,
active boolean not null,

constraint PK_supplier_id PRIMARY KEY (id));

create table product (
id IDENTITY,
name VARCHAR(50),
description VARCHAR(255),
cid NUMBER(4) references category(id) on delete cascade,
price number(9),
image VARCHAR(50),
active boolean,

constraint PK_product_id PRIMARY KEY (id));

create table usertable (
	uid IDENTITY primary key,
	pno VARCHAR(20)  unique,
	pw varchar(20) ,
	fname varchar(20) ,
	lname varchar(20) ,
	email varchar(100) unique,
	add1 varchar(100) ,
	add2 varchar(100) ,
	add3 varchar(100) ,
	cartid number(4),
	city varchar(100) ,
	state varchar(100),
	pincode number(6) ,
	role varchar(10) ,
	is_active boolean 
	
);

create table cart (

	cartid IDENTITY primary key,
	items number(5),
	totalcost number(15) ,
	is_active boolean not null
	
);


create table cartitem (

	itemid IDENTITY primary key,
	uid number(5),
	id number(5),
	iprice number(9),
	iquantity number(4),
	itotal number(15),
	oid number(6),
	is_active boolean,
	constraint fk_key_user foreign key (uid) references usertable(uid),
	constraint fk_key_product foreign key (id) references product(id)
	
	
);


create table address (

	addid IDENTITY primary key,
	aid number(4) not null,
	add1 varchar(100) not null,
	add2 varchar(100) not null,
	add3 varchar(100) not null,
	city varchar(100) not null,
	state varchar(100) not null,
	pincode number(6) not null,
	is_active boolean not null
);



create table ordertable (

    orderid IDENTITY primary key,
    uid number(6),
    addid number(6),
    amount number(15),
    is_active boolean not null,
    is_ordered boolean not null,
);




create table orderitem (




	oitemid identity primary key,

	orderid number(6),

	uid number(6),

	pid number(6),

	quantity number(6),

	itotal number(15),

	addid number(6),

	is_active boolean not null

	

);
