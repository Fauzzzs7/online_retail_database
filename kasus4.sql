-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir

SELECT pelanggan.nama AS nama_pelanggan, AVG(pesanan.total_pesanan) AS rata_rata_transaksi
FROM pelanggan
JOIN pesanan ON pelanggan.id = pesanan.id_pelanggan
WHERE pesanan.tanggal_pesan >= CURDATE() - INTERVAL 1 MONTH
GROUP BY pelanggan.id;