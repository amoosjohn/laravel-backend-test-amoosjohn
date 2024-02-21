-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: connect_hr
-- ------------------------------------------------------
-- Server version	5.7.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Prof. Sebastian Schowalter','337 Lee Drive\nChaimhaven, DE 28133-8056',72,'2024-02-06 08:38:41','2024-02-06 08:38:41'),(2,'Prof. Harley Mayer','675 Hahn Square Apt. 147\nConroystad, VT 96485-4356',193,'2024-02-06 08:38:41','2024-02-06 08:38:41'),(3,'Idella Nitzsche','606 Brandon Mall Apt. 824\nDoyleberg, UT 04585',134,'2024-02-06 08:38:41','2024-02-06 08:38:41'),(4,'Prof. Columbus Hackett PhD','2630 Dicki Avenue Apt. 717\nFunkview, MD 80703-7070',165,'2024-02-06 08:38:41','2024-02-06 08:38:41'),(5,'Bonnie Towne','3123 Hertha Crossroad Suite 749\nNew Verdaborough, HI 01091-9359',114,'2024-02-06 08:38:41','2024-02-06 08:38:41'),(6,'Ms. Nina Cummerata DDS','352 Dach Club Apt. 154\nSouth Ilene, TX 49423',106,'2024-02-06 08:38:41','2024-02-06 08:38:41'),(7,'Eleanore Gerlach II','483 Schmeler Mill\nNew Myahland, IL 88677-1774',40,'2024-02-06 08:38:41','2024-02-06 08:38:41'),(8,'Nina Moen','3645 Dina Manor Suite 508\nLake Anthony, AR 48833',158,'2024-02-06 08:38:41','2024-02-06 08:38:41'),(9,'Lonnie Upton','212 Mekhi Landing Apt. 650\nMarielatown, NH 28617',184,'2024-02-06 08:38:41','2024-02-06 08:38:41'),(10,'Prof. Cedrick Harber DVM','733 Padberg Rapid Apt. 911\nWest Carleyburgh, MT 47906-8826',155,'2024-02-06 08:38:41','2024-02-06 08:38:41');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_company_id_foreign` (`company_id`),
  CONSTRAINT `locations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (2,7,'Zion Emmerich','84193 Gerlach Pass\nPort Raleighmouth, OR 76111','2024-02-06 08:38:41','2024-02-06 08:38:41'),(4,2,'Germaine Dare','202 Kade Mission\nLockmanview, ID 89061-5906','2024-02-06 08:38:41','2024-02-06 08:38:41'),(6,6,'Dr. Juwan Gerlach','8009 Krystina Motorway\nPort Dockmouth, ND 49062-0722','2024-02-06 08:38:41','2024-02-06 08:38:41'),(8,1,'Aileen Kunde','2343 Hirthe Knoll\nPeytonville, KY 77516','2024-02-06 08:38:41','2024-02-06 08:38:41'),(10,7,'Prof. Chet Sporer IV','6048 Treutel Highway\nKossmouth, PA 60921-6699','2024-02-06 08:38:41','2024-02-06 08:38:41'),(12,5,'Alexys Rosenbaum II','6994 Tromp Spurs Apt. 619\nWest Jovanny, DC 51445-3099','2024-02-06 08:38:41','2024-02-06 08:38:41'),(14,6,'Ms. Dawn Hettinger','75767 Christophe Way\nJoannyville, OR 95088','2024-02-06 08:38:41','2024-02-06 08:38:41'),(16,6,'Wilbert Ratke','40520 Joaquin Corner Suite 753\nSusieberg, TN 57510','2024-02-06 08:38:41','2024-02-06 08:38:41'),(18,4,'Ms. Vesta Corwin I','555 Timmothy Cove\nDonnellyside, NJ 44291-1010','2024-02-06 08:38:41','2024-02-06 08:38:41'),(20,10,'Stevie Ernser','9408 Hand Path Apt. 336\nTaniatown, NC 74578-2596','2024-02-06 08:38:41','2024-02-06 08:38:41'),(22,5,'Chadd Feest V','5167 Ritchie Via\nRicefort, NY 82675','2024-02-06 08:38:41','2024-02-06 08:38:41'),(24,6,'Granville Swaniawski','7801 Giovanna Course Apt. 350\nWymanport, NJ 05008','2024-02-06 08:38:41','2024-02-06 08:38:41'),(26,4,'Rusty O\'Kon','4402 Farrell Ways Suite 256\nGreenholthaven, AR 31573-2528','2024-02-06 08:38:41','2024-02-06 08:38:41'),(28,8,'Ashtyn Heathcote','7422 Terrence Motorway Apt. 556\nStromanmouth, NV 87265-0692','2024-02-06 08:38:41','2024-02-06 08:38:41'),(30,7,'Trent Breitenberg','17517 Hilario Land Suite 736\nHillsville, DE 65560-1238','2024-02-06 08:38:41','2024-02-06 08:38:41'),(32,5,'Sanford Botsford','2904 Lemuel Drive Apt. 437\nNew Lancechester, AZ 05438-6688','2024-02-06 08:38:41','2024-02-06 08:38:41'),(34,7,'Prof. Miguel Schmeler MD','686 Rutherford Island Apt. 033\nSkilesmouth, WY 16368-6693','2024-02-06 08:38:41','2024-02-06 08:38:41'),(36,5,'Zoie Turner II','350 Howe Radial\nMonahanmouth, UT 24202-1063','2024-02-06 08:38:41','2024-02-06 08:38:41'),(38,8,'Dr. Emily Ferry I','67207 Joaquin Locks Suite 774\nPort Jaclynshire, MA 43428','2024-02-06 08:38:41','2024-02-06 08:38:41'),(40,8,'Mr. Emmett Strosin PhD','41663 Rath Lodge\nSouth Libbietown, SD 17866-4450','2024-02-06 08:38:41','2024-02-06 08:38:41'),(42,6,'Terry Wunsch','16225 Bailey Dale Suite 963\nMrazmouth, CA 87103-1209','2024-02-06 08:38:41','2024-02-06 08:38:41'),(44,1,'Art Dicki','850 Franecki Run\nReynoldsmouth, NV 93690','2024-02-06 08:38:41','2024-02-06 08:38:41'),(46,6,'Dr. Mariela Zemlak MD','50924 Selina Vista Apt. 390\nRollinland, ME 15433-8570','2024-02-06 08:38:41','2024-02-06 08:38:41'),(48,10,'Syble Stark','9727 Huel Place Apt. 077\nWest Jessie, PA 19104-4213','2024-02-06 08:38:41','2024-02-06 08:38:41'),(50,2,'Prof. Jonas Goldner','8783 Erica Run\nEast Josephville, IA 96253-2717','2024-02-06 08:38:41','2024-02-06 08:38:41');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (25,'2014_10_12_000000_create_users_table',1),(26,'2014_10_12_100000_create_password_resets_table',1),(27,'2019_08_19_000000_create_failed_jobs_table',1),(28,'2023_09_26_180948_create_locations_table',1),(29,'2023_09_26_180949_create_companies_table',1),(30,'2024_02_06_120819_alter_fk_company_id_locations_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-07 15:11:41
