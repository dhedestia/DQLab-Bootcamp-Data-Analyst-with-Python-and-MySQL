USE dqlabmartbasic;



# JOIN/ INNER JOIN:

-- with SELECT.. FROM.. WHERE.. statement:
SELECT mpel.kode_pelanggan, tpen.kode_transaksi, tpen.tgl_transaksi, mpel.nama_pelanggan 
FROM ms_pelanggan_dqlab AS mpel, tr_penjualan_dqlab AS tpen
WHERE mpel.kode_pelanggan = tpen.kode_pelanggan;

-- with JOIN.. ON.. statement:
SELECT mpel.kode_pelanggan, tpen.kode_transaksi, tpen.tgl_transaksi, mpel.nama_pelanggan 
FROM ms_pelanggan_dqlab AS mpel
JOIN tr_penjualan_dqlab AS tpen
ON mpel.kode_pelanggan = tpen.kode_pelanggan;



# CROSS JOIN (without relationship keys):

-- with SELECT.. FROM.. statement:
SELECT mpel.kode_pelanggan, tpen.kode_transaksi, tpen.tgl_transaksi, mpel.nama_pelanggan 
FROM ms_pelanggan_dqlab AS mpel, tr_penjualan_dqlab AS tpen;

-- with JOIN.. statement:
SELECT mpel.kode_pelanggan, tpen.kode_transaksi, tpen.tgl_transaksi, mpel.nama_pelanggan 
FROM ms_pelanggan_dqlab AS mpel
JOIN tr_penjualan_dqlab AS tpen;



# LEFT JOIN/ LEFT OUTER JOIN:

SELECT tpen.kode_pelanggan, mpel.nama_pelanggan, tpen.qty
FROM tr_penjualan_dqlab AS tpen
LEFT JOIN ms_pelanggan_dqlab AS mpel
ON tpen.kode_pelanggan = mpel.kode_pelanggan;



# RIGHT JOIN/ RIGHT OUTER JOIN:

SELECT tpen.kode_pelanggan, mpel.nama_pelanggan, tpen.qty
FROM tr_penjualan_dqlab AS tpen
RIGHT JOIN ms_pelanggan_dqlab AS mpel
ON tpen.kode_pelanggan = mpel.kode_pelanggan;



# LEFT JOIN/ LEFT OUTER JOIN with 3 Tables:

SELECT
	tpen.kode_pelanggan,
	mpel.nama_pelanggan,
	mpro.kategori_produk,
	mpro.nama_produk,
	tpen.qty
FROM ms_pelanggan_dqlab AS mpel
LEFT JOIN tr_penjualan_dqlab AS tpen
ON mpel.kode_pelanggan = tpen.kode_pelanggan
LEFT JOIN ms_produk_dqlab AS mpro
ON mpro.kode_produk = tpen.kode_produk;



# LEFT JOIN/ LEFT OUTER JOIN with ORDER BY:

SELECT
	tpen.kode_pelanggan,
	mpel.nama_pelanggan,
	mpro.kategori_produk,
	mpro.nama_produk,
	tpen.qty
FROM ms_pelanggan_dqlab AS mpel
LEFT JOIN tr_penjualan_dqlab AS tpen
ON mpel.kode_pelanggan = tpen.kode_pelanggan
LEFT JOIN ms_produk_dqlab AS mpro
ON mpro.kode_produk = tpen.kode_produk
ORDER BY qty DESC;



# LEFT JOIN/ LEFT OUTER JOIN with GROUP BY and ORDER BY:

SELECT
	mpro.kategori_produk,
	mpro.nama_produk,
	SUM(tpen.qty) AS qty
FROM ms_pelanggan_dqlab AS mpel
LEFT JOIN tr_penjualan_dqlab AS tpen
ON mpel.kode_pelanggan = tpen.kode_pelanggan
LEFT JOIN ms_produk_dqlab AS mpro
ON mpro.kode_produk = tpen.kode_produk
GROUP BY mpro.kategori_produk, mpro.nama_produk 
ORDER BY qty DESC;



# UNION:

SELECT kode_produk, nama_produk FROM ms_produk_dqlab 
UNION
SELECT kode_pelanggan, nama_pelanggan FROM ms_pelanggan_dqlab;



# UNION with Literal:

SELECT 'produk' AS kategori, nama_produk AS nama FROM ms_produk_dqlab
UNION
SELECT 'pelanggan' AS orang , nama_pelanggan FROM ms_pelanggan_dqlab;



# UNION with Same Column and Table:

SELECT kode_produk, nama_produk FROM ms_produk_dqlab
UNION
SELECT kode_produk, nama_produk FROM ms_produk_dqlab; -- UNION will not duplicate the results/ unique



# UNION with Same Column but Different Table:

SELECT nama_produk FROM ms_produk_dqlab
UNION
SELECT nama_produk FROM tr_penjualan_dqlab; -- will have unique result/ no duplicate



# UNION with WHERE statement:

SELECT kode_pelanggan  FROM ms_pelanggan_dqlab WHERE kode_pelanggan = 'dqlabcust03'
UNION -- note: column size should be same
SELECT kode_pelanggan FROM tr_penjualan_dqlab WHERE kode_pelanggan = 'dqlabcust03'; 



# UNION ALL:
SELECT kode_produk, nama_produk FROM ms_produk_dqlab
UNION ALL
SELECT kode_produk, nama_produk FROM ms_produk_dqlab; -- will show all data/ with duplicate

SELECT nama_produk FROM ms_produk_dqlab
UNION ALL
SELECT nama_produk FROM tr_penjualan_dqlab;



# Mini Quiz:

-- INNER JOIN:
SELECT DISTINCT mpel.kode_pelanggan, mpel.nama_pelanggan, mpel.alamat 
FROM ms_pelanggan_dqlab AS mpel
JOIN tr_penjualan_dqlab AS tpen
ON mpel.kode_pelanggan = tpen.kode_pelanggan
WHERE tpen.nama_produk IN ('Kotak Pensil DQLab', 'Flashdisk DQLab 32 GB', 'Sticky Notes DQLab 500 sheets');

-- UNION:
SELECT kode_produk, nama_produk, harga FROM ms_produk_dqlab WHERE harga < 100000
UNION
SELECT kode_produk, nama_produk, harga FROM tr_penjualan_dqlab WHERE harga < 50000;