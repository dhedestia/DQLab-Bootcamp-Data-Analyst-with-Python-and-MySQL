USE dqlabmartbasic;



# Filtering with WHERE:

SELECT * FROM ms_produk_dqlab
WHERE nama_produk = 'Gantungan Kunci DQLab';

SELECT * FROM ms_produk_dqlab
WHERE nama_produk IN ('Gantungan Kunci DQLab', 'Tas Travel Organizer Digiskills.id');

SELECT * FROM ms_produk_dqlab
WHERE nama_produk = 'Gantungan Kunci DQLab' OR nama_produk = 'Buku Planner Agenda DQLab'
OR nama_produk = 'Flashdisk DQLab 32 GB';

SELECT * FROM ms_produk_dqlab
WHERE harga < 50000;

SELECT * FROM ms_produk_dqlab
WHERE harga > 50000;

SELECt * FROM ms_produk_dqlab
WHERE nama_produk = 'Sticky Notes DQLab 500 sheets' AND harga > 50000;

SELECT nama_produk, qty
FROM tr_penjualan_dqlab
WHERE qty>3;

SELECT nama_produk, qty, tgl_transaksi
FROM tr_penjualan_dqlab
WHERE qty>3 AND MONTH(tgl_transaksi)=6;

SELECT nama_produk, qty, tgl_transaksi
FROM tr_penjualan_dqlab
WHERE nama_produk='Flashdisk DQlab 32 GB';

SELECT kode_transaksi, MONTH(tgl_transaksi) AS month_data
FROM tr_penjualan_dqlab
WHERE MONTH(tgl_transaksi)>5;

SELECT *, MONTH(tgl_transaksi) AS month_data
FROM tr_penjualan_dqlab
WHERE qty>2 AND MONTH(tgl_transaksi)>5;

SELECT *, MONTH(tgl_transaksi) AS month_data
FROM tr_penjualan_dqlab
WHERE qty!=2 OR MONTH(tgl_transaksi)>5;



# Filtering with LIKE:

SELECT nama_produk
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'f%';

SELECT nama_produk
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE '_a%';

SELECT kategori_produk
FROM ms_produk_dqlab
WHERE kategori_produk LIKE '%t%';

SELECT kategori_produk
FROM ms_produk_dqlab
WHERE kategori_produk LIKE '%un%';

SELECT nama_produk, qty
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'f%' AND qty>2;

SELECT nama_produk, qty
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'f%' OR qty>2;