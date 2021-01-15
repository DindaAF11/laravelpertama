-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for dimsum
CREATE DATABASE IF NOT EXISTS `dimsum` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `dimsum`;

-- Dumping structure for table dimsum.barangs
CREATE TABLE IF NOT EXISTS `barangs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dimsum.barangs: ~7 rows (approximately)
/*!40000 ALTER TABLE `barangs` DISABLE KEYS */;
REPLACE INTO `barangs` (`id`, `nama_barang`, `gambar`, `harga`, `stok`, `keterangan`, `created_at`, `updated_at`) VALUES
	(1, 'Paket Dimsum 1', 'dimsum_1.jpg', ' 35000', '3', 'Terbuat dari ikan gabus Isi 10', '2020-11-12 02:50:31', '2020-11-12 02:50:31'),
	(2, 'Paket Dimsum 2', 'dimsum_2.jpg', '30000', '10', 'Terbuat dari ayam Isi 8', '2020-11-12 02:49:31', '2020-11-12 02:49:31'),
	(3, 'Paket Dimsum 3', 'dimsum_3.jpg', '50000', '10', 'Terbuat dari ikan tenggiri Isi 20', '2020-11-12 02:51:29', '2020-11-12 02:51:29'),
	(4, 'Paket Dimsum 4', 'dimsum_4.jpg', '20000', '20', 'Terbuat dari ikan teri Isi 4', '2020-11-12 02:52:44', '2020-11-12 02:52:44'),
	(5, 'Paket Dimsum 5', 'dimsum_5.jpg', '30000', '20', 'Terbuat dari udang dan ikan tenggiri Isi 6', '2020-11-12 02:54:30', '2020-11-12 02:54:30'),
	(6, 'Paket Dimsum 6', 'dimsum_6.jpg', '130000', '17', 'Terbuat dari udang dan ikan tenggiri Isi 30', '2020-11-12 02:54:30', '2020-11-11 19:58:11'),
	(7, 'Paket Dimsum 7', 'dimsum_7.jpg', '20000', '120', 'Terbuat dari ikan  tongkol Isi 8', '2020-11-12 02:56:45', '2020-11-12 02:56:45');
/*!40000 ALTER TABLE `barangs` ENABLE KEYS */;

-- Dumping structure for table dimsum.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dimsum.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_11_14_012420_create_barangs_table', 1),
	(4, '2019_11_14_012711_create_pesanans_table', 1),
	(5, '2019_11_14_012822_create_pesanan_details_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table dimsum.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dimsum.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table dimsum.pesanans
CREATE TABLE IF NOT EXISTS `pesanans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dimsum.pesanans: ~0 rows (approximately)
/*!40000 ALTER TABLE `pesanans` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesanans` ENABLE KEYS */;

-- Dumping structure for table dimsum.pesanan_details
CREATE TABLE IF NOT EXISTS `pesanan_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dimsum.pesanan_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `pesanan_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesanan_details` ENABLE KEYS */;

-- Dumping structure for table dimsum.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dimsum.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'wahyudi', 'wahyudifajar89@yahoo.com', NULL, '$2y$10$QLPpYihylZhl/4lH/NG4tON4Y32E98.xL0RNKiQRzictP2s/wsXDe', NULL, NULL, 'gAqk2aBCpfQ1n1gBtJSKxnYJNm9MFNGzlOmI6Hs7AaF97gmRHToIaKr0a9Ky', '2020-11-11 17:19:49', '2020-11-11 17:19:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
