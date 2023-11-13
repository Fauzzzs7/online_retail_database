create table pesanan (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nama_pesanan VARCHAR(50) NOT NULL,
total_pesanan FLOAT NOT NULL,
telepon VARCHAR(20) NOT NULL,
email VARCHAR(50) NOT NULL,
alamat VARCHAR(100) NOT NULL,
tanggal_pesan date NOT NULL,
id_pelanggan INT,

FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id) ON DELETE RESTRICT ON UPDATE RESTRICT
);