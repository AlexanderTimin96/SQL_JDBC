CREATE SCHEMA IF NOT EXISTS shop;

CREATE TABLE IF NOT EXISTS shop.customers
(
    id           SERIAL PRIMARY KEY,
    name         varchar(255)       NOT NULL,
    surname      varchar(255)       NOT NULL,
    age          INTEGER CHECK ( age > 0 AND age < 120 ),
    phone_number varchar(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS shop.orders
(
    id           SERIAL PRIMARY KEY,
    date         TIMESTAMP WITH TIME ZONE,
    customer_id  INTEGER,
    product_name VARCHAR(255),
    amount       BIGINT,
    FOREIGN KEY (customer_id) REFERENCES shop.customers (id)
);
