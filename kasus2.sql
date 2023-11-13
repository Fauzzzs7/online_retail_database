-- Melihat 3 produk yang paling sering dibeli oleh pelanggan

SELECT produk.nama AS nama_produk, COUNT(detail_pesanan.id_produk) AS jumlah_pembelian
FROM produk
JOIN detail_pesanan ON produk.id = detail_pesanan.id_produk
GROUP BY produk.id
ORDER BY jumlah_pembelian DESC
LIMIT 3;
