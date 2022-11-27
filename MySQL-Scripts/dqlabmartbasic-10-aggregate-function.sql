USE dqlabmartbasic;



# Aggregate Function:

SELECT SUM(qty) FROM tr_penjualan_dqlab;

SELECT COUNT(*) FROM tr_penjualan_dqlab; -- will count all the rows number

SELECT COUNT(DISTINCT nama_produk) FROM tr_penjualan_dqlab; -- will count with the unique number

SELECT COUNT(*), COUNT(DISTINCT nama_produk) FROM tr_penjualan_dqlab;

SELECT SUM(qty), COUNT(*) FROM tr_penjualan_dqlab;

SELECT AVG(qty), MAX(qty), MIN(qty) FROM tr_penjualan_dqlab;

SELECT nama_produk, MAX(qty) -- this will only show the product which has the max qty of the entire data
FROM tr_penjualan_dqlab; -- use group by if want to show all the products with max qty