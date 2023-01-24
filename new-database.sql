-- customer -> contact info / One-To-One
-- customer -> order / one-to-many
-- order -> items / many-to-many


DROP DATABASE IF EXISTS online_shop;
CREATE DATABASE IF NOT EXISTS online_shop;
USE online_shop;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS user,
                     contact_info,
                     order_regist,
                     order_details, 
                     items;

/*!50503 set default_storage_engine = InnoDB */;
/*!50503 select CONCAT('storage engine: ', @@default_storage_engine) as INFO */;


CREATE TABLE user (
  user_id INT NOT NULL AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(50) NULL DEFAULT NULL,
    last_name VARCHAR(50) NULL DEFAULT NULL,

  PRIMARY KEY (user_id)
  );

CREATE TABLE contact_info (
  contact_id INT NOT NULL AUTO_INCREMENT,
     user_id INT NULL DEFAULT NULL,
     country VARCHAR(50) NULL DEFAULT NULL,
     city VARCHAR(50) NULL DEFAULT NULL,
     adress VARCHAR(50) NULL DEFAULT NULL,
     phone_number VARCHAR(15) NULL,
     email VARCHAR(50) NULL,

PRIMARY KEY (contact_id),
    FOREIGN KEY (user_id)
REFERENCES online_shop.user (user_id),
UNIQUE INDEX `uq_phone_number` (`phone_number` ASC),
UNIQUE INDEX `uq_email` (`email` ASC) 
);


CREATE TABLE order_regist (
  order_id INT NOT NULL AUTO_INCREMENT,
     user_id INT NULL DEFAULT NULL,
     item_id INT NULL DEFAULT NULL,
     status_ SMALLINT(6) NOT NULL DEFAULT 0,

PRIMARY KEY (order_id),
FOREIGN KEY (user_id)
    REFERENCES user (user_id)
);


CREATE TABLE order_details (
  od_id INT NOT NULL,
   user_id INT NULL DEFAULT NULL,
   order_id INT NULL DEFAULT NULL,
   item_id INT NULL DEFAULT NULL,
   price FLOAT NOT NULL DEFAULT 0,
   discount FLOAT NOT NULL DEFAULT 0,
   quantity SMALLINT(6) NOT NULL DEFAULT 0,
   delivery FLOAT NOT NULL DEFAULT 0,
   date_created DATETIME NOT NULL,
     

PRIMARY KEY (od_id),
FOREIGN KEY (user_id)
    REFERENCES user (user_id)
);


CREATE TABLE items (
  item_id INT NOT NULL AUTO_INCREMENT,
   name_product VARCHAR(75) NOT NULL,
   supplier VARCHAR(100) NOT NULL,
   price FLOAT NOT NULL DEFAULT 0,
   quantity SMALLINT(6) NOT NULL DEFAULT 0,
   published DATETIME NULL DEFAULT NULL,
   order_id INT NULL DEFAULT NULL,

PRIMARY KEY (item_id),
FOREIGN KEY (order_id)
    REFERENCES online_shop.order_regist (order_id)
);








  
