BEGIN;

INSERT INTO Customers (name, main_address, email) VALUES
('Kovács Anna', 'Budapest, Bartók Béla út 12.', 'anna.kovacs@example.com'),
('Nagy Péter', 'Budapest, Váci út 45.', 'peter.nagy@example.com'),
('Szabó Eszter', 'Budapest, Mester utca 8.', 'eszter.szabo@example.com'),
('Tóth Márk', 'Budapest, Kossuth Lajos utca 21.', 'mark.toth@example.com'),
('Varga Luca', 'Budapest, Rákóczi út 33.', 'luca.varga@example.com'),
('Kiss Bence', 'Budapest, Fehérvári út 17.', 'bence.kiss@example.com'),
('Molnár Dóra', 'Budapest, Thököly út 54.', 'dora.molnar@example.com'),
('Farkas Gábor', 'Budapest, Üllői út 91.', 'gabor.farkas@example.com');

INSERT INTO Products (name, price, preparation_time_mins) VALUES
('Sonkás pizza', 2890.00, 15),
('Margherita pizza', 2490.00, 12),
('Gyros tál', 3290.00, 18),
('Hamburger', 2590.00, 14),
('Sajtos hamburger', 2890.00, 16),
('Cézár saláta', 2190.00, 10),
('Rántott csirkemell', 3190.00, 20),
('Hasábburgonya', 990.00, 7),
('Palacsinta', 1290.00, 8),
('Gulyásleves', 1890.00, 15),
('Vegetáriánus pizza', 2790.00, 14),
('Görög saláta', 1990.00, 9);

INSERT INTO Orders (customer_id, placed_at, status) VALUES
(1, NOW() - INTERVAL '10 days', 'DELIVERED'),
(2, NOW() - INTERVAL '9 days', 'DELIVERED'),
(3, NOW() - INTERVAL '8 days', 'DELIVERED'),
(1, NOW() - INTERVAL '7 days', 'DELIVERED'),
(4, NOW() - INTERVAL '6 days', 'CANCELLED'),
(5, NOW() - INTERVAL '5 days', 'DELIVERED'),
(6, NOW() - INTERVAL '4 days', 'PAID'),
(2, NOW() - INTERVAL '3 days', 'UNDER_PREPARATION'),
(7, NOW() - INTERVAL '2 days', 'UNDER_DELIVERY'),
(8, NOW() - INTERVAL '1 day', 'RECEIVED'),
(3, NOW() - INTERVAL '12 hours', 'DELIVERED'),
(5, NOW() - INTERVAL '6 hours', 'PAID'),
(1, NOW() - INTERVAL '3 hours', 'UNDER_PREPARATION'),
(6, NOW() - INTERVAL '1 hour', 'RECEIVED'),
(4, NOW(), 'CANCELLED');

INSERT INTO Ordered_products (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 2, 2790.00),
(1, 8, 1, 990.00),

(2, 3, 1, 3290.00),
(2, 4, 2, 2490.00),

(3, 2, 2, 2490.00),
(3, 9, 2, 1190.00),

(4, 1, 1, 2890.00),
(4, 6, 1, 2190.00),
(4, 8, 2, 990.00),

(5, 7, 2, 3190.00),

(6, 3, 2, 3190.00),
(6, 8, 2, 990.00),
(6, 9, 1, 1290.00),

(7, 5, 1, 2890.00),
(7, 8, 1, 990.00),

(8, 1, 1, 2890.00),
(8, 11, 1, 2690.00),
(8, 12, 1, 1990.00),

(9, 3, 1, 3290.00),
(9, 10, 2, 1890.00),

(10, 2, 1, 2490.00),
(10, 4, 1, 2590.00),
(10, 8, 1, 990.00),

(11, 6, 2, 2190.00),
(11, 9, 3, 1190.00),

(12, 7, 1, 3190.00),
(12, 3, 1, 3290.00),

(13, 1, 2, 2790.00),
(13, 5, 1, 2890.00),

(14, 11, 2, 2790.00),
(14, 8, 2, 990.00),

(15, 10, 1, 1890.00);

COMMIT;
