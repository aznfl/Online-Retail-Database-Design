use retail_tpa4;

create TABLE product
(product_id char(5) PRIMARY KEY NOT NULL,
product_name varchar(50),
product_price int(10),
product_stock int(10));

DESC product;

