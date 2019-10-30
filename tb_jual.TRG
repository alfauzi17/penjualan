TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `jual_barang` AFTER INSERT ON `tb_jual` FOR EACH ROW BEGIN\n UPDATE tb_stok\n SET jumlah = jumlah - NEW.jumlah\n WHERE\n kd_barang = NEW.kd_barang;\n END' 'CREATE DEFINER=`root`@`localhost` TRIGGER `batal_jual` AFTER UPDATE ON `tb_jual` FOR EACH ROW UPDATE tb_stok\nSET jumlah = jumlah + OLD.jumlah\nWHERE\nkd_barang = OLD.kd_barang'
sql_modes=1098907648 1098907648
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
created=157240002795 157240018341
