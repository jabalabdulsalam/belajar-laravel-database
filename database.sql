create database belajar_laravel_database;

use belajar_laravel_database;

create table categories
(
    id varchar(100) NOT NULL PRIMARY KEY,
    name varchar(100) NOT NULL,
    description text,
    created_at timestamp
)engine innodb;

desc categories;

create table counters(
    id varchar(100) NOT NULL PRIMARY KEY,
    counter int NOT NULL DEFAULT 0
)ENGINE InnoDB;

INSERT INTO counters(id, counter)
 VALUES ('sample',0);

SELECT * FROM counters;

create table products(
    id varchar(100) NOT NULL PRIMARY KEY,
    name varchar(100) NOT NULL,
    description text NULL,
    price int NOT NULL,
    category_id varchar(100) NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    constraint fk_category_id FOREIGN KEY (category_id) REFERENCES categories(id)
)ENGINE InnoDB;

SELECT * FROM products;

DROP TABLE products;
DROP TABLE categories;
DROP TABLE counters;

SHOW TABLES;
