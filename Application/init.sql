CREATE TABLE IF NOT EXISTS users (
                                     id SERIAL PRIMARY KEY,
                                     username VARCHAR(255),
    password VARCHAR(255),
    role VARCHAR(50),
    bank INT
    );

CREATE TABLE IF NOT EXISTS items (
                                     id SERIAL PRIMARY KEY,
                                     name VARCHAR(255),
    price INT
    );

CREATE TABLE IF NOT EXISTS orders (
                                      id SERIAL PRIMARY KEY,
                                      user_id INT REFERENCES users(id),
    item_id INT REFERENCES items(id)
    );

CREATE TABLE IF NOT EXISTS stats (
                                     id SERIAL PRIMARY KEY,
                                     items_sold INT,
                                     revenue INTEREST
);

INSERT INTO stats (items_sold, revenue) VALUES (0, 0);
