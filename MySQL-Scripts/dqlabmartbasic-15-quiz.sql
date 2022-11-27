USE dqlabmartbasic;



# Case 1:
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;



# Case 2:
SELECT nama_produk, harga FROM ms_produk_dqlab;



# Case 3:
SELECT * FROM ms_produk_dqlab
WHERE nama_produk = 'Flashdisk DQLab 32 GB' AND harga > 15000;



# Case 4 (1):
SELECT * FROM ms_produk_dqlab
WHERE nama_produk = 'Flashdisk DQLab 84 GB'
OR nama_produk = 'Tas Travel Organizer Digiskills.id'
OR nama_produk = 'Gantungan Kunci DQLab';

# Case 4 (2):
SELECT * FROM ms_produk_dqlab
WHERE nama_produk IN ('Flashdisk DQLab 84 GB', 'Tas Travel Organizer Digiskills.id', 'Gantungan Kunci DQLab');



# Case 5:
SELECT * FROM ms_produk_dqlab WHERE harga < 50000;



# Case 6:
SELECT kode_pelanggan, nama_produk, qty, harga, qty * harga AS total
FROM tr_penjualan_dqlab
WHERE qty * harga >= 200000
ORDER BY total DESC;



# Case 7:
SELECT
	kode_pelanggan,
	SUM(qty) AS total_qty,
	SUM(harga) AS total_harga,
	MOD(qty, 3) AS sisa_quantity
FROM tr_penjualan_dqlab
GROUP BY kode_pelanggan;



# Case 8:
SELECT
	kode_transaksi,
	tgl_transaksi,
	no_urut,
	nama_produk,
	CONCAT(kode_produk, ' ', nama_produk) AS kode_produk_namaproduk
FROM tr_penjualan_dqlab
WHERE qty = 5;



# Case 9:
SELECT
	nama_pelanggan,
	SUBSTRING_INDEX(nama_pelanggan, ',', 1) AS nama_tanpa_gelar,
	SUBSTRING_INDEX(nama_pelanggan, ' ', 1) AS nama_panggilan
FROM ms_pelanggan_dqlab
WHERE kode_pelanggan IN ('dqlabcust01', 'dqlabcust10');



# Case 10:
SELECT nama_pelanggan, SUBSTRING(nama_pelanggan, 2, 3) AS initial
FROM ms_pelanggan_dqlab;



# Case 11:
SELECT	
	nama_pelanggan,
	SUBSTRING(nama_pelanggan, 2 ,3) AS initial,
	CHAR_LENGTH(nama_pelanggan) AS Total_char
FROM  ms_pelanggan_dqlab;



# Case 12:
SELECT
	nama_pelanggan,
	REPLACE(nama_pelanggan, 'Pelanggan Non Member', 'Not Member') AS new_revisi_pelanggan,
	SUBSTRING(nama_pelanggan, 2, 3) AS initial,
	CHAR_LENGTH (nama_pelanggan) AS Total_Char
FROM ms_pelanggan_dqlab;



# Case 13:
SELECT
	nama_pelanggan,
	UPPER(nama_pelanggan) AS UPPER_NAMA_PELANGGAN,
	LOWER(nama_pelanggan) AS lower_nama_pelanggan,
	REPLACE(nama_pelanggan, 'Pelanggan Non Member', 'Not Member') AS new_revisi_pelanggan,
	SUBSTRING(nama_pelanggan, 2, 3) AS initial,
	CHAR_LENGTH (nama_pelanggan) AS Total_Char
FROM ms_pelanggan_dqlab;



# Case 14:
SELECT
	kode_pelanggan,
	COUNT(kode_transaksi) AS totaL_order,
	SUM(qty) AS qty,
	SUM(qty * harga) AS revenue
FROM tr_penjualan_dqlab
GROUP BY kode_pelanggan;



# Case 15:
SELECT
	kode_pelanggan,
	COUNT(kode_transaksi) AS totaL_order,
	SUM(qty) AS qty,
	SUM(qty * harga) AS revenue,
CASE
	WHEN SUM(qty * harga) >= 900000 THEN 'Target Achieved'
	WHEN SUM(qty * harga) <= 850000 THEN 'Less Performed'
	ELSE 'Follow Up'
END AS remark
FROM tr_penjualan_dqlab
GROUP BY kode_pelanggan;



# Case 16:
SELECT
	kode_transaksi,
	kode_pelanggan,
	kode_produk,
	nama_produk,
	harga,
	qty,
	(harga * qty) AS total
FROM tr_penjualan_dqlab
ORDER BY harga DESC;



# Case 17:
SELECT nama_produk, no_urut FROM tr_penjualan_dqlab
UNION ALL
SELECT nama_produk, no_urut FROM tr_penjualan_dqlab;



# Case 18:
SELECT nama_produk, no_urut FROM tr_penjualan_dqlab
UNION
SELECT nama_produk, no_urut FROM tr_penjualan_dqlab;



# Case 19:
SELECT mpel.kode_pelanggan, mpel.nama_pelanggan, mpel.alamat, mpro.nama_produk  
FROM ms_pelanggan_dqlab AS mpel, ms_produk_dqlab AS mpro
WHERE mpro.nama_produk IN ('Kotak Pensil DQLab', 'Flashdisk DQLab 32 GB', 'Sticky Notes DQLab 500 sheets');




# Case 20:
SELECT
	nama_produk,
	tgl_transaksi,
	DATEDIFF(CURRENT_DATE(), tgl_transaksi) AS days_aging
FROM tr_penjualan_dqlab;



# Case 21:
SELECT
	nama_produk,
	tgl_transaksi,
	YEAR(tgl_transaksi) AS year_date,
	MONTH(tgl_transaksi) AS month_date,
	DAY(tgl_transaksi) AS day_date,
	DATEDIFF(CURRENT_DATE(), tgl_transaksi) AS days_aging
FROM tr_penjualan_dqlab;



# Case 22:
SELECT
	nama_produk,
	tgl_transaksi,
	YEAR(tgl_transaksi) AS year_date,
	MONTH(tgl_transaksi) AS month_date,
	DAY(tgl_transaksi) AS day_date,
	DATEDIFF(NOW(), tgl_transaksi) AS days_aging
FROM tr_penjualan_dqlab;



# Case 23:
SELECT 
	nama_produk,
	tgl_transaksi,
	YEAR(tgl_transaksi) AS year_date,
	MONTHNAME(tgl_transaksi) AS month_date,
	DAYNAME(tgl_transaksi) AS day_date,
	TIMESTAMPDIFF(YEAR, tgl_transaksi, NOW()) AS year_aging,
	TIMESTAMPDIFF(MONTH, tgl_transaksi, NOW()) AS month_aging,
	TIMESTAMPDIFF(DAY, tgl_transaksi, NOW()) AS days_aging
FROM tr_penjualan_dqlab;