-- 1 pelanggan membeli 3 barang yang berbeda

SELECT pelanggan.nama AS nama_pelanggan, pesanan.id AS id_pesanan, COUNT(detail_pesanan.id_produk) AS jumlah_barang_dibeli
FROM pelanggan
JOIN pesanan ON pelanggan.id = pesanan.id_pelanggan
JOIN detail_pesanan ON pesanan.id = detail_pesanan.id_pesanan
GROUP BY pelanggan.id, pesanan.id
HAVING jumlah_barang_dibeli = 3;
