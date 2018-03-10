-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.43-0ubuntu0.14.10.1 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for phonebook_development
CREATE DATABASE IF NOT EXISTS `phonebook_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `phonebook_development`;


-- Dumping structure for table phonebook_development.cities
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cities_on_state_id` (`state_id`),
  CONSTRAINT `fk_rails_59b5e22e07` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table phonebook_development.cities: ~1 rows (approximately)
DELETE FROM `cities`;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Goiânia', '2015-05-22 17:55:53', '2015-05-22 17:55:53');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;


-- Dumping structure for table phonebook_development.departaments
CREATE TABLE IF NOT EXISTS `departaments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table phonebook_development.departaments: ~1 rows (approximately)
DELETE FROM `departaments`;
/*!40000 ALTER TABLE `departaments` DISABLE KEYS */;
INSERT INTO `departaments` (`id`, `name`, `nickname`, `created_at`, `updated_at`) VALUES
	(1, 'T.I', 'Tecnologia da Informação', '2015-05-22 18:06:56', '2015-05-22 18:06:56');
/*!40000 ALTER TABLE `departaments` ENABLE KEYS */;


-- Dumping structure for table phonebook_development.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `departament_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_employees_on_store_id` (`store_id`),
  KEY `index_employees_on_departament_id` (`departament_id`),
  CONSTRAINT `fk_rails_65e1e8ecf5` FOREIGN KEY (`departament_id`) REFERENCES `departaments` (`id`),
  CONSTRAINT `fk_rails_b82b548cdd` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table phonebook_development.employees: ~2 rows (approximately)
DELETE FROM `employees`;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `store_id`, `departament_id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'Luiz Botosso', '2333', '2015-05-22 18:09:53', '2015-05-22 18:09:53'),
	(2, 1, 1, 'Tubal', '2411', '2015-05-22 18:11:48', '2015-05-22 18:11:48');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;


-- Dumping structure for table phonebook_development.schema_migrations
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table phonebook_development.schema_migrations: ~8 rows (approximately)
DELETE FROM `schema_migrations`;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20150522174603'),
	('20150522174709'),
	('20150522174725'),
	('20150522174758'),
	('20150522174809'),
	('20150522175013'),
	('20150522180155'),
	('20150522180550');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


-- Dumping structure for table phonebook_development.states
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table phonebook_development.states: ~2 rows (approximately)
DELETE FROM `states`;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'GO', '2015-05-22 17:51:47', '2015-05-22 17:55:33'),
	(2, 'SP', '2015-05-22 17:51:59', '2015-05-22 17:55:39');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;


-- Dumping structure for table phonebook_development.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_stores_on_city_id` (`city_id`),
  CONSTRAINT `fk_rails_7e7e2abd88` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table phonebook_development.stores: ~1 rows (approximately)
DELETE FROM `stores`;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`id`, `name`, `address`, `city_id`, `created_at`, `updated_at`) VALUES
	(1, 'Navesa Matriz', 'Av. Pires Fernandes, 656 - Setor Aeroporto', 1, '2015-05-22 17:59:44', '2015-05-22 17:59:44');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
