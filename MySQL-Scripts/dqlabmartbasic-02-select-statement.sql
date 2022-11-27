USE dqlabmartbasic;



SHOW TABLES;



# SELECT Statement:

SELECT * FROM ms_produk_dqlab;

SELECT nama_produk FROM ms_produk_dqlab;

SELECT kode_produk, nama_produk FROM ms_produk_dqlab;

SELECT nama_produk, harga FROM ms_produk_dqlab;

SELECT nama_produk FROM ms_produk_dqlab LIMIT 3;

SELECT nama_produk, harga FROM ms_produk_dqlab LIMIT 5;

SELECT * FROM tr_penjualan_dqlab;

SELECT * FROM ms_pelanggan_dqlab;



# SELECT DISTINCT Statement:

SELECT DISTINCT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;