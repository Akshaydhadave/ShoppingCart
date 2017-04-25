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

