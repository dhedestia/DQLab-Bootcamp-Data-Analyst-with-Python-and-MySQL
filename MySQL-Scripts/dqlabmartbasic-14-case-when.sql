USE dqlabmartbasic;



# CASE.. WHEN..

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