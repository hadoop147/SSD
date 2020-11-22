DROP DATABASE IF EXISTS Shoes;
CREATE DATABASE Shoes;

USE Shoes;

CREATE TABLE webUser(
webUser_ID INT PRIMARY KEY,
useRpassword varchar(10),
state varchar(10), -- we want a numerator here, customer or admin or visitor
email varchar(10),
openAt datetime,
closedAt datetime,
updatedAt datetime
);

-- INSERT INTO webUser VALUES (1, "Munster", "open", "Company1@gmail.com");
-- SELECT * FROM webUser;

-- register before login

CREATE TABLE customer(
customer_ID INT PRIMARY KEY,
fname varchar(10),
lname varchar(10),
email varchar(15),
address1 varchar(20),
address2 varchar(20),
ph_no varchar(15),
dateOfBirth varchar(20)
);

-- we need to link the tables

CREATE TABLE category(
category_ID INT PRIMARY KEY,
cat_name varchar(10),
description varchar(10)
);



CREATE TABLE brand(
brand_ID INT PRIMARY KEY,
brand_name varchar(10)
-- FOREIGN KEY (product_ID) REFERENCES product(product_ID) -- add this for the love of god
);



CREATE TABLE offer(
offer_ID INT PRIMARY KEY,
offersCode INT,
description varchar(10),
priceReduction decimal
);


CREATE TABLE product(
product_ID INT PRIMARY KEY,
product_Name varchar(10),
productDescription varchar(20),
quantity int,
gender varchar(10),
price decimal,
size int,
colours varchar(10),
picture varchar(10),
offer_code INT
-- FOREIGN KEY (offer_ID) REFERENCES offer(offer_ID),
-- FOREIGN KEY (category_ID) REFERENCES category(category_ID),
-- FOREIGN KEY (brand_ID) REFERENCES brand(brand_ID)
);


CREATE TABLE shoppingCart(
shoppingCart_ID INT PRIMARY KEY,
product_Name varchar(10),
quantity INT,
itemPrice decimal,
totalPrice decimal
-- FOREIGN KEY (product_ID) REFERENCES product(product_ID),
-- FOREIGN KEY (order_ID) REFERENCES order_(order_ID)
);

CREATE TABLE order_(
order_ID INT PRIMARY KEY,
dateCreated datetime,
dateShipped datetime,
ordeRstatus varchar(10) -- numerator
-- FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID),
-- FOREIGN KEY (shipping_ID) REFERENCES shipping(shipping_ID)
);

CREATE TABLE shipping(
shipping_ID INT PRIMARY KEY
-- FOREIGN KEY (customer_ID) REFERENCES customers(product_ID),
-- FOREIGN KEY (order_ID) REFERENCES order_(order_ID)
);


-- SHOW Tables;

-- ALTER TABLE brand ADD product_ID INT;

-- brand
-- FOREIGN KEY (product_ID) REFERENCES product(product_ID)

-- ALTER TABLE brand ADD column_name product_ID;
-- ALTER TABLE brand ADD product_ID INT;
-- ALTER TABLE brand ADD FOREIGN KEY (product_ID) REFERENCES product(product_ID);

-- product
ALTER TABLE product ADD offer_ID INT;
ALTER TABLE product ADD category_ID INT;
ALTER TABLE product ADD brand_ID INT;

-- FOREIGN KEY (offer_ID) REFERENCES offer(offer_ID),
-- FOREIGN KEY (category_ID) REFERENCES category(category_ID),
-- FOREIGN KEY (brand_ID) REFERENCES brand(brand_ID)

ALTER TABLE product ADD FOREIGN KEY (offer_ID) REFERENCES offer(offer_ID);
ALTER TABLE product ADD FOREIGN KEY (category_ID) REFERENCES category(category_ID);
ALTER TABLE product ADD FOREIGN KEY (brand_ID) REFERENCES brand(brand_ID);


-- shopping cart
-- FOREIGN KEY (product_ID) REFERENCES product(product_ID),
-- FOREIGN KEY (order_ID) REFERENCES order_(order_ID)

ALTER TABLE shoppingCart ADD product_ID INT;
ALTER TABLE shoppingCart ADD order_ID INT;

ALTER TABLE shoppingCart ADD FOREIGN KEY (product_ID) REFERENCES product(product_ID);
ALTER TABLE shoppingCart ADD FOREIGN KEY (order_ID) REFERENCES order_(order_ID);


-- order_
-- FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID),
-- FOREIGN KEY (shipping_ID) REFERENCES shipping(shipping_ID)

ALTER TABLE order_ ADD customer_ID INT;
ALTER TABLE order_ ADD shipping_ID INT;

ALTER TABLE order_ ADD FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID);
ALTER TABLE order_ ADD FOREIGN KEY (shipping_ID) REFERENCES shipping(shipping_ID);

-- shipping
-- FOREIGN KEY (customer_ID) REFERENCES customers(product_ID),
-- FOREIGN KEY (order_ID) REFERENCES order_(order_ID)

ALTER TABLE shipping ADD customer_ID INT;
ALTER TABLE shipping ADD order_ID INT;

ALTER TABLE shipping ADD FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID);
ALTER TABLE shipping ADD FOREIGN KEY (order_ID) REFERENCES order_(order_ID);

show tables;