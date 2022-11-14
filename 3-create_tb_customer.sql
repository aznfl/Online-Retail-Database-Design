CREATE TABLE customer
(customer_id char(5) PRIMARY KEY NOT NULL,
cus_name varchar(50),
cus_gender enum('male','female'),
cus_no_phone char(15),
cus_address text);

