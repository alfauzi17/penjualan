TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `beli_barang` AFTER INSERT ON `tb_beli` FOR EACH ROW BEGIN\n INSERT INTO tb_stok SET\n kd_barang = NEW.kd_barang, jumlah=NEW.jumlah\n ON DUPLICATE KEY UPDATE jumlah=jumlah+NEW.jumlah;\n END' 'CREATE DEFINER=`root`@`localhost` TRIGGER `batal_beli` BEFORE DELETE ON `tb_beli` FOR EACH ROW UPDATE tb_stok\nSET jumlah = jumlah - OLD.jumlah\nWHERE\nkd_barang = OLD.kd_barang'
sql_modes=1098907648 1098907648
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
created=157239930579 157239989357
