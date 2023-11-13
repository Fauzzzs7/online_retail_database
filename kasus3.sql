-- Melihat Kategori barang yang paling banyak barangnya

SELECT kategori.nama AS nama_kategori, COUNT(produk.id) AS jumlah_barang
FROM kategori
JOIN kategori_produk ON kategori.id = kategori_produk.id_kategori
JOIN produk ON kategori_produk.id_produk = produk.id
GROUP BY kategori.id
ORDER BY jumlah_barang DESC
LIMIT 1;
