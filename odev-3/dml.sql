\set VERBOSITY verbose
BEGIN;

-- Zamdan önceki fiyatlar
SELECT name, price
FROM product
WHERE category = 'Sıcak İçecek';

-- Fiyatları 5 TL artır
UPDATE product
SET price = price + 5
WHERE category = 'Sıcak İçecek';

-- Zamdan sonraki fiyatlar
SELECT name, price
FROM product
WHERE category = 'Sıcak İçecek';

-- Olmayan ürünü siparişe ekle
INSERT INTO order_item
VALUES (1, 999, 1);

ROLLBACK;

-- Geri alma işleminden sonraki fiyatlar
SELECT name, price
FROM product
WHERE category = 'Sıcak İçecek';
