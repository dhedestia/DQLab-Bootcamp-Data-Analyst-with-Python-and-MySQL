USE dqlabmartbasic;



# Arithmetic Operator:

SELECT 5+2 AS hasil_penjumlahan,
5-2 AS hasil_pengurangan,
5*2 AS hasil_perkalian,
5/2 AS hasil_pembagian_1, -- result is decimal
5 DIV 2 AS hasil_pembagian_2, -- round the number down
5%2 AS sisa_pembagian_1,
5 MOD 2 AS sisa_pembagian_2;

SELECT 4*2,
(4*8)%7,
(4*8) MOD 7;

SELECT nama_produk,
qty,
harga,
qty*harga AS total_beli # Remember! alias column can't be used for aritmetic operation
FROM tr_penjualan_dqlab;



# Comparison Operator:

SELECT 3=3, 'DQLab'='UMN', 4!=3, 4<>3, 5>3, 5<3, 5>=3, 3<=5;

SELECT 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;

SELECT 1=TRUE, 1=FALSE, 5>=5, 5.2=5.20000, NULL=1, NULL=0, NULL=NULL;

SELECT qty>3 FROM tr_penjualan_dqlab;