    -- changeset timin: 1
CREATE TABLE customers
(
    id           SERIAL PRIMARY KEY,
    name         varchar(255)       NOT NULL,
    surname      varchar(255)       NOT NULL,
    age          INTEGER CHECK ( age > 0 AND age < 120 ),
    phone_number varchar(30) UNIQUE NOT NULL
);
    -- rollback drop table customers;