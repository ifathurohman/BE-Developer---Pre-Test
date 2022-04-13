-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.18-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for rest_server
CREATE DATABASE IF NOT EXISTS `rest_server` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `rest_server`;

-- Dumping structure for table rest_server.jenis_kendaraan
CREATE TABLE IF NOT EXISTS `jenis_kendaraan` (
  `jenis_id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_kendaraan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jenis_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rest_server.jenis_kendaraan: ~2 rows (approximately)
/*!40000 ALTER TABLE `jenis_kendaraan` DISABLE KEYS */;
INSERT IGNORE INTO `jenis_kendaraan` (`jenis_id`, `jenis_kendaraan`) VALUES
	(1, 'mobil'),
	(2, 'motor');
/*!40000 ALTER TABLE `jenis_kendaraan` ENABLE KEYS */;

-- Dumping structure for table rest_server.merk_kendaraan
CREATE TABLE IF NOT EXISTS `merk_kendaraan` (
  `merk_id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_id` int(11) DEFAULT NULL,
  `merk_kendaraan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`merk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rest_server.merk_kendaraan: ~6 rows (approximately)
/*!40000 ALTER TABLE `merk_kendaraan` DISABLE KEYS */;
INSERT IGNORE INTO `merk_kendaraan` (`merk_id`, `jenis_id`, `merk_kendaraan`) VALUES
	(1, 1, 'toyota'),
	(2, 1, 'daihatsu'),
	(3, 1, 'nissan'),
	(4, 2, 'honda'),
	(5, 2, 'yamaha'),
	(6, 2, 'suzuki');
/*!40000 ALTER TABLE `merk_kendaraan` ENABLE KEYS */;

-- Dumping structure for table rest_server.type_kendaraan
CREATE TABLE IF NOT EXISTS `type_kendaraan` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `merk_id` int(11) DEFAULT NULL,
  `type_kendaraan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rest_server.type_kendaraan: ~12 rows (approximately)
/*!40000 ALTER TABLE `type_kendaraan` DISABLE KEYS */;
INSERT IGNORE INTO `type_kendaraan` (`type_id`, `merk_id`, `type_kendaraan`) VALUES
	(1, 1, 'avanza'),
	(2, 1, 'innova'),
	(3, 2, 'xenia'),
	(4, 2, 'ayla'),
	(5, 3, 'juke'),
	(6, 3, 'livina'),
	(7, 4, 'vario'),
	(8, 4, 'cbr'),
	(9, 5, 'mio'),
	(10, 5, 'r15'),
	(11, 6, 'spin'),
	(12, 6, 'satria');
/*!40000 ALTER TABLE `type_kendaraan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
