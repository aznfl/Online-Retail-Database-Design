SELECT product.product_id, product.product_name, SUM(buying.quantity) AS total_pembelian
FROM product, buying
WHERE buying.product_id = product.product_id
GROUP BY product_id
ORDER BY quantity DESC LIMIT 3;

