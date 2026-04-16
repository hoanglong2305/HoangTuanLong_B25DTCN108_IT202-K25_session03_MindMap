CREATE DATABASE shop_clothes;
USE shop_clothes;

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

DROP TABLE products;
CREATE TABLE products(
	id_product VARCHAR(50) PRIMARY KEY,
    name_product VARCHAR(50) NOT NULL,
    size ENUM('S','M','L','XL'),
    price_product DECIMAL(10,2)
);

INSERT INTO products
VALUES ('P01','Áo sơ mi trắng','L',250000),
('P02','Quần Jean xanh','M',450000),
('P03','Áo thun Basic','XL',150000),
('P04','Áo hoodie',NULL,-200000);

UPDATE products
SET price_product = 400000
WHERE id_product = "P02";

UPDATE products
SET price_product = price_product * 1.1;

SELECT * FROM products;

DELETE FROM products
WHERE id_product = "P03";

SELECT * FROM products;
SELECT name_product, size FROM products;
SELECT * FROM products WHERE price_product > 300000;