-- changeset timin: 3
INSERT INTO customers (name, surname, age, phone_number)
VALUES ('Alex', 'Ivanov', 20, 89188886753),
       ('AlExeY', 'Romanov', 20, 89108886784),
       ('Roman', 'Kuznecov', 20, 89108886758),
       ('Katya', 'Ivanova', 20, 89108876759);

-- changeset timin: 4
INSERT INTO orders (date, customer_id, product_name, amount)
VALUES ('2004-10-19 10:23:54+02', 1, 'Carrot', 1500),
       ('2013-10-19 10:23:54+02', 2, 'Beer', 15000),
       ('2022-10-19 10:23:54+02', 2, 'Vodka', 30000),
       ('2023-10-19 10:23:54+02', 3, 'Carrot', 1500)