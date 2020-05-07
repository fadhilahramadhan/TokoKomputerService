-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: inf.co.id    Database: infcoid_db_komputer
-- ------------------------------------------------------
-- Server version	5.6.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `l_merk`
--

DROP TABLE IF EXISTS `l_merk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_merk` (
  `merk_id` int(11) NOT NULL AUTO_INCREMENT,
  `merk` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`merk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l_merk`
--

LOCK TABLES `l_merk` WRITE;
/*!40000 ALTER TABLE `l_merk` DISABLE KEYS */;
INSERT INTO `l_merk` VALUES (1,'Acer'),(2,'Asus'),(3,'Lenovo'),(4,'Hp'),(5,'Dell'),(6,'Axio'),(7,'Apple'),(8,'jsj'),(9,'1'),(10,'');
/*!40000 ALTER TABLE `l_merk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l_status_transaksi`
--

DROP TABLE IF EXISTS `l_status_transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_status_transaksi` (
  `status_transaksi_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_transaksi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`status_transaksi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l_status_transaksi`
--

LOCK TABLES `l_status_transaksi` WRITE;
/*!40000 ALTER TABLE `l_status_transaksi` DISABLE KEYS */;
INSERT INTO `l_status_transaksi` VALUES (1,'Dibayar'),(2,'Dikirim'),(3,'Selesai');
/*!40000 ALTER TABLE `l_status_transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_barang`
--

DROP TABLE IF EXISTS `t_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_barang` (
  `barang_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(105) DEFAULT NULL,
  `harga` decimal(20,0) DEFAULT NULL,
  `merk_id` int(11) DEFAULT NULL,
  `kondisi` varchar(10) DEFAULT NULL,
  `spesifikasi` longtext,
  `deskripsi` longtext,
  `gambar` longtext,
  PRIMARY KEY (`barang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_barang`
--

LOCK TABLES `t_barang` WRITE;
/*!40000 ALTER TABLE `t_barang` DISABLE KEYS */;
INSERT INTO `t_barang` VALUES (1,'Acer Predator Nitro 5',12649000,1,'Baru','i5-8300H GTX1050 8GB 128GB 1TB W10','Laptop baru merek Acer cepetan bli','acer.png'),(2,'ASUS X441UB I3-6006U',6040000,2,'Baru','4GB / 1TB / MX110 2GB / 14\" / WIN 10 ORI','Laptop baru merek Asus cepetan bli','asus.jpeg'),(3,'Lenovo V310 i5',7550000,3,'Baru','Windows 10/Intel Core i5/ 4GB/ 8GB/ 500GB/ Intel HD / AMD Radeon','Laptop moncer gaes','lenovo.jpg'),(4,'HP 14-an017AU AMD',3600000,4,'Baru','Memory 2GB/500GB/HP/AMD Radeon','Laptop joss','hp.jpg'),(5,'CPU Office',2335000,5,'Baru','Intel Core 2 Duo E7500, Ram 2Gb Ddr3, Hdd','CPU office harga bersahabat','intelcore2.jpg'),(6,'CPU corei5',3655000,6,'Baru','PC Rakitan i5/CPU Core i5/DDR 8GB/VGA GT1030 2GB','CPU berkecepatan tinggi','corei5.jpg'),(7,'CPU CORE I5 NEW Desain Grafic Gaming',1995000,7,'Baru','Motherboard Intel H55/Procesor Core i5 650/660/Memory DDR 3 4Gb/ Hardisk 250 gb sata 7200 tpm','CPU Gaming/Desain Grafis','cpugaming.jpg'),(8,'Dell Optiplex 7050 Micro Core i7',11000000,5,'Baru','Intel Core i7-7700T, 8GB DDR4, 256GB Solid State Drive, Windows 10 Pro (T6H1F), Wifi.','ondisi Baru Gress, Bonus Keyboard dan Mouse Original Dell.','dell.jpg');
/*!40000 ALTER TABLE `t_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_favorit`
--

DROP TABLE IF EXISTS `t_favorit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_favorit` (
  `favorit_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`favorit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_favorit`
--

LOCK TABLES `t_favorit` WRITE;
/*!40000 ALTER TABLE `t_favorit` DISABLE KEYS */;
INSERT INTO `t_favorit` VALUES (8,NULL,1,'2018-11-26'),(9,0,2,'2018-11-26'),(15,9,2,'2018-11-27'),(18,9,1,'2018-11-29'),(19,9,3,'2018-11-29'),(20,13,1,'2018-11-29'),(21,13,4,'2018-11-29'),(30,20,1,'2018-12-06');
/*!40000 ALTER TABLE `t_favorit` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`infcoid_pengguna`@`%`*/ /*!50003 TRIGGER `infcoid_db_komputer`.`t_favorit_BEFORE_INSERT` BEFORE INSERT ON `t_favorit` FOR EACH ROW
BEGIN
SET NEW.tanggal = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_feedback`
--

DROP TABLE IF EXISTS `t_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(145) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `keranjang_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_feedback`
--

LOCK TABLES `t_feedback` WRITE;
/*!40000 ALTER TABLE `t_feedback` DISABLE KEYS */;
INSERT INTO `t_feedback` VALUES (7,'harga laptop terlalu murah :3 bisa di mahalin gk?',13,3,60,'2018-11-29'),(8,'kok yg dateng barangnya predator helios 500 :3 gk bisa gitu dong',13,1,61,'2018-11-30'),(9,'Barang sudah sampai, barangnya juga bagus\ntapi bohong :v',1,3,81,'2018-12-03'),(11,'bagus',20,1,92,'2018-12-06');
/*!40000 ALTER TABLE `t_feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`infcoid_pengguna`@`%`*/ /*!50003 TRIGGER `infcoid_db_komputer`.`t_feedback_BEFORE_INSERT` BEFORE INSERT ON `t_feedback` FOR EACH ROW
BEGIN
SET NEW.tanggal = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_keranjang`
--

DROP TABLE IF EXISTS `t_keranjang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_keranjang` (
  `keranjang_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` decimal(20,0) DEFAULT NULL,
  `tanggal` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `transaksi_id` int(11) DEFAULT NULL,
  `status_transaksi_id` int(11) DEFAULT '0',
  PRIMARY KEY (`keranjang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_keranjang`
--

LOCK TABLES `t_keranjang` WRITE;
/*!40000 ALTER TABLE `t_keranjang` DISABLE KEYS */;
INSERT INTO `t_keranjang` VALUES (59,13,3,9,67950000,'2018-11-29 22:38:14',1,18,0),(60,13,3,16,120800000,'2018-11-29 22:41:54',1,18,3),(61,13,1,3,37947000,'2018-11-29 22:42:33',1,19,3),(62,13,4,1,3600000,'2018-11-29 22:43:06',0,NULL,0),(63,13,1,1,12649000,'2018-11-29 22:48:14',0,NULL,0),(64,13,3,2,15100000,'2018-11-29 22:48:19',0,NULL,0),(67,14,4,4,14400000,'2018-11-30 00:22:03',1,20,2),(81,1,3,2,15100000,'2018-12-03 23:16:06',1,36,3),(86,1,6,1,3655000,'2018-12-03 23:43:52',1,42,1),(87,1,1,1,12649000,'2018-12-03 23:43:59',1,42,2),(92,20,1,2,25298000,'2018-12-06 09:23:18',1,45,3),(93,20,2,4,24160000,'2018-12-06 09:23:35',1,45,1),(94,13,5,1,2335000,'2018-12-18 10:38:34',0,NULL,0);
/*!40000 ALTER TABLE `t_keranjang` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`infcoid_pengguna`@`%`*/ /*!50003 TRIGGER `infcoid_db_komputer`.`t_keranjang_BEFORE_INSERT` BEFORE INSERT ON `t_keranjang` FOR EACH ROW
BEGIN
SET NEW.total = NEW.jumlah*(SELECT harga FROM t_barang WHERE barang_id = NEW.barang_id);
    SET NEW.tanggal = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`infcoid_pengguna`@`%`*/ /*!50003 TRIGGER `infcoid_db_komputer`.`t_keranjang_BEFORE_UPDATE` BEFORE UPDATE ON `t_keranjang` FOR EACH ROW
BEGIN
SET NEW.total = NEW.jumlah*(SELECT harga FROM t_barang WHERE barang_id = NEW.barang_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_transaksi`
--

DROP TABLE IF EXISTS `t_transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_transaksi` (
  `transaksi_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `total` decimal(20,0) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `jasa_pengiriman` varchar(45) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`transaksi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_transaksi`
--

LOCK TABLES `t_transaksi` WRITE;
/*!40000 ALTER TABLE `t_transaksi` DISABLE KEYS */;
INSERT INTO `t_transaksi` VALUES (18,13,7550000,'BRI','JNE','2018-11-29'),(19,13,12649000,'BRI','JNE','2018-11-29'),(20,14,14400000,'BRI','JNE','2018-11-30'),(36,1,15100000,'BRI','JNE','2018-12-03'),(42,1,16304000,'BRI','JNE','2018-12-03'),(45,20,49458000,'BRI','JNE','2018-12-06');
/*!40000 ALTER TABLE `t_transaksi` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`infcoid_pengguna`@`%`*/ /*!50003 TRIGGER `infcoid_db_komputer`.`t_transaksi_BEFORE_INSERT` BEFORE INSERT ON `t_transaksi` FOR EACH ROW
BEGIN
	SET NEW.tanggal = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`infcoid_pengguna`@`%`*/ /*!50003 TRIGGER `infcoid_db_komputer`.`t_transaksi_AFTER_INSERT` AFTER INSERT ON `t_transaksi` FOR EACH ROW
BEGIN
	UPDATE t_keranjang SET transaksi_id = NEW.transaksi_id WHERE user_id = NEW.user_id AND status = 0;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(145) DEFAULT NULL,
  `nohp` varchar(45) DEFAULT NULL,
  `alamat_lengkap` varchar(45) DEFAULT NULL,
  `provinsi` varchar(45) DEFAULT NULL,
  `kab_kota` varchar(45) DEFAULT NULL,
  `kecamatan` varchar(45) DEFAULT NULL,
  `userlevel` int(11) DEFAULT '1',
  `tanggal_daftar` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'Fadhilah Ramadhan','fadhilahramadhan3@gmail.com','a74f4a24520a6336e0929691eb5c7a64','085324274910','sssss','sini','situ','sana',1,'2018-11-26 17:36:40'),(9,'coba','coba@gmail.com','c3ec0f7b054e729c5a716c8125839829','','Ds. Kopyah block konca RT/RW: 02/02 haha','Jawa Barat','Indramayu','Anjatan',1,'2018-11-27 15:27:06'),(10,'saya','saya@gmail.com','20c1a26a55039b30866c9d0aa51953ca',NULL,'ajah\n\n','sana','sini','sama',1,'2018-11-29 01:15:45'),(11,'tiobakpao','tioittirijr@hjak.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL,NULL,1,'2018-11-29 13:32:40'),(12,'t','t','c4ca4238a0b923820dcc509a6f75849b',NULL,NULL,NULL,NULL,NULL,1,'2018-11-29 13:33:30'),(13,'Jejen','intandesti25@gmail.com','988bc39570e11676396dcc44bc505f04','08*******','di samping rumah nobita','jawa barat','indramayu','kandanghaur',1,'2018-11-29 22:36:24'),(14,'adi','dadi@gmail.com','c46335eb267e2e1cde5b017acb4cd799',NULL,'e','jaw','ww','ww',1,'2018-11-30 00:21:47'),(17,'f','f@gmail.com','4124bc0a9335c27f086f24ba207a4912',NULL,'a','a','a','a',1,'2018-12-03 23:23:46'),(19,'admin','admin@gmail.com','21232f297a57a5a743894a0e4a801fc3',NULL,NULL,NULL,NULL,NULL,0,'2018-12-06 07:36:29'),(20,'fadil','fadil@gmail.com','c46335eb267e2e1cde5b017acb4cd799','0000000','tegal','jateng','tegal','tegal',1,'2018-12-06 09:21:57');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`infcoid_pengguna`@`%`*/ /*!50003 TRIGGER `infcoid_db_komputer`.`t_user_BEFORE_INSERT` BEFORE INSERT ON `t_user` FOR EACH ROW
BEGIN
	SET NEW.tanggal_daftar = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'infcoid_db_komputer'
--

--
-- Dumping routines for database 'infcoid_db_komputer'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-19 21:44:17
