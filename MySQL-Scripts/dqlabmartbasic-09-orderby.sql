USE dqlabmartbasic;



# ORDER BY:

SELECT * FROM tr_penjualan_dqlab ORDER BY qty; -- default asc

SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty;

SELECT * FROM tr_penjualan_dqlab ORDER BY qty, nama_produk; -- asc order by quantity first, then the name of the product

SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty, nama_produk;

SELECT * FROM tr_penjualan_dqlab ORDER BY qty, tgl_transaksi;

SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan;

SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat;

SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC;

SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC, nama_produk ASC;

SELECT * FROM tr_penjualan_dqlab ORDER BY tgl_transaksi DESC, qty ASC;

SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan DESC;

SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat DESC;

SELECT nama_produk, qty, harga, qty * harga AS total
FROM tr_penjualan_dqlab
ORDER BY qty * harga DESC;

SELECT nama_produk, qty, harga, qty * (harga * (1 - (SELECT diskon_persen  / 100))) AS total
FROM tr_penjualan_dqlab
ORDER BY total DESC;



# ORDER BY and WHERE:

SELECT nama_produk, qty FROM tr_penjualan_dqlab tpd
WHERE nama_produk LIKE 'F%' ORDER BY qty DESC;

SELECT * FROM tr_penjualan_dqlab
WHERE diskon_persen > 0
ORDER BY harga DESC;

SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab tpd
WHERE harga >= 100000
ORDER BY harga DESC;

SELECT nama_produk, qty, harga, diskon_persen FROM tr_penjualan_dqlab
WHERE harga >= 100000 OR nama_produk LIKE 'T%'
ORDER BY diskon_persen DESC;