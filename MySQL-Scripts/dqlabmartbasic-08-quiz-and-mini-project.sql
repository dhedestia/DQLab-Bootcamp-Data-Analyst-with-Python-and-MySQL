USE dqlabmartbasic;



# Quiz 1:
-- The sales team wants to analyze all of the customer data in dqlabmartbasic database,
-- query all of the existing customer name and customer id from the database using alias without as.
SELECT nama_pelanggan nama, kode_pelanggan kode
FROM ms_pelanggan_dqlab;



# Quiz 2:
-- The sales team wants to see the list of nama_produk and harga from each of the product,
-- query all of the existing nama_produk and harga from dqlabmartbasic database where nama_produk should be changed to be
-- product and harga should be changed to be price using prefix.
SELECT ms_produk_dqlab.nama_produk AS product, ms_produk_dqlab.harga AS price
FROM ms_produk_dqlab;



# Quiz 3:
-- The marketing team wants to see the historical data from the transaction for each of a day,
-- query all of the transaction for each day including the name of the product and quantity.
SELECT DAY(tgl_transaksi) AS date, nama_produk, qty
FROM tr_penjualan_dqlab;



# Mini Project:
-- Prepare all of the transaction data with total revenue >= IDR 100.000.
-- The data that should to be showed are: kode_pelanggan, nama_produk, qty, harga, and total (after discount),
-- and please to order from the biggest total revenue.
-- Query the data from tr_penjualan_dqlab table.
SELECT kode_pelanggan, nama_produk, qty, harga, qty * (harga * (1 - (SELECT diskon_persen  / 100))) AS total
FROM tr_penjualan_dqlab
WHERE qty * (harga * (1 - (SELECT diskon_persen  / 100))) >= 100000
ORDER BY total DESC;