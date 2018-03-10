-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.24-0ubuntu2 - (Ubuntu)
-- OS do Servidor:               debian-linux-gnu
-- HeidiSQL Versão:              9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para phonebook_development
CREATE DATABASE IF NOT EXISTS `phonebook_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `phonebook_development`;


-- Copiando estrutura para tabela phonebook_development.cities
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cities_on_state_id` (`state_id`),
  CONSTRAINT `fk_rails_59b5e22e07` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela phonebook_development.cities: ~1 rows (aproximadamente)
DELETE FROM `cities`;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Goiânia', '2015-05-22 17:55:53', '2015-05-22 17:55:53'),
	(2, 2, 'Nações', '2015-05-24 19:00:48', '2015-05-24 19:00:48');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;


-- Copiando estrutura para tabela phonebook_development.departaments
CREATE TABLE IF NOT EXISTS `departaments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela phonebook_development.departaments: ~2 rows (aproximadamente)
DELETE FROM `departaments`;
/*!40000 ALTER TABLE `departaments` DISABLE KEYS */;
INSERT INTO `departaments` (`id`, `name`, `company_name`, `created_at`, `updated_at`) VALUES
	(1, 'T.I', 'Dept.T.I', '2015-05-25 08:17:51', '2015-05-25 08:17:52'),
	(2, 'RH', 'Recursos Humano', '2015-05-25 08:18:03', '2015-05-25 08:18:03');
/*!40000 ALTER TABLE `departaments` ENABLE KEYS */;


-- Copiando estrutura para tabela phonebook_development.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `departament_id` int(11) DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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

-- Copiando dados para a tabela phonebook_development.employees: ~2 rows (aproximadamente)
DELETE FROM `employees`;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `store_id`, `departament_id`, `sex`, `name`, `phone`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'F', 'Dani', '2333', '2015-05-22 18:09:53', '2015-05-24 02:59:56'),
	(2, 2, 2, 'M', 'Tubal', '2411', '2015-05-22 18:11:48', '2015-05-22 18:11:48');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;


-- Copiando estrutura para tabela phonebook_development.marks
CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela phonebook_development.marks: ~2 rows (aproximadamente)
DELETE FROM `marks`;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Ford', '2015-05-24 15:10:31', '2015-05-24 15:10:31'),
	(2, 'Renault', '2015-05-24 15:30:33', '2015-05-24 15:30:33');
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;


-- Copiando estrutura para tabela phonebook_development.schema_migrations
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela phonebook_development.schema_migrations: ~15 rows (aproximadamente)
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
	('20150522180550'),
	('20150524150707'),
	('20150524232633'),
	('20150525111231'),
	('20150525111627'),
	('20150525113853'),
	('20150525114455'),
	('20150525125448');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


-- Copiando estrutura para tabela phonebook_development.states
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela phonebook_development.states: ~2 rows (aproximadamente)
DELETE FROM `states`;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'GO', '2015-05-22 17:51:47', '2015-05-22 17:55:33'),
	(2, 'SP', '2015-05-22 17:51:59', '2015-05-22 17:55:39');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;


-- Copiando estrutura para tabela phonebook_development.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `mark_id` int(11) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_stores_on_city_id` (`city_id`),
  KEY `index_stores_on_mark_id` (`mark_id`),
  CONSTRAINT `fk_rails_7e7e2abd88` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `fk_rails_dbcaccc431` FOREIGN KEY (`mark_id`) REFERENCES `marks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela phonebook_development.stores: ~2 rows (aproximadamente)
DELETE FROM `stores`;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`id`, `name`, `address`, `city_id`, `mark_id`, `phone`, `zip_code`, `created_at`, `updated_at`) VALUES
	(1, 'Ford - Matriz', 'Ru', 1, 1, '3018-1313', '74000', '2015-05-25 08:46:02', '0000-00-00 00:00:00'),
	(2, 'Ciaasa', 'Av. Mutirão, 87 - St. Bueno', 1, 2, '3018-0000', '74000', '2015-05-25 12:11:34', '2015-05-25 12:11:34');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;


-- Copiando estrutura para tabela phonebook_development.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela phonebook_development.users: ~1 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `permission`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
	(1, 'Tubal Leonel', 'admin', 'tubal.ti@gmail.com', '$2a$10$rUDJqeh8v7YWc8r2WnMOReyXBrEST/6p8HQOiC5P5YnSlVd/9QnXi', NULL, '2015-05-25 15:16:45', NULL, 1, '2015-05-25 18:50:43', '2015-05-25 15:16:49', '127.0.0.1', '127.0.0.1', NULL, '2015-05-25 18:50:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
