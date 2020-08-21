/*
SQLyog Community v12.2.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - employee_attendance
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`employee_attendance` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `employee_attendance`;

/*Table structure for table `attendances` */

DROP TABLE IF EXISTS `attendances`;

CREATE TABLE `attendances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attendance_employee_no_index` (`employee_no`),
  CONSTRAINT `attendance_employee_no_foreign` FOREIGN KEY (`employee_no`) REFERENCES `users` (`employee_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `attendances` */

insert  into `attendances`(`id`,`employee_no`,`check_in`,`check_out`,`created_at`,`updated_at`) values 
(3,'1','2020-08-20 13:56:39','2020-08-20 13:57:31','2020-08-20 13:56:39','2020-08-20 13:57:31');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2020_08_20_105111_create_attendance_table',2);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_employee_no_unique` (`employee_no`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`employee_no`,`role`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'abdullah',NULL,'1','employee',NULL,'$2y$10$94qsD9fvwUyU8.HM3k31LOPHvktCtTKf0IV.2Bw1xwaCNXcISBXsG',NULL,'2020-08-20 13:26:09','2020-08-20 13:26:12'),
(2,'admin',NULL,'2','admin',NULL,'$2y$10$94qsD9fvwUyU8.HM3k31LOPHvktCtTKf0IV.2Bw1xwaCNXcISBXsG',NULL,'2020-08-20 14:26:12','2020-08-20 14:26:14'),
(3,'33y27323232','abdullah@wewebit.com','3',NULL,NULL,'$2y$10$b93B8rN704vz2vdQ79/pGeu6ulwhx99CeAFFypcNGk7tJFdburzKS',NULL,'2020-08-20 12:05:31','2020-08-20 12:05:31'),
(4,'hiiiiiiiiiiiiiiiiiiiiiiiiiiiii','abdullah2@wewebit.com','4','employee',NULL,'$2y$10$DBRRsGDmX89WiTrzanNLu.UN4IZLInmTw1Sjb7JfEVP5RhOLcM2dS',NULL,'2020-08-20 12:08:11','2020-08-20 12:08:11'),
(5,'te','abdullah4@wewebit.com','7','employee',NULL,'$2y$10$5CRV6HtzkgyXp2Y7lOluYOuWdfXRROrDaKiAGj2.offC7pJycc32a',NULL,'2020-08-20 14:05:27','2020-08-20 14:05:27'),
(6,'sql12337490`','abdullah9@wewebit.com','898989','employee',NULL,'$2y$10$JG9Yunc/p8Fadlfhu4KQpuXP6lJ5IHncPhHf0xPEL1IR2g3lc0Btu',NULL,'2020-08-20 14:06:52','2020-08-20 14:06:52'),
(7,'sql12337490`','abdullah10@wewebit.com','8989899','employee',NULL,'$2y$10$dabN6Sn.WSZOWjH6GB14D.nW7fAGJeeBu9eqCrKLygnhIqR.6LOXO',NULL,'2020-08-20 14:08:05','2020-08-20 14:08:05'),
(8,'sql12337490`','abdullah11@wewebit.com','89898999','employee',NULL,'$2y$10$LmGJS23gr51krdpyXjJvbuUnS7EywTGBT.SgVF9DPZ/49OxkuIKTC',NULL,'2020-08-20 14:09:10','2020-08-20 14:09:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
