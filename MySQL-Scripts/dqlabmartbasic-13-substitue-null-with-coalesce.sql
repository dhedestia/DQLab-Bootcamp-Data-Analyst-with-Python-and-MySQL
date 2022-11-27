USE dqlabmartbasic;



# Without COALESCE:
SELECT tpen.kode_pelanggan, mpel.nama_pelanggan, tpen.qty
FROM tr_penjualan_dqlab AS tpen
RIGHT JOIN ms_pelanggan_dqlab AS mpel
ON tpen.kode_pelanggan = mpel.kode_pelanggan;



# Substitue NULL value with COALESCE:
SELECT COALESCE(tpen.kode_pelanggan,'NO TRANSACTION') AS kode_pelanggan, mpel.nama_pelanggan, COALESCE(tpen.qty, 0) AS qty
FROM tr_penjualan_dqlab AS tpen
RIGHT JOIN ms_pelanggan_dqlab AS mpel
ON tpen.kode_pelanggan = mpel.kode_pelanggan;