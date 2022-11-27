USE dqlabmartbasic;



# GROUP BY:

SELECT nama_produk FROM tr_penjualan_dqlab GROUP BY nama_produk;

SELECT nama_produk, qty FROM tr_penjualan_dqlab GROUP BY nama_produk, qty;

SELECT nama_produk, diskon_persen FROM tr_penjualan_dqlab GROUP BY nama_produk, diskon_persen;

SELECT nama_produk, SUM(qty) FROM tr_penjualan_dqlab GROUP BY nama_produk;

SELECT nama_produk, SUM(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY SUM(qty) DESC;



# GROUP BY with HAVING (for data aggregate):

SELECT nama_produk, SUM(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) > 2
ORDER BY SUM(qty) DESC;

SELECT nama_produk, SUM(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) > 4
ORDER BY SUM(qty) DESC;

SELECT nama_produk, SUM(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) = 9;

SELECT nama_produk, SUM(qty * (harga * (1 - (SELECT diskon_persen  / 100)))) AS total_jual
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty * (harga * (1 - (SELECT diskon_persen  / 100))) > 100000)
ORDER BY total_jual DESC;