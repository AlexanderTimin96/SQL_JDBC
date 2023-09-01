    -- changeset timin: 3
CREATE TABLE orders
(
    id           SERIAL PRIMARY KEY,
    date         TIMESTAMP WITH TIME ZONE,
    customer_id  INTEGER,
    product_name VARCHAR(255),
    amount       BIGINT,
    FOREIGN KEY (customer_id) REFERENCES customers (id)
);
    -- rollback drop table customers;
