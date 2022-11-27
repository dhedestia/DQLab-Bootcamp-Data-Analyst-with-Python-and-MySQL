USE dqlabmartbasic;



SHOW TABLES;



# Prefix:

SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

SELECT ms_produk_dqlab.kode_produk FROm ms_produk_dqlab;



# Prefix with Database and Table Name:

SELECT dqlabmartbasic.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;



# Alias for Column:

SELECT kode_produk AS product_code FROM ms_produk_dqlab;

SELECT no_urut AS nomor, nama_produk AS nama FROM ms_produk_dqlab;



# Alias for Column (without AS):

SELECT kode_produk product_code FROM ms_produk_dqlab;

SELECT no_urut nomor, nama_produk nama FROM ms_produk_dqlab;



# Prefix and Alias for Column:

SELECT ms_produk_dqlab.nama_produk AS nama FROM ms_produk_dqlab;

SELECT ms_produk_dqlab.harga AS harga_jual FROM ms_produk_dqlab;



# Alias for Table:

SELECT * FROM ms_produk_dqlab AS t1;

SELECT * FROM ms_produk_dqlab t1;



# Prefix with Alias Table:

SELECT t1.kode_produk, t1.nama_produk FROM ms_produk_dqlab AS t1;

SELECT t1.kode_produk AS product_code, t1.nama_produk AS product_name FROM ms_produk_dqlab AS t1;

SELECT t2.nama_produk, t2.harga FROM ms_produk_dqlab t2;