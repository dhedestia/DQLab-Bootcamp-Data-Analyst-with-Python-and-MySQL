USE dqlabmartbasic;



# Function:

SELECT POW(3,2),
ROUND(3.14), ROUND(3.54),
ROUND(3.155, 1), ROUND(3.155, 2),
FLOOR(4.28), FLOOR(4.78),
CEILING(4.39), CEILING(4.55);

SELECT NOW(),
YEAR('2022-05-03'),
MONTH('2022-05-03'),
DAY('2022-05-03'),
DATEDIFF('2022-07-22', '2022-05-03'),
DATEDIFF('2022-05-03', '2022-07-22');

SELECT DATEDIFF('2022-07-23', NOW()),
YEAR('2022-07-23'),
MONTH('2022-07-23'),
DAY('2022-07-23'),
YEAR(NOW());

SELECT DATEDIFF (NOW(), tgl_transaksi) FROM tr_penjualan_dqlab;

SELECT DATEDIFF(NOW(), tgl_transaksi) AS jarak_hari_transaksi,
YEAR(tgl_transaksi) AS tahun_transaksi
FROM tr_penjualan_dqlab;
