-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ehealth_logs
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.1
use ehealth_logs;

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
-- Table structure for table 'openncp_logs'
--

DROP TABLE IF EXISTS openncp_logs;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS openncp_logs (
                                            id BIGINT(20) NOT NULL AUTO_INCREMENT,
                                            component varchar(255) COLLATE utf8_unicode_ci NULL,
                                            logger varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                            priority varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                                            message longtext COLLATE utf8_unicode_ci NOT NULL,
                                            stacktrace text COLLATE utf8_unicode_ci,
                                            creationTime datetime NOT NULL,
                                            ip varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                                            PRIMARY KEY (id),
                                            KEY priority (priority),
                                            KEY creationTime (creationTime)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table 'openncp_logs'
--

LOCK TABLE openncp_logs WRITE;
/*!40000 ALTER TABLE openncp_logs DISABLE KEYS */;
/*!40000 ALTER TABLE openncp_logs ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

