-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.1.37-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- membuang struktur untuk table ngb.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ngb.contacts: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`, `fullname`, `email`, `mobile_number`, `order_size`, `country`, `state`, `message`, `created_at`, `updated_at`) VALUES
	(2, 'abu', 'abu@email.id', '1', '1', 'indonesia', NULL, 'asdasd', '2019-03-16 02:58:56', '2019-03-16 02:58:56');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- membuang struktur untuk table ngb.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ngb.migrations: ~8 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_01_13_001952_create_quotes_table', 1),
	(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
	(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
	(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
	(7, '2016_06_01_000004_create_oauth_clients_table', 2),
	(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
	(9, '2019_03_14_012644_create_contact_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table ngb.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ngb.oauth_access_tokens: ~8 rows (lebih kurang)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('0fe61536bf7957ecb27540ea804eb1239536f5f792568583102253509237ffa07b7f53d220e1b099', 1, 2, NULL, '[]', 0, '2019-02-05 02:55:18', '2019-02-05 02:55:18', '2020-02-05 02:55:18'),
	('14068bf1751aee5186905d3f5e57e89792d66ad36f2f7acaa6cb85c95fd49c0928bd6acfff6d93d4', 1, 2, NULL, '[]', 0, '2019-01-25 08:54:41', '2019-01-25 08:54:41', '2020-01-25 08:54:41'),
	('6086540d91984848f4ecaf40eaa287c6758adc9199c6d15505dc1f68a80c68e400310f6e6ec39a37', 1, 2, NULL, '[]', 0, '2019-01-29 06:55:03', '2019-01-29 06:55:03', '2020-01-29 06:55:03'),
	('963014f54c133c7d309a464d52b4229701ecf75dd19ee9ac7cf0b64bbdc2384f4f5ba4af205e8224', 1, 2, NULL, '[]', 0, '2019-01-23 09:36:23', '2019-01-23 09:36:23', '2020-01-23 09:36:23'),
	('9b2d7a46ce51e0b8fdb0aae48f2638f8e2dfbddc433417573546669674e315b4f675d43cb496ad07', 1, 2, NULL, '[]', 0, '2019-01-29 07:10:38', '2019-01-29 07:10:38', '2020-01-29 07:10:38'),
	('be0f64a135ee1c244a601ca59836c3c7d8472ffee1b7f043d1aebecd756e1914e909e725a3fc1a24', 1, 2, NULL, '[]', 0, '2019-01-24 09:56:56', '2019-01-24 09:56:56', '2020-01-24 09:56:56'),
	('c26ff1944efd2c014ff8cd114af1026f911cac57b8a63b2f35c851d535fa6412b443d8bb118c76f5', 3, 2, NULL, '[]', 0, '2019-02-05 08:01:54', '2019-02-05 08:01:54', '2020-02-05 08:01:54'),
	('f008f7bdfed175779155619f8a1c941d035d443655469d35ba6079f76dfb8110c497a611cca4fe49', 1, 2, NULL, '[]', 0, '2019-01-29 06:54:37', '2019-01-29 06:54:37', '2020-01-29 06:54:37');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- membuang struktur untuk table ngb.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ngb.oauth_auth_codes: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- membuang struktur untuk table ngb.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ngb.oauth_clients: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'W2Hxqzd3fnRbT7ZiSzQ19DModcahU2JDVfPhXAzL', 'http://localhost', 1, 0, 0, '2019-01-23 07:56:30', '2019-01-23 07:56:30'),
	(2, NULL, 'Laravel Password Grant Client', 'BLNbKVgQhno5jhOGlYEUqg0W9JkhY7shjH3fUo6B', 'http://localhost', 0, 1, 0, '2019-01-23 07:56:30', '2019-01-23 07:56:30');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- membuang struktur untuk table ngb.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ngb.oauth_personal_access_clients: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-01-23 07:56:30', '2019-01-23 07:56:30');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- membuang struktur untuk table ngb.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ngb.oauth_refresh_tokens: ~15 rows (lebih kurang)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
	('08d5698ef850e20e7dde9a75712c1ddab777363dcd1d015724b46b72e714c6c6fb247020e5e718c8', '6086540d91984848f4ecaf40eaa287c6758adc9199c6d15505dc1f68a80c68e400310f6e6ec39a37', 0, '2020-01-29 06:55:03'),
	('0d23f9ed2bd67917cec15755105d201e96123eb3db84c4b6a5f7297cae40a78c847b9dcd1184d79d', '18cc1332d63654d328b4e154ab99d3959afbd7845386d047d9e65ad269a6686633b8e6af22aa449d', 0, '2020-02-05 02:12:59'),
	('17e3193272124b879df3dcd0f02f1a6df423427b663c4ad6f95b982d957986fe8ce8ffe53eeda03d', '7368c4275e21c6a481f716c421bb2dceac17f7913e812bf2844001ab4d341222e3b26fe0467a5313', 0, '2020-01-29 07:58:21'),
	('1f9f9157caba06f0a1de700705f807e6bdbb85429328162fac3ecbbd02561a2d1935783df3eb9d09', 'c26ff1944efd2c014ff8cd114af1026f911cac57b8a63b2f35c851d535fa6412b443d8bb118c76f5', 0, '2020-02-05 08:01:54'),
	('32d5c7f36ffaebb7cca96c8b29e59808fe8ec6bc8ac4c3d6fdacc454771e5ba29007474cc54788c8', 'c74667c85c2cdb2ba16695a122d3f485fc5cbef4649e940e9a1e616f22916a366e5f56cdb7cd3201', 0, '2020-02-05 04:01:46'),
	('474fd66bf76c9be2fe90f2387ff381b991c233d0da68deb263d3dce84b521cd4033fe927519d727a', '6f3ce2c64f72920c8cc250fa8be0c745273a15d5dcf8e1b9f44ed342a283004ec9350bfd6a8407a3', 0, '2020-02-05 02:51:14'),
	('52035dc32f298e51c10096dbe0d80b790443311d12e6d1384b99067e3c40ff2f7b4cd5509499716f', '14068bf1751aee5186905d3f5e57e89792d66ad36f2f7acaa6cb85c95fd49c0928bd6acfff6d93d4', 0, '2020-01-25 08:54:41'),
	('5e82380ac5a2ff7ac7b06b38a96238ffa7ec2a61fa996b5dfa0b82ceb20439e5220c2a7fe51ef18e', '6c06a3be1804e4d3a54c260ff00855391922fce0462332e5de5fb195766916c6cd6f80417209216d', 0, '2020-02-16 15:42:48'),
	('7f2cc1cb1ab3c314b7003de4fae805d9d2586b4cbc0d75a89652e31bdb5f776ba0075d4c9f58be0a', '11215816f5d601dea51a5780047a82157adc72eb4e34fe33c84e46605e5b4c4ab287c055a2a2cc34', 0, '2020-02-05 02:52:15'),
	('997e7a767a518303cdd0b88d57642bfea9a407105ef6cd1f390d541d848e899a27ed58c706df33a2', '9b2d7a46ce51e0b8fdb0aae48f2638f8e2dfbddc433417573546669674e315b4f675d43cb496ad07', 0, '2020-01-29 07:10:38'),
	('a02039e6f37428007018dcddfc55fbda6600555475f15fe56659e6b551ee52a60072d53a05f0d3af', 'dc2638d1539fc11044040e86a7a59e63cfc8b7701c58544378fafd7b2a503fe2a2c2c8977d379cd2', 0, '2020-02-05 06:27:28'),
	('b176d760c6e72e2332e9d2a4d35846d208b0127f137d4ae42440a9f220d47e6623b1ca79c9744ef8', '0fe61536bf7957ecb27540ea804eb1239536f5f792568583102253509237ffa07b7f53d220e1b099', 0, '2020-02-05 02:55:18'),
	('b64890969d48bf69b209ee9e24907339e5a8412bda437d7dc103ddca42dd2107f48ba4989125f25a', 'ef3bc1696a7d40d914d4c27b4806d80c73e774992cc932cd0f45dcf1b4828c4ae86cfd597d626d34', 0, '2020-02-05 01:38:55'),
	('ba27eb07ddad2816a10fbbf667da09a801d38a2c48e5c494c322fbe15bd99ae2d5039dd3963211b1', 'be0f64a135ee1c244a601ca59836c3c7d8472ffee1b7f043d1aebecd756e1914e909e725a3fc1a24', 0, '2020-01-24 09:56:57'),
	('c3a809ae5dcc8ead3f3c59077649b10de2d279bbbe664dee0fdbdf132a33aa95fe1f95842c6f3816', '963014f54c133c7d309a464d52b4229701ecf75dd19ee9ac7cf0b64bbdc2384f4f5ba4af205e8224', 0, '2020-01-23 09:36:23'),
	('cb105be283f6f0acc44d924689a673590e354e23079ce04e18cc07d21316b42f76148085374e91f5', 'dd81da8afd7c7b64c0f677b46767da7d89c10efbb65ff68f48f76625a039a1aa8567bbd161cd28bf', 0, '2020-02-05 02:20:26'),
	('cda6f7f914d9e0874d03fc381b7965b7cac0169d15ec68ea8fdbb2aaa517507231ac30030d3f9bdd', 'b61d7ad5637e8247da0f6dbc8284edb4c86e48a956dcbf971524f2565cd8055c1295c66ae3380572', 0, '2020-02-05 02:49:15'),
	('f321408489d23302408c464a6d6a1035ef76a51c333bcfb6d63e16a7a765c9201b479ddf0c048816', 'f008f7bdfed175779155619f8a1c941d035d443655469d35ba6079f76dfb8110c497a611cca4fe49', 0, '2020-01-29 06:54:38');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- membuang struktur untuk table ngb.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ngb.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table ngb.quotes
CREATE TABLE IF NOT EXISTS `quotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ngb.quotes: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` (`id`, `content`, `created_at`, `updated_at`) VALUES
	(1, 'first content', '2019-01-13 00:33:14', '2019-01-13 00:33:14'),
	(2, 'second quote', '2019-01-13 02:28:40', '2019-01-13 02:28:40');
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;

-- membuang struktur untuk table ngb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ngb.users: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, '2yOSkISjUC', 'admin@admin.com', NULL, '$2y$10$EZXuMgIdYxFU652GGh6IEeLbWvZuP99c7mJJR7a6R4KXwvGLpnOGi', 'zLCJog4F2oXEH4ntPj6jZb9PNSk7OHjprgOYzT3QgC3pKXjxsktu7gdbbxnN', NULL, NULL),
	(2, 'adi', 'sidiqadi7@ngb.com', NULL, '$2y$10$swkqd4WIkB2cvqXWTk22IeQhpJQKSV3hql5Mt9.6zGNCNm4xG1wKK', NULL, '2019-01-29 07:55:59', '2019-01-29 07:55:59'),
	(3, 'adi', 'adi@ngb.com', NULL, '$2y$10$b9XJplAOQIgFawLmmN6y4uzHCjGLyFBDcVEkR1DFvXd3cfazEDEKa', NULL, '2019-02-05 08:01:12', '2019-02-05 08:01:12'),
	(4, 'mbink', 'mbink@ngb.com', NULL, '$2y$10$Epft9h4H6FvjzBIbZLdfW.eUAuwzFdf.xpMZx5c3YXMYYcTrfqDRG', NULL, '2019-02-16 15:42:22', '2019-02-16 15:42:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
