-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: openncp_portal
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.1
use openncp_portal;

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
-- Table structure for table `account_`
--

DROP TABLE IF EXISTS `account_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_`
--

LOCK TABLES `account_` WRITE;
/*!40000 ALTER TABLE `account_` DISABLE KEYS */;
INSERT INTO `account_` VALUES (20157,20155,0,'','2017-01-09 16:25:43','2017-06-20 05:44:39',0,'OpenNCP Portal - MITA','Liferay, Inc','','','','','','','');
/*!40000 ALTER TABLE `account_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `uuid_` varchar(75) DEFAULT NULL,
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `IX_93D5AD4E` (`companyId`),
  KEY `IX_ABD7DAC0` (`companyId`,`classNameId`),
  KEY `IX_71CB1123` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_923BD178` (`companyId`,`classNameId`,`classPK`,`mailing`),
  KEY `IX_9226DBB4` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_5BC8B0D4` (`userId`),
  KEY `IX_381E55DA` (`uuid_`),
  KEY `IX_8FCB620E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsdelivery`
--

DROP TABLE IF EXISTS `announcementsdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsdelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  UNIQUE KEY `IX_BA4413D5` (`userId`,`type_`),
  KEY `IX_6EDB9600` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsdelivery`
--

LOCK TABLES `announcementsdelivery` WRITE;
/*!40000 ALTER TABLE `announcementsdelivery` DISABLE KEYS */;
INSERT INTO `announcementsdelivery` VALUES (21226,20155,21220,'general',0,0,0),(21227,20155,21220,'news',0,0,0),(21228,20155,21220,'test',0,0,0),(21235,20155,21229,'general',0,0,0),(21236,20155,21229,'news',0,0,0),(21237,20155,21229,'test',0,0,0),(21708,20155,21702,'general',0,0,0),(21709,20155,21702,'news',0,0,0),(21710,20155,21702,'test',0,0,0),(21801,20155,20438,'general',0,0,1),(21802,20155,20438,'news',0,0,1),(21803,20155,20438,'test',0,0,1),(22307,20155,22301,'general',0,0,0),(22308,20155,22301,'news',0,0,0),(22309,20155,22301,'test',0,0,0);
/*!40000 ALTER TABLE `announcementsdelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsentry`
--

DROP TABLE IF EXISTS `announcementsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  KEY `IX_A6EF0B81` (`classNameId`,`classPK`),
  KEY `IX_14F06A6B` (`classNameId`,`classPK`,`alert`),
  KEY `IX_D49C2E66` (`userId`),
  KEY `IX_1AFBDE08` (`uuid_`),
  KEY `IX_F2949120` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsentry`
--

LOCK TABLES `announcementsentry` WRITE;
/*!40000 ALTER TABLE `announcementsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsflag`
--

DROP TABLE IF EXISTS `announcementsflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsflag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`),
  UNIQUE KEY `IX_4539A99C` (`userId`,`entryId`,`value`),
  KEY `IX_9C7EB9F` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsflag`
--

LOCK TABLES `announcementsflag` WRITE;
/*!40000 ALTER TABLE `announcementsflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetcategory`
--

DROP TABLE IF EXISTS `assetcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetcategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_BE4DF2BF` (`parentCategoryId`,`name`,`vocabularyId`),
  UNIQUE KEY `IX_E8D019AA` (`uuid_`,`groupId`),
  KEY `IX_E639E2F6` (`groupId`),
  KEY `IX_C7F39FCA` (`groupId`,`name`,`vocabularyId`),
  KEY `IX_852EA801` (`groupId`,`parentCategoryId`,`name`,`vocabularyId`),
  KEY `IX_87603842` (`groupId`,`parentCategoryId`,`vocabularyId`),
  KEY `IX_2008FACB` (`groupId`,`vocabularyId`),
  KEY `IX_D61ABE08` (`name`,`vocabularyId`),
  KEY `IX_7BB1826B` (`parentCategoryId`),
  KEY `IX_9DDD15EA` (`parentCategoryId`,`name`),
  KEY `IX_B185E980` (`parentCategoryId`,`vocabularyId`),
  KEY `IX_4D37BB00` (`uuid_`),
  KEY `IX_BBAF6928` (`uuid_`,`companyId`),
  KEY `IX_287B1F89` (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetcategory`
--

LOCK TABLES `assetcategory` WRITE;
/*!40000 ALTER TABLE `assetcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetcategoryproperty`
--

DROP TABLE IF EXISTS `assetcategoryproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetcategoryproperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`),
  UNIQUE KEY `IX_DBD111AA` (`categoryId`,`key_`),
  KEY `IX_99DA856` (`categoryId`),
  KEY `IX_8654719F` (`companyId`),
  KEY `IX_52340033` (`companyId`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetcategoryproperty`
--

LOCK TABLES `assetcategoryproperty` WRITE;
/*!40000 ALTER TABLE `assetcategoryproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetcategoryproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentries_assetcategories`
--

DROP TABLE IF EXISTS `assetentries_assetcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentries_assetcategories` (
  `categoryId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL,
  PRIMARY KEY (`categoryId`,`entryId`),
  KEY `IX_A188F560` (`categoryId`),
  KEY `IX_E119938A` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentries_assetcategories`
--

LOCK TABLES `assetentries_assetcategories` WRITE;
/*!40000 ALTER TABLE `assetentries_assetcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetentries_assetcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentries_assettags`
--

DROP TABLE IF EXISTS `assetentries_assettags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentries_assettags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`),
  KEY `IX_2ED82CAD` (`entryId`),
  KEY `IX_B2A61B55` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentries_assettags`
--

LOCK TABLES `assetentries_assettags` WRITE;
/*!40000 ALTER TABLE `assetentries_assettags` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetentries_assettags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentry`
--

DROP TABLE IF EXISTS `assetentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_1E9D371D` (`classNameId`,`classPK`),
  KEY `IX_FC1F9C7B` (`classUuid`),
  KEY `IX_7306C60` (`companyId`),
  KEY `IX_75D42FF9` (`expirationDate`),
  KEY `IX_1EBA6821` (`groupId`,`classUuid`),
  KEY `IX_FEC4A201` (`layoutUuid`),
  KEY `IX_2E4E3885` (`publishDate`),
  KEY `IX_9029E15A` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentry`
--

LOCK TABLES `assetentry` WRITE;
/*!40000 ALTER TABLE `assetentry` DISABLE KEYS */;
INSERT INTO `assetentry` VALUES (20184,20177,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',20116,20182,'0428efe4-a01d-4fcc-9046-305cf0b767a0',0,0,NULL,NULL,NULL,NULL,'text/html','20180','','','','',0,0,0,0),(20193,20186,20155,20159,'','2017-01-09 16:25:45','2017-01-09 16:25:45',20116,20191,'e1d31836-6ed5-43c0-831e-fe140578a78f',0,0,NULL,NULL,NULL,NULL,'text/html','20189','','','','',0,0,0,0),(20208,20199,20155,20203,'Test Test','2017-01-09 16:25:45','2017-01-09 16:25:45',20005,20203,'69652995-421d-45c4-bd4c-9b1bab2e564a',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),(20329,20321,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48',20116,20326,'d81184ab-4988-465d-9d57-1c661ed6b7e5',0,0,NULL,NULL,NULL,NULL,'text/html','20324','','','','',0,0,0,0),(20340,20333,20155,20159,'','2017-01-09 16:25:49','2017-01-09 16:25:49',20116,20338,'b0207c70-cf92-4d13-bf04-5bafbb99cfac',0,0,NULL,NULL,NULL,NULL,'text/html','20336','','','','',0,0,0,0),(20350,20343,20155,20159,'','2017-01-09 16:25:50','2017-01-09 16:25:50',20116,20348,'3b3a0b9d-94a0-4519-a8af-3b80fb421c98',0,0,NULL,NULL,NULL,NULL,'text/html','20346','','','','',0,0,0,0),(20369,20354,20155,20159,'','2017-01-09 16:25:51','2017-01-09 16:25:51',20116,20367,'2fa9cffb-1338-457a-ae66-54672f4de6d2',0,0,NULL,NULL,NULL,NULL,'text/html','20365','','','','',0,0,0,0),(20377,20354,20155,20159,'','2017-01-09 16:25:52','2017-01-09 16:25:52',20116,20375,'1e384f9a-4c19-4c2d-8fe6-b929cab71778',0,0,NULL,NULL,NULL,NULL,'text/html','20373','','','','',0,0,0,0),(20395,20380,20155,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',20116,20393,'6cd96272-1a09-40d0-bf92-66b85fc47d53',0,0,NULL,NULL,NULL,NULL,'text/html','20391','','','','',0,0,0,0),(20404,20380,20155,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',20116,20402,'de4d73e5-6e09-4285-8488-ec0405a02f47',0,0,NULL,NULL,NULL,NULL,'text/html','20400','','','','',0,0,0,0),(20412,20380,20155,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',20116,20410,'d9de14d2-a4f4-4478-ace7-5d12613b45d1',0,0,NULL,NULL,NULL,NULL,'text/html','20408','','','','',0,0,0,0),(20443,20199,20155,20438,'Admin User','2017-01-09 16:27:22','2017-06-20 05:38:58',20005,20438,'2cdd86fa-91e8-47ee-a317-039f00c0a4b8',0,0,NULL,NULL,NULL,NULL,'','Admin User','','','','',0,0,0,0),(20531,20524,20155,20159,'','2017-01-09 16:28:04','2017-01-09 16:28:04',20116,20529,'70aa0ad9-3eff-4756-8a69-4f992e450124',0,0,NULL,NULL,NULL,NULL,'text/html','20527','','','','',0,0,0,0),(20537,20524,20155,20159,'','2017-01-09 16:28:05','2017-01-09 16:28:05',20116,20535,'2f82552f-3e42-4c7a-914d-d7d839d0e183',0,0,NULL,NULL,NULL,NULL,'text/html','20533','','','','',0,0,0,0),(20548,20199,20155,20543,'Test ORD 1','2017-01-09 16:28:05','2017-01-09 16:28:05',20005,20543,'5320c8b1-bdb2-47bb-848e-b2212fd17a59',0,0,NULL,NULL,NULL,NULL,'','Test ORD 1','','','','',0,0,0,0),(20554,20199,20155,20549,'Test ORD 2','2017-01-09 16:28:06','2017-01-09 16:28:06',20005,20549,'3746599e-c113-4685-ae3d-d420b2e5c979',0,0,NULL,NULL,NULL,NULL,'','Test ORD 2','','','','',0,0,0,0),(20560,20199,20155,20555,'Test ORD 3','2017-01-09 16:28:06','2017-01-09 16:28:06',20005,20555,'d940771d-e88b-4fc9-978e-9c070649d112',0,0,NULL,NULL,NULL,NULL,'','Test ORD 3','','','','',0,0,0,0),(20566,20199,20155,20561,'Test ORD 4','2017-01-09 16:28:07','2017-01-09 16:28:07',20005,20561,'44ef14fb-8a92-45b1-8b5e-eea4793da3b0',0,0,NULL,NULL,NULL,NULL,'','Test ORD 4','','','','',0,0,0,0),(20572,20199,20155,20567,'Test ORD 5','2017-01-09 16:28:07','2017-01-09 16:28:07',20005,20567,'5b1594d0-727c-4f48-8ed4-8ec1a5bf7730',0,0,NULL,NULL,NULL,NULL,'','Test ORD 5','','','','',0,0,0,0),(20578,20199,20155,20573,'Test ORD 6','2017-01-09 16:28:07','2017-01-09 16:28:07',20005,20573,'e3e2759b-161d-4523-b972-110a2690e07b',0,0,NULL,NULL,NULL,NULL,'','Test ORD 6','','','','',0,0,0,0),(20584,20199,20155,20579,'Test ORD 7','2017-01-09 16:28:08','2017-01-09 16:28:08',20005,20579,'0df05bb2-e955-4c74-8926-104d3547d2b0',0,0,NULL,NULL,NULL,NULL,'','Test ORD 7','','','','',0,0,0,0),(20590,20199,20155,20585,'Test ORD 8','2017-01-09 16:28:08','2017-01-09 16:28:08',20005,20585,'1194f072-bcf8-4145-8e90-1ab4b2f9b3c3',0,0,NULL,NULL,NULL,NULL,'','Test ORD 8','','','','',0,0,0,0),(20596,20199,20155,20591,'Test ORD 9','2017-01-09 16:28:08','2017-01-09 16:28:08',20005,20591,'96c71a77-5f52-47c6-a1b6-702fb50c2042',0,0,NULL,NULL,NULL,NULL,'','Test ORD 9','','','','',0,0,0,0),(20602,20199,20155,20597,'Test ORD 10','2017-01-09 16:28:08','2017-01-09 16:28:08',20005,20597,'8b528e8f-5759-4b94-a399-32dacedeb5a2',0,0,NULL,NULL,NULL,NULL,'','Test ORD 10','','','','',0,0,0,0),(20616,20199,20155,20611,'Test DLC 1','2017-01-09 16:28:09','2017-01-09 16:28:09',20005,20611,'dafdbbaa-ffcb-4370-b654-c44799cfe35e',0,0,NULL,NULL,NULL,NULL,'','Test DLC 1','','','','',0,0,0,0),(20622,20199,20155,20617,'Test DLC 2','2017-01-09 16:28:09','2017-01-09 16:28:09',20005,20617,'563a8495-2317-430c-a537-9e99e6eba199',0,0,NULL,NULL,NULL,NULL,'','Test DLC 2','','','','',0,0,0,0),(20628,20199,20155,20623,'Test DLC 3','2017-01-09 16:28:09','2017-01-09 16:28:09',20005,20623,'f8332c14-b60f-42f3-84a5-beb85984ff93',0,0,NULL,NULL,NULL,NULL,'','Test DLC 3','','','','',0,0,0,0),(20634,20199,20155,20629,'Test DLC 4','2017-01-09 16:28:10','2017-01-09 16:28:10',20005,20629,'6346a165-5099-4c4f-8ffe-bcb8a83d33de',0,0,NULL,NULL,NULL,NULL,'','Test DLC 4','','','','',0,0,0,0),(20640,20199,20155,20635,'Test DLC 5','2017-01-09 16:28:10','2017-01-09 16:28:10',20005,20635,'c76b79a6-f60e-4d24-a3a2-98009dedbca5',0,0,NULL,NULL,NULL,NULL,'','Test DLC 5','','','','',0,0,0,0),(20646,20199,20155,20641,'Test DLC 6','2017-01-09 16:28:10','2017-01-09 16:28:10',20005,20641,'9e56b148-cadb-468f-8998-ca16e8460bdd',0,0,NULL,NULL,NULL,NULL,'','Test DLC 6','','','','',0,0,0,0),(20652,20199,20155,20647,'Test DLC 7','2017-01-09 16:28:11','2017-01-09 16:28:11',20005,20647,'be58da6a-a44d-46a8-ae6f-c6dbd321215a',0,0,NULL,NULL,NULL,NULL,'','Test DLC 7','','','','',0,0,0,0),(20658,20199,20155,20653,'Test DLC 8','2017-01-09 16:28:11','2017-01-09 16:28:11',20005,20653,'e8aaaefc-8d6f-48f6-bc2b-baf782c43d6d',0,0,NULL,NULL,NULL,NULL,'','Test DLC 8','','','','',0,0,0,0),(20664,20199,20155,20659,'Test DLC 9','2017-01-09 16:28:11','2017-01-09 16:28:11',20005,20659,'ba10d84b-ac95-4bd5-a5bd-84f082068782',0,0,NULL,NULL,NULL,NULL,'','Test DLC 9','','','','',0,0,0,0),(20670,20199,20155,20665,'Test DLC 10','2017-01-09 16:28:12','2017-01-09 16:28:12',20005,20665,'1d1e94d0-f348-48fb-a5a8-2295034e9b6f',0,0,NULL,NULL,NULL,NULL,'','Test DLC 10','','','','',0,0,0,0),(20684,20199,20155,20679,'Test FRA 1','2017-01-09 16:28:12','2017-01-09 16:28:12',20005,20679,'0db03e93-8b44-4b7f-819d-d60b934635ac',0,0,NULL,NULL,NULL,NULL,'','Test FRA 1','','','','',0,0,0,0),(20690,20199,20155,20685,'Test FRA 2','2017-01-09 16:28:12','2017-01-09 16:28:12',20005,20685,'f56919e9-0d27-455a-bda2-7a2bb3838252',0,0,NULL,NULL,NULL,NULL,'','Test FRA 2','','','','',0,0,0,0),(20696,20199,20155,20691,'Test FRA 3','2017-01-09 16:28:13','2017-01-09 16:28:13',20005,20691,'06e9dec4-ec17-49bb-9a7b-c2d1f04946f7',0,0,NULL,NULL,NULL,NULL,'','Test FRA 3','','','','',0,0,0,0),(20702,20199,20155,20697,'Test FRA 4','2017-01-09 16:28:13','2017-01-09 16:28:13',20005,20697,'09dfba90-2df0-4287-ba1b-1933eff49d0e',0,0,NULL,NULL,NULL,NULL,'','Test FRA 4','','','','',0,0,0,0),(20708,20199,20155,20703,'Test FRA 5','2017-01-09 16:28:13','2017-01-09 16:28:13',20005,20703,'f03a17b7-842c-4f00-b94a-8b1878a323d0',0,0,NULL,NULL,NULL,NULL,'','Test FRA 5','','','','',0,0,0,0),(20714,20199,20155,20709,'Test FRA 6','2017-01-09 16:28:14','2017-01-09 16:28:14',20005,20709,'1f30687b-6900-4f5d-9416-9032e9057e69',0,0,NULL,NULL,NULL,NULL,'','Test FRA 6','','','','',0,0,0,0),(20720,20199,20155,20715,'Test FRA 7','2017-01-09 16:28:14','2017-01-09 16:28:14',20005,20715,'1509e9fb-6189-4ae2-ac80-d65f7865555c',0,0,NULL,NULL,NULL,NULL,'','Test FRA 7','','','','',0,0,0,0),(20726,20199,20155,20721,'Test FRA 8','2017-01-09 16:28:14','2017-01-09 16:28:14',20005,20721,'bb4f3aa9-a40f-4bfc-a309-8364ecdfd024',0,0,NULL,NULL,NULL,NULL,'','Test FRA 8','','','','',0,0,0,0),(20732,20199,20155,20727,'Test FRA 9','2017-01-09 16:28:14','2017-01-09 16:28:14',20005,20727,'930193f5-9dde-44b4-99bf-f66bd3a499be',0,0,NULL,NULL,NULL,NULL,'','Test FRA 9','','','','',0,0,0,0),(20738,20199,20155,20733,'Test FRA 10','2017-01-09 16:28:15','2017-01-09 16:28:15',20005,20733,'d182b668-b255-459b-b4e6-7aca66202941',0,0,NULL,NULL,NULL,NULL,'','Test FRA 10','','','','',0,0,0,0),(20748,20199,20155,20743,'Test HKG 1','2017-01-09 16:28:15','2017-01-09 16:28:15',20005,20743,'65594cb7-2de6-401a-a28e-b24dcf348c78',0,0,NULL,NULL,NULL,NULL,'','Test HKG 1','','','','',0,0,0,0),(20754,20199,20155,20749,'Test HKG 2','2017-01-09 16:28:15','2017-01-09 16:28:15',20005,20749,'c34e68d4-5edd-49ed-906e-cffa74ed1db5',0,0,NULL,NULL,NULL,NULL,'','Test HKG 2','','','','',0,0,0,0),(20760,20199,20155,20755,'Test HKG 3','2017-01-09 16:28:16','2017-01-09 16:28:16',20005,20755,'ffb173b6-d9ea-4c7c-9eac-fbe1f8f66e11',0,0,NULL,NULL,NULL,NULL,'','Test HKG 3','','','','',0,0,0,0),(20766,20199,20155,20761,'Test HKG 4','2017-01-09 16:28:16','2017-01-09 16:28:16',20005,20761,'5dbe3a69-d875-4a7f-a3ba-6031b97db929',0,0,NULL,NULL,NULL,NULL,'','Test HKG 4','','','','',0,0,0,0),(20772,20199,20155,20767,'Test HKG 5','2017-01-09 16:28:16','2017-01-09 16:28:16',20005,20767,'818037f1-3149-40c8-a49e-7fd43c36bb04',0,0,NULL,NULL,NULL,NULL,'','Test HKG 5','','','','',0,0,0,0),(20778,20199,20155,20773,'Test HKG 6','2017-01-09 16:28:17','2017-01-09 16:28:17',20005,20773,'501c3113-de76-4576-b221-1cd8b3afac4b',0,0,NULL,NULL,NULL,NULL,'','Test HKG 6','','','','',0,0,0,0),(20784,20199,20155,20779,'Test HKG 7','2017-01-09 16:28:17','2017-01-09 16:28:17',20005,20779,'cfb769b0-d9a9-4761-b0bb-39602bc30672',0,0,NULL,NULL,NULL,NULL,'','Test HKG 7','','','','',0,0,0,0),(20790,20199,20155,20785,'Test HKG 8','2017-01-09 16:28:17','2017-01-09 16:28:17',20005,20785,'ed0c3ca5-d838-44d3-a1f5-d278a6a961f5',0,0,NULL,NULL,NULL,NULL,'','Test HKG 8','','','','',0,0,0,0),(20796,20199,20155,20791,'Test HKG 9','2017-01-09 16:28:17','2017-01-09 16:28:17',20005,20791,'d2e0b674-bb26-4fc1-bf7d-32ad7d135818',0,0,NULL,NULL,NULL,NULL,'','Test HKG 9','','','','',0,0,0,0),(20802,20199,20155,20797,'Test HKG 10','2017-01-09 16:28:18','2017-01-09 16:28:18',20005,20797,'0cc04d2c-57b4-496a-9d82-4bcc810502d5',0,0,NULL,NULL,NULL,NULL,'','Test HKG 10','','','','',0,0,0,0),(20812,20199,20155,20807,'Test KUL 1','2017-01-09 16:28:18','2017-01-09 16:28:18',20005,20807,'3952812f-613f-49eb-b7d7-686ea8d0f4fa',0,0,NULL,NULL,NULL,NULL,'','Test KUL 1','','','','',0,0,0,0),(20818,20199,20155,20813,'Test KUL 2','2017-01-09 16:28:18','2017-01-09 16:28:18',20005,20813,'b38ce7d8-c73a-4865-b2e1-84a5c39b431d',0,0,NULL,NULL,NULL,NULL,'','Test KUL 2','','','','',0,0,0,0),(20824,20199,20155,20819,'Test KUL 3','2017-01-09 16:28:19','2017-01-09 16:28:19',20005,20819,'a1d726ef-7be2-421e-a744-bc7ee1d083c3',0,0,NULL,NULL,NULL,NULL,'','Test KUL 3','','','','',0,0,0,0),(20830,20199,20155,20825,'Test KUL 4','2017-01-09 16:28:19','2017-01-09 16:28:19',20005,20825,'9179323f-66f1-4c62-b0ff-852b024041cb',0,0,NULL,NULL,NULL,NULL,'','Test KUL 4','','','','',0,0,0,0),(20836,20199,20155,20831,'Test KUL 5','2017-01-09 16:28:19','2017-01-09 16:28:19',20005,20831,'629aa035-60cf-4736-9069-7bdf5f892791',0,0,NULL,NULL,NULL,NULL,'','Test KUL 5','','','','',0,0,0,0),(20842,20199,20155,20837,'Test KUL 6','2017-01-09 16:28:19','2017-01-09 16:28:19',20005,20837,'e001603b-5fbe-4165-8e6c-285525d84bc6',0,0,NULL,NULL,NULL,NULL,'','Test KUL 6','','','','',0,0,0,0),(20848,20199,20155,20843,'Test KUL 7','2017-01-09 16:28:20','2017-01-09 16:28:20',20005,20843,'8977603f-29f9-4bed-99bc-ef775845236b',0,0,NULL,NULL,NULL,NULL,'','Test KUL 7','','','','',0,0,0,0),(20854,20199,20155,20849,'Test KUL 8','2017-01-09 16:28:20','2017-01-09 16:28:20',20005,20849,'049e1dd5-c93a-4a8a-a696-5f85ae7d66ff',0,0,NULL,NULL,NULL,NULL,'','Test KUL 8','','','','',0,0,0,0),(20860,20199,20155,20855,'Test KUL 9','2017-01-09 16:28:20','2017-01-09 16:28:20',20005,20855,'150ebac6-3811-4f3b-84ff-80b7223e7b98',0,0,NULL,NULL,NULL,NULL,'','Test KUL 9','','','','',0,0,0,0),(20866,20199,20155,20861,'Test KUL 10','2017-01-09 16:28:21','2017-01-09 16:28:21',20005,20861,'2a637faf-ac72-4e9b-ae73-e3b605498019',0,0,NULL,NULL,NULL,NULL,'','Test KUL 10','','','','',0,0,0,0),(20876,20199,20155,20871,'Test LAX 1','2017-01-09 16:28:21','2017-01-09 16:28:21',20005,20871,'0ec28600-777d-44bf-bacf-7ed8b02d8f59',0,0,NULL,NULL,NULL,NULL,'','Test LAX 1','','','','',0,0,0,0),(20882,20199,20155,20877,'Test LAX 2','2017-01-09 16:28:21','2017-01-09 16:28:21',20005,20877,'8ee144ab-0ecd-4e15-9f17-dfe7d3e50022',0,0,NULL,NULL,NULL,NULL,'','Test LAX 2','','','','',0,0,0,0),(20888,20199,20155,20883,'Test LAX 3','2017-01-09 16:28:22','2017-01-09 16:28:22',20005,20883,'c6fc13ee-6af0-42c9-b9b0-4af6472f979f',0,0,NULL,NULL,NULL,NULL,'','Test LAX 3','','','','',0,0,0,0),(20894,20199,20155,20889,'Test LAX 4','2017-01-09 16:28:22','2017-01-09 16:28:22',20005,20889,'4bdf378f-d251-42fa-be1a-9d0f431b0ae6',0,0,NULL,NULL,NULL,NULL,'','Test LAX 4','','','','',0,0,0,0),(20900,20199,20155,20895,'Test LAX 5','2017-01-09 16:28:22','2017-01-09 16:28:22',20005,20895,'9b0b65d1-40b5-4995-9cce-9ba528aa711d',0,0,NULL,NULL,NULL,NULL,'','Test LAX 5','','','','',0,0,0,0),(20906,20199,20155,20901,'Test LAX 6','2017-01-09 16:28:22','2017-01-09 16:28:22',20005,20901,'922d5afb-0b23-46a2-b67d-f5eb40c09f46',0,0,NULL,NULL,NULL,NULL,'','Test LAX 6','','','','',0,0,0,0),(20912,20199,20155,20907,'Test LAX 7','2017-01-09 16:28:23','2017-01-09 16:28:23',20005,20907,'2e96f3c8-e9a7-4246-8669-4c1a58ea6efa',0,0,NULL,NULL,NULL,NULL,'','Test LAX 7','','','','',0,0,0,0),(20918,20199,20155,20913,'Test LAX 8','2017-01-09 16:28:23','2017-01-09 16:28:23',20005,20913,'70cd7b71-583f-4e19-b25e-9544e8cdf52e',0,0,NULL,NULL,NULL,NULL,'','Test LAX 8','','','','',0,0,0,0),(20924,20199,20155,20919,'Test LAX 9','2017-01-09 16:28:23','2017-01-09 16:28:23',20005,20919,'4663cd9e-5393-4224-a2ca-b87f84282ab1',0,0,NULL,NULL,NULL,NULL,'','Test LAX 9','','','','',0,0,0,0),(20930,20199,20155,20925,'Test LAX 10','2017-01-09 16:28:24','2017-01-09 16:28:24',20005,20925,'8d56be95-5004-43f7-93d4-dcc327fc26b2',0,0,NULL,NULL,NULL,NULL,'','Test LAX 10','','','','',0,0,0,0),(20940,20199,20155,20935,'Test MAD 1','2017-01-09 16:28:24','2017-01-09 16:28:24',20005,20935,'caae9f47-d973-40d5-8658-bb83cb88e416',0,0,NULL,NULL,NULL,NULL,'','Test MAD 1','','','','',0,0,0,0),(20946,20199,20155,20941,'Test MAD 2','2017-01-09 16:28:24','2017-01-09 16:28:24',20005,20941,'6f624a7d-9e9e-411b-9b55-00fe22d5a1f9',0,0,NULL,NULL,NULL,NULL,'','Test MAD 2','','','','',0,0,0,0),(20952,20199,20155,20947,'Test MAD 3','2017-01-09 16:28:25','2017-01-09 16:28:25',20005,20947,'a8669d28-0da0-4335-8ae8-3492ed21b650',0,0,NULL,NULL,NULL,NULL,'','Test MAD 3','','','','',0,0,0,0),(20958,20199,20155,20953,'Test MAD 4','2017-01-09 16:28:25','2017-01-09 16:28:25',20005,20953,'dc74be1b-1996-4b12-9166-13979bd3df35',0,0,NULL,NULL,NULL,NULL,'','Test MAD 4','','','','',0,0,0,0),(20964,20199,20155,20959,'Test MAD 5','2017-01-09 16:28:25','2017-01-09 16:28:25',20005,20959,'53a85aa6-b30d-4ee7-a452-adb62e5732fa',0,0,NULL,NULL,NULL,NULL,'','Test MAD 5','','','','',0,0,0,0),(20970,20199,20155,20965,'Test MAD 6','2017-01-09 16:28:25','2017-01-09 16:28:25',20005,20965,'b5c3b6ba-eb1f-433c-9637-acfd98cf0358',0,0,NULL,NULL,NULL,NULL,'','Test MAD 6','','','','',0,0,0,0),(20976,20199,20155,20971,'Test MAD 7','2017-01-09 16:28:26','2017-01-09 16:28:26',20005,20971,'f82f108c-a12b-443e-8cab-36e891f7a6b2',0,0,NULL,NULL,NULL,NULL,'','Test MAD 7','','','','',0,0,0,0),(20982,20199,20155,20977,'Test MAD 8','2017-01-09 16:28:26','2017-01-09 16:28:26',20005,20977,'1e1da799-d241-494e-9ab4-6ee35ed9421f',0,0,NULL,NULL,NULL,NULL,'','Test MAD 8','','','','',0,0,0,0),(20988,20199,20155,20983,'Test MAD 9','2017-01-09 16:28:26','2017-01-09 16:28:26',20005,20983,'96c69f17-ea89-49ad-b065-e16b918e95b5',0,0,NULL,NULL,NULL,NULL,'','Test MAD 9','','','','',0,0,0,0),(20994,20199,20155,20989,'Test MAD 10','2017-01-09 16:28:27','2017-01-09 16:28:27',20005,20989,'80f56363-9bd6-408c-bd03-e5613d1c1fdd',0,0,NULL,NULL,NULL,NULL,'','Test MAD 10','','','','',0,0,0,0),(21008,20199,20155,21003,'Test NYC 1','2017-01-09 16:28:27','2017-01-09 16:28:27',20005,21003,'89768c7a-9ac3-459c-91af-df934b730476',0,0,NULL,NULL,NULL,NULL,'','Test NYC 1','','','','',0,0,0,0),(21014,20199,20155,21009,'Test NYC 2','2017-01-09 16:28:27','2017-01-09 16:28:27',20005,21009,'86ecaf08-b4ad-4234-982e-e55819b7756b',0,0,NULL,NULL,NULL,NULL,'','Test NYC 2','','','','',0,0,0,0),(21020,20199,20155,21015,'Test NYC 3','2017-01-09 16:28:28','2017-01-09 16:28:28',20005,21015,'fdae15a4-f4d4-482f-8849-f6e8a291964f',0,0,NULL,NULL,NULL,NULL,'','Test NYC 3','','','','',0,0,0,0),(21026,20199,20155,21021,'Test NYC 4','2017-01-09 16:28:28','2017-01-09 16:28:28',20005,21021,'a7c24675-491e-40c5-8858-1a36827b02e8',0,0,NULL,NULL,NULL,NULL,'','Test NYC 4','','','','',0,0,0,0),(21032,20199,20155,21027,'Test NYC 5','2017-01-09 16:28:28','2017-01-09 16:28:28',20005,21027,'c9f08223-e069-47d6-9eec-357ecbbc1e7e',0,0,NULL,NULL,NULL,NULL,'','Test NYC 5','','','','',0,0,0,0),(21038,20199,20155,21033,'Test NYC 6','2017-01-09 16:28:29','2017-01-09 16:28:29',20005,21033,'04b0b55d-e88c-44c9-b939-174a12b6cdc8',0,0,NULL,NULL,NULL,NULL,'','Test NYC 6','','','','',0,0,0,0),(21044,20199,20155,21039,'Test NYC 7','2017-01-09 16:28:29','2017-01-09 16:28:29',20005,21039,'19381177-d44a-4219-898a-1723088221e8',0,0,NULL,NULL,NULL,NULL,'','Test NYC 7','','','','',0,0,0,0),(21050,20199,20155,21045,'Test NYC 8','2017-01-09 16:28:29','2017-01-09 16:28:29',20005,21045,'2fd8e0b2-818c-4718-9596-74f057a6d4f6',0,0,NULL,NULL,NULL,NULL,'','Test NYC 8','','','','',0,0,0,0),(21056,20199,20155,21051,'Test NYC 9','2017-01-09 16:28:30','2017-01-09 16:28:30',20005,21051,'3cd56232-c6a9-4c79-9de0-96959c6bafb8',0,0,NULL,NULL,NULL,NULL,'','Test NYC 9','','','','',0,0,0,0),(21062,20199,20155,21057,'Test NYC 10','2017-01-09 16:28:30','2017-01-09 16:28:30',20005,21057,'892962a2-e921-434d-853d-f661d955f7a9',0,0,NULL,NULL,NULL,NULL,'','Test NYC 10','','','','',0,0,0,0),(21072,20199,20155,21067,'Test GRU 1','2017-01-09 16:28:30','2017-01-09 16:28:30',20005,21067,'57c1fafc-434f-4539-b9e9-0c586b9e57b8',0,0,NULL,NULL,NULL,NULL,'','Test GRU 1','','','','',0,0,0,0),(21078,20199,20155,21073,'Test GRU 2','2017-01-09 16:28:30','2017-01-09 16:28:30',20005,21073,'63359f28-cf9c-4ee5-9eee-a3b8ab83f7af',0,0,NULL,NULL,NULL,NULL,'','Test GRU 2','','','','',0,0,0,0),(21084,20199,20155,21079,'Test GRU 3','2017-01-09 16:28:31','2017-01-09 16:28:31',20005,21079,'8b9ec72a-602a-4d16-b70e-ce9ad35db081',0,0,NULL,NULL,NULL,NULL,'','Test GRU 3','','','','',0,0,0,0),(21090,20199,20155,21085,'Test GRU 4','2017-01-09 16:28:31','2017-01-09 16:28:31',20005,21085,'4f949c9d-1007-40b0-b74e-4495c5e557c8',0,0,NULL,NULL,NULL,NULL,'','Test GRU 4','','','','',0,0,0,0),(21096,20199,20155,21091,'Test GRU 5','2017-01-09 16:28:31','2017-01-09 16:28:31',20005,21091,'1ca34ae6-d697-417b-b91d-c577b3a0a9cc',0,0,NULL,NULL,NULL,NULL,'','Test GRU 5','','','','',0,0,0,0),(21102,20199,20155,21097,'Test GRU 6','2017-01-09 16:28:32','2017-01-09 16:28:32',20005,21097,'ba618be4-d9e9-433a-bd04-1ac5468250c3',0,0,NULL,NULL,NULL,NULL,'','Test GRU 6','','','','',0,0,0,0),(21108,20199,20155,21103,'Test GRU 7','2017-01-09 16:28:32','2017-01-09 16:28:32',20005,21103,'903b6831-7583-4f8a-b057-829da8c584bc',0,0,NULL,NULL,NULL,NULL,'','Test GRU 7','','','','',0,0,0,0),(21114,20199,20155,21109,'Test GRU 8','2017-01-09 16:28:32','2017-01-09 16:28:32',20005,21109,'931c8312-1c56-43fa-abce-a652c5c551b8',0,0,NULL,NULL,NULL,NULL,'','Test GRU 8','','','','',0,0,0,0),(21120,20199,20155,21115,'Test GRU 9','2017-01-09 16:28:32','2017-01-09 16:28:32',20005,21115,'f1188d2f-fde5-4be5-96e1-4fc3c310773a',0,0,NULL,NULL,NULL,NULL,'','Test GRU 9','','','','',0,0,0,0),(21126,20199,20155,21121,'Test GRU 10','2017-01-09 16:28:33','2017-01-09 16:28:33',20005,21121,'25b4d8f5-548f-4aad-9586-0589bd9f6eaa',0,0,NULL,NULL,NULL,NULL,'','Test GRU 10','','','','',0,0,0,0),(21140,20199,20155,21135,'Test SFO 1','2017-01-09 16:28:33','2017-01-09 16:28:33',20005,21135,'2dd9091f-60d3-43d4-b880-58c9e8cd3b4e',0,0,NULL,NULL,NULL,NULL,'','Test SFO 1','','','','',0,0,0,0),(21146,20199,20155,21141,'Test SFO 2','2017-01-09 16:28:34','2017-01-09 16:28:34',20005,21141,'1ba9d655-ae1e-4a67-869b-071fa07ee6bc',0,0,NULL,NULL,NULL,NULL,'','Test SFO 2','','','','',0,0,0,0),(21152,20199,20155,21147,'Test SFO 3','2017-01-09 16:28:34','2017-01-09 16:28:34',20005,21147,'917133e8-333f-4043-a174-0a1cab792c91',0,0,NULL,NULL,NULL,NULL,'','Test SFO 3','','','','',0,0,0,0),(21158,20199,20155,21153,'Test SFO 4','2017-01-09 16:28:34','2017-01-09 16:28:34',20005,21153,'03c85505-7071-412e-902d-e676b36e40ed',0,0,NULL,NULL,NULL,NULL,'','Test SFO 4','','','','',0,0,0,0),(21164,20199,20155,21159,'Test SFO 5','2017-01-09 16:28:34','2017-01-09 16:28:34',20005,21159,'d7dbb9d7-4028-4922-b9fd-d5b8f0ae8b35',0,0,NULL,NULL,NULL,NULL,'','Test SFO 5','','','','',0,0,0,0),(21170,20199,20155,21165,'Test SFO 6','2017-01-09 16:28:35','2017-01-09 16:28:35',20005,21165,'bc629357-d78b-40b5-ac1f-8871ad95f3c7',0,0,NULL,NULL,NULL,NULL,'','Test SFO 6','','','','',0,0,0,0),(21176,20199,20155,21171,'Test SFO 7','2017-01-09 16:28:35','2017-01-09 16:28:35',20005,21171,'ea20ff27-655e-438f-bf53-9ac1b76effed',0,0,NULL,NULL,NULL,NULL,'','Test SFO 7','','','','',0,0,0,0),(21182,20199,20155,21177,'Test SFO 8','2017-01-09 16:28:35','2017-01-09 16:28:35',20005,21177,'d9e8001e-8275-45da-b589-56a8fd9e1c79',0,0,NULL,NULL,NULL,NULL,'','Test SFO 8','','','','',0,0,0,0),(21188,20199,20155,21183,'Test SFO 9','2017-01-09 16:28:36','2017-01-09 16:28:36',20005,21183,'62105a41-ab4f-4dab-9aeb-b2dbd6158e58',0,0,NULL,NULL,NULL,NULL,'','Test SFO 9','','','','',0,0,0,0),(21194,20199,20155,21189,'Test SFO 10','2017-01-09 16:28:36','2017-01-09 16:28:36',20005,21189,'807803ce-f3ce-4c07-bcec-a574b7878700',0,0,NULL,NULL,NULL,NULL,'','Test SFO 10','','','','',0,0,0,0),(21203,20440,20155,20438,'Admin User','2017-01-09 16:28:36','2017-01-09 16:28:36',20116,21201,'0809fa04-dd12-4bfd-b2c7-a5011598d85d',0,0,NULL,NULL,NULL,NULL,'text/html','21199','','','','',0,0,0,0),(21209,20440,20155,20438,'Admin User','2017-01-09 16:28:37','2017-01-09 16:28:37',20116,21207,'69968a83-51bd-4865-8430-c52c236cfabe',0,0,NULL,NULL,NULL,NULL,'text/html','21205','','','','',0,0,0,0),(21225,20199,20155,20438,'Admin User','2017-01-09 16:31:39','2017-06-20 05:40:48',20005,21220,'c1e91c7d-d8f9-45a4-896c-884ed7c571e1',0,0,NULL,NULL,NULL,NULL,'','doctor','','','','',0,0,0,0),(21234,20199,20155,20438,'Admin User','2017-01-09 16:32:38','2017-06-20 05:41:04',20005,21229,'2cbb2b38-9d1a-4e45-8b92-1b214d463bfb',0,0,NULL,NULL,NULL,NULL,'','pharmacist','','','','',0,0,0,0),(21505,21222,20155,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',20116,21503,'d3362309-01a9-4134-a757-1052e1e35dfc',0,0,NULL,NULL,NULL,NULL,'text/html','21501','','','','',0,0,0,0),(21511,21222,20155,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',20116,21509,'c881cf01-2698-4abd-8039-cb5926095a40',0,0,NULL,NULL,NULL,NULL,'text/html','21507','','','','',0,0,0,0),(21707,20199,20155,20438,'Admin User','2017-03-28 11:54:13','2017-06-20 05:41:22',20005,21702,'612b7ca2-4929-48b6-bba4-ad0beff38d04',0,0,NULL,NULL,NULL,NULL,'','nurse','','','','',0,0,0,0),(21716,21704,20155,21702,'nurse','2017-03-28 11:55:46','2017-03-28 11:55:46',20116,21714,'b4cc7fd9-c6f5-4164-aa35-feab6fe1f5e0',0,0,NULL,NULL,NULL,NULL,'text/html','21712','','','','',0,0,0,0),(21722,21704,20155,21702,'nurse','2017-03-28 11:55:48','2017-03-28 11:55:48',20116,21720,'f160c6b3-ebcc-416b-b614-c087e4ff6ef0',0,0,NULL,NULL,NULL,NULL,'text/html','21718','','','','',0,0,0,0),(21905,21231,20155,21229,'pharmacist','2017-04-04 12:47:10','2017-04-04 12:47:10',20116,21903,'845cedc3-43e8-42f8-b5d9-be6beb9d4345',0,0,NULL,NULL,NULL,NULL,'text/html','21901','','','','',0,0,0,0),(21911,21231,20155,21229,'pharmacist','2017-04-04 12:47:11','2017-04-04 12:47:11',20116,21909,'23c48185-0bd7-4b26-b932-87cb9ea3a0c3',0,0,NULL,NULL,NULL,NULL,'text/html','21907','','','','',0,0,0,0),(22105,20186,20155,20438,'Admin User','2017-06-08 14:26:31','2017-06-08 14:26:31',20116,22103,'51d0e7c1-e2ac-46e0-aa86-b6740eeb1dc2',0,0,NULL,NULL,NULL,NULL,'text/html','22101','','','','',0,0,0,0),(22306,20199,20155,20438,'Admin User','2017-10-17 05:17:19','2017-10-17 05:18:03',20005,22301,'15c96423-481d-4acc-96c0-1cbc384b4276',0,0,NULL,NULL,NULL,NULL,'','testdoctor','','','','',0,0,0,0),(22314,22303,20155,22301,'testdoctor','2017-10-17 05:18:16','2017-10-17 05:18:16',20116,22312,'9275babb-0a6a-4001-9892-9f883fa03ba1',0,0,NULL,NULL,NULL,NULL,'text/html','22310','','','','',0,0,0,0),(22320,22303,20155,22301,'testdoctor','2017-10-17 05:18:17','2017-10-17 05:18:17',20116,22318,'302e8a93-fcd8-4df7-bebb-8d252bc46f15',0,0,NULL,NULL,NULL,NULL,'text/html','22316','','','','',0,0,0,0);
/*!40000 ALTER TABLE `assetentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetlink`
--

DROP TABLE IF EXISTS `assetlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetlink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`),
  UNIQUE KEY `IX_8F542794` (`entryId1`,`entryId2`,`type_`),
  KEY `IX_128516C8` (`entryId1`),
  KEY `IX_56E0AB21` (`entryId1`,`entryId2`),
  KEY `IX_14D5A20D` (`entryId1`,`type_`),
  KEY `IX_12851A89` (`entryId2`),
  KEY `IX_91F132C` (`entryId2`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetlink`
--

LOCK TABLES `assetlink` WRITE;
/*!40000 ALTER TABLE `assetlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettag`
--

DROP TABLE IF EXISTS `assettag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`),
  KEY `IX_7C9E46BA` (`groupId`),
  KEY `IX_D63322F9` (`groupId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettag`
--

LOCK TABLES `assettag` WRITE;
/*!40000 ALTER TABLE `assettag` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettagproperty`
--

DROP TABLE IF EXISTS `assettagproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettagproperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`),
  UNIQUE KEY `IX_2C944354` (`tagId`,`key_`),
  KEY `IX_DFF1F063` (`companyId`),
  KEY `IX_13805BF7` (`companyId`,`key_`),
  KEY `IX_3269E180` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettagproperty`
--

LOCK TABLES `assettagproperty` WRITE;
/*!40000 ALTER TABLE `assettagproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettagproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettagstats`
--

DROP TABLE IF EXISTS `assettagstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettagstats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`),
  UNIQUE KEY `IX_56682CC4` (`tagId`,`classNameId`),
  KEY `IX_50702693` (`classNameId`),
  KEY `IX_9464CA` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettagstats`
--

LOCK TABLES `assettagstats` WRITE;
/*!40000 ALTER TABLE `assettagstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettagstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetvocabulary`
--

DROP TABLE IF EXISTS `assetvocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetvocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`),
  UNIQUE KEY `IX_1B2B8792` (`uuid_`,`groupId`),
  KEY `IX_B22D908C` (`companyId`),
  KEY `IX_B6B8CA0E` (`groupId`),
  KEY `IX_C0AAD74D` (`groupId`,`name`),
  KEY `IX_55F58818` (`uuid_`),
  KEY `IX_C4E6FD10` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetvocabulary`
--

LOCK TABLES `assetvocabulary` WRITE;
/*!40000 ALTER TABLE `assetvocabulary` DISABLE KEYS */;
INSERT INTO `assetvocabulary` VALUES ('a054b5c8-1b3d-4771-9264-5f01f168e85f',20328,20199,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `assetvocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backgroundtask`
--

DROP TABLE IF EXISTS `backgroundtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backgroundtask` (
  `backgroundTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `servletContextNames` varchar(255) DEFAULT NULL,
  `taskExecutorClassName` varchar(200) DEFAULT NULL,
  `taskContext` longtext,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusMessage` longtext,
  PRIMARY KEY (`backgroundTaskId`),
  KEY `IX_C5A6C78F` (`companyId`),
  KEY `IX_5A09E5D1` (`groupId`),
  KEY `IX_98CC0AAB` (`groupId`,`name`,`taskExecutorClassName`),
  KEY `IX_579C63B0` (`groupId`,`name`,`taskExecutorClassName`,`completed`),
  KEY `IX_C71C3B7` (`groupId`,`status`),
  KEY `IX_A73B688A` (`groupId`,`taskExecutorClassName`),
  KEY `IX_7A9FF471` (`groupId`,`taskExecutorClassName`,`completed`),
  KEY `IX_7E757D70` (`groupId`,`taskExecutorClassName`,`status`),
  KEY `IX_C07CC7F8` (`name`),
  KEY `IX_75638CDF` (`status`),
  KEY `IX_2FCFE748` (`taskExecutorClassName`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backgroundtask`
--

LOCK TABLES `backgroundtask` WRITE;
/*!40000 ALTER TABLE `backgroundtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `backgroundtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogsentry`
--

DROP TABLE IF EXISTS `blogsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogsentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_DB780A20` (`groupId`,`urlTitle`),
  UNIQUE KEY `IX_1B1040FD` (`uuid_`,`groupId`),
  KEY `IX_72EF6041` (`companyId`),
  KEY `IX_430D791F` (`companyId`,`displayDate`),
  KEY `IX_BB0C2905` (`companyId`,`displayDate`,`status`),
  KEY `IX_EB2DCE27` (`companyId`,`status`),
  KEY `IX_8CACE77B` (`companyId`,`userId`),
  KEY `IX_A5F57B61` (`companyId`,`userId`,`status`),
  KEY `IX_2672F77F` (`displayDate`,`status`),
  KEY `IX_81A50303` (`groupId`),
  KEY `IX_621E19D` (`groupId`,`displayDate`),
  KEY `IX_F0E73383` (`groupId`,`displayDate`,`status`),
  KEY `IX_1EFD8EE9` (`groupId`,`status`),
  KEY `IX_FBDE0AA3` (`groupId`,`userId`,`displayDate`),
  KEY `IX_DA04F689` (`groupId`,`userId`,`displayDate`,`status`),
  KEY `IX_49E15A23` (`groupId`,`userId`,`status`),
  KEY `IX_69157A4D` (`uuid_`),
  KEY `IX_5E8307BB` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogsentry`
--

LOCK TABLES `blogsentry` WRITE;
/*!40000 ALTER TABLE `blogsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogsstatsuser`
--

DROP TABLE IF EXISTS `blogsstatsuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogsstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_82254C25` (`groupId`,`userId`),
  KEY `IX_90CDA39A` (`companyId`,`entryCount`),
  KEY `IX_43840EEB` (`groupId`),
  KEY `IX_28C78D5C` (`groupId`,`entryCount`),
  KEY `IX_BB51F1D9` (`userId`),
  KEY `IX_507BA031` (`userId`,`lastPostDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogsstatsuser`
--

LOCK TABLES `blogsstatsuser` WRITE;
/*!40000 ALTER TABLE `blogsstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsstatsuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarksentry`
--

DROP TABLE IF EXISTS `bookmarksentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarksentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_EAA02A91` (`uuid_`,`groupId`),
  KEY `IX_1F90CA2D` (`companyId`),
  KEY `IX_276C8C13` (`companyId`,`status`),
  KEY `IX_5200100C` (`groupId`,`folderId`),
  KEY `IX_146382F2` (`groupId`,`folderId`,`status`),
  KEY `IX_416AD7D5` (`groupId`,`status`),
  KEY `IX_C78B61AC` (`groupId`,`userId`,`folderId`,`status`),
  KEY `IX_9D9CF70F` (`groupId`,`userId`,`status`),
  KEY `IX_E848278F` (`resourceBlockId`),
  KEY `IX_B670BA39` (`uuid_`),
  KEY `IX_89BEDC4F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarksentry`
--

LOCK TABLES `bookmarksentry` WRITE;
/*!40000 ALTER TABLE `bookmarksentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarksfolder`
--

DROP TABLE IF EXISTS `bookmarksfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarksfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_DC2F8927` (`uuid_`,`groupId`),
  KEY `IX_2ABA25D7` (`companyId`),
  KEY `IX_C27C9DBD` (`companyId`,`status`),
  KEY `IX_7F703619` (`groupId`),
  KEY `IX_967799C0` (`groupId`,`parentFolderId`),
  KEY `IX_D16018A6` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_28A49BB9` (`resourceBlockId`),
  KEY `IX_451E7AE3` (`uuid_`),
  KEY `IX_54F0ED65` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarksfolder`
--

LOCK TABLES `bookmarksfolder` WRITE;
/*!40000 ALTER TABLE `bookmarksfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `browsertracker`
--

DROP TABLE IF EXISTS `browsertracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `browsertracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`),
  UNIQUE KEY `IX_E7B95510` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browsertracker`
--

LOCK TABLES `browsertracker` WRITE;
/*!40000 ALTER TABLE `browsertracker` DISABLE KEYS */;
INSERT INTO `browsertracker` VALUES (21214,20438,49310860253),(21514,21220,1370921848339),(21725,21702,67472496423),(21914,21229,1494721871570),(22323,22301,1150641420987);
/*!40000 ALTER TABLE `browsertracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `defaultCalendar` tinyint(4) DEFAULT NULL,
  `enableComments` tinyint(4) DEFAULT NULL,
  `enableRatings` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarId`),
  UNIQUE KEY `IX_3AE311A` (`uuid_`,`groupId`),
  KEY `IX_B53EB0E1` (`groupId`,`calendarResourceId`),
  KEY `IX_97FC174E` (`groupId`,`calendarResourceId`,`defaultCalendar`),
  KEY `IX_F0FAF226` (`resourceBlockId`),
  KEY `IX_96C8590` (`uuid_`),
  KEY `IX_97656498` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendarbooking`
--

DROP TABLE IF EXISTS `calendarbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarbooking` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarBookingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `parentCalendarBookingId` bigint(20) DEFAULT NULL,
  `vEventUid` varchar(255) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `location` longtext,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `firstReminder` bigint(20) DEFAULT NULL,
  `firstReminderType` varchar(75) DEFAULT NULL,
  `secondReminder` bigint(20) DEFAULT NULL,
  `secondReminderType` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`calendarBookingId`),
  UNIQUE KEY `IX_113A264E` (`calendarId`,`parentCalendarBookingId`),
  UNIQUE KEY `IX_8B23DA0E` (`calendarId`,`vEventUid`),
  UNIQUE KEY `IX_F4C61797` (`uuid_`,`groupId`),
  KEY `IX_D300DFCE` (`calendarId`),
  KEY `IX_470170B4` (`calendarId`,`status`),
  KEY `IX_B198FFC` (`calendarResourceId`),
  KEY `IX_57EBF55B` (`parentCalendarBookingId`),
  KEY `IX_F7B8A941` (`parentCalendarBookingId`,`status`),
  KEY `IX_22DFDB49` (`resourceBlockId`),
  KEY `IX_F6E8EE73` (`uuid_`),
  KEY `IX_A21D9FD5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendarbooking`
--

LOCK TABLES `calendarbooking` WRITE;
/*!40000 ALTER TABLE `calendarbooking` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendarbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendarnotificationtemplate`
--

DROP TABLE IF EXISTS `calendarnotificationtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarnotificationtemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarNotificationTemplateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `notificationType` varchar(75) DEFAULT NULL,
  `notificationTypeSettings` varchar(75) DEFAULT NULL,
  `notificationTemplateType` varchar(75) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  PRIMARY KEY (`calendarNotificationTemplateId`),
  UNIQUE KEY `IX_4012E97F` (`uuid_`,`groupId`),
  KEY `IX_A412E5B6` (`calendarId`),
  KEY `IX_7727A482` (`calendarId`,`notificationType`,`notificationTemplateType`),
  KEY `IX_A2D4D78B` (`uuid_`),
  KEY `IX_4D7D97BD` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendarnotificationtemplate`
--

LOCK TABLES `calendarnotificationtemplate` WRITE;
/*!40000 ALTER TABLE `calendarnotificationtemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendarnotificationtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendarresource`
--

DROP TABLE IF EXISTS `calendarresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarResourceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarResourceId`),
  UNIQUE KEY `IX_16A12327` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_4ABD2BC8` (`uuid_`,`groupId`),
  KEY `IX_76DDD0F7` (`active_`),
  KEY `IX_4470A59D` (`companyId`,`code_`,`active_`),
  KEY `IX_1243D698` (`groupId`),
  KEY `IX_40678371` (`groupId`,`active_`),
  KEY `IX_55C2F8AA` (`groupId`,`code_`),
  KEY `IX_8BCB4D38` (`resourceBlockId`),
  KEY `IX_150E2F22` (`uuid_`),
  KEY `IX_56A06BC6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendarresource`
--

LOCK TABLES `calendarresource` WRITE;
/*!40000 ALTER TABLE `calendarresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendarresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calevent`
--

DROP TABLE IF EXISTS `calevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `IX_5CCE79C8` (`uuid_`,`groupId`),
  KEY `IX_D6FD9496` (`companyId`),
  KEY `IX_12EE4898` (`groupId`),
  KEY `IX_4FDDD2BF` (`groupId`,`repeating`),
  KEY `IX_FCD7C63D` (`groupId`,`type_`),
  KEY `IX_FD93CBFA` (`groupId`,`type_`,`repeating`),
  KEY `IX_F6006202` (`remindBy`),
  KEY `IX_C1AD2122` (`uuid_`),
  KEY `IX_299639C6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calevent`
--

LOCK TABLES `calevent` WRITE;
/*!40000 ALTER TABLE `calevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `calevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classname_`
--

DROP TABLE IF EXISTS `classname_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classname_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`),
  UNIQUE KEY `IX_B27A301F` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classname_`
--

LOCK TABLES `classname_` WRITE;
/*!40000 ALTER TABLE `classname_` DISABLE KEYS */;
INSERT INTO `classname_` VALUES (20450,'com.liferay.calendar.model.Calendar'),(20451,'com.liferay.calendar.model.CalendarBooking'),(20452,'com.liferay.calendar.model.CalendarNotificationTemplate'),(20453,'com.liferay.calendar.model.CalendarResource'),(20017,'com.liferay.counter.model.Counter'),(20444,'com.liferay.marketplace.model.App'),(20445,'com.liferay.marketplace.model.Module'),(20519,'com.liferay.notifications.model.UserNotificationEvent'),(20509,'com.liferay.opensocial.model.Gadget'),(20510,'com.liferay.opensocial.model.OAuthConsumer'),(20511,'com.liferay.opensocial.model.OAuthToken'),(20426,'com.liferay.portal.kernel.repository.model.FileEntry'),(20018,'com.liferay.portal.kernel.workflow.WorkflowTask'),(20019,'com.liferay.portal.model.Account'),(20020,'com.liferay.portal.model.Address'),(20021,'com.liferay.portal.model.BackgroundTask'),(20022,'com.liferay.portal.model.BrowserTracker'),(20023,'com.liferay.portal.model.ClassName'),(20024,'com.liferay.portal.model.ClusterGroup'),(20025,'com.liferay.portal.model.Company'),(20026,'com.liferay.portal.model.Contact'),(20027,'com.liferay.portal.model.Country'),(20028,'com.liferay.portal.model.EmailAddress'),(20001,'com.liferay.portal.model.Group'),(20029,'com.liferay.portal.model.Image'),(20002,'com.liferay.portal.model.Layout'),(20030,'com.liferay.portal.model.LayoutBranch'),(20031,'com.liferay.portal.model.LayoutFriendlyURL'),(20032,'com.liferay.portal.model.LayoutPrototype'),(20033,'com.liferay.portal.model.LayoutRevision'),(20034,'com.liferay.portal.model.LayoutSet'),(20035,'com.liferay.portal.model.LayoutSetBranch'),(20036,'com.liferay.portal.model.LayoutSetPrototype'),(20037,'com.liferay.portal.model.ListType'),(20038,'com.liferay.portal.model.Lock'),(20039,'com.liferay.portal.model.MembershipRequest'),(20003,'com.liferay.portal.model.Organization'),(20040,'com.liferay.portal.model.OrgGroupRole'),(20041,'com.liferay.portal.model.OrgLabor'),(20042,'com.liferay.portal.model.PasswordPolicy'),(20043,'com.liferay.portal.model.PasswordPolicyRel'),(20044,'com.liferay.portal.model.PasswordTracker'),(20045,'com.liferay.portal.model.Phone'),(20046,'com.liferay.portal.model.PluginSetting'),(20047,'com.liferay.portal.model.PortalPreferences'),(20048,'com.liferay.portal.model.Portlet'),(20049,'com.liferay.portal.model.PortletItem'),(20050,'com.liferay.portal.model.PortletPreferences'),(20051,'com.liferay.portal.model.Region'),(20052,'com.liferay.portal.model.Release'),(20053,'com.liferay.portal.model.Repository'),(20054,'com.liferay.portal.model.RepositoryEntry'),(20055,'com.liferay.portal.model.ResourceAction'),(20056,'com.liferay.portal.model.ResourceBlock'),(20057,'com.liferay.portal.model.ResourceBlockPermission'),(20058,'com.liferay.portal.model.ResourcePermission'),(20059,'com.liferay.portal.model.ResourceTypePermission'),(20004,'com.liferay.portal.model.Role'),(20060,'com.liferay.portal.model.ServiceComponent'),(20061,'com.liferay.portal.model.Shard'),(20062,'com.liferay.portal.model.Subscription'),(20063,'com.liferay.portal.model.SystemEvent'),(20064,'com.liferay.portal.model.Team'),(20065,'com.liferay.portal.model.Ticket'),(20005,'com.liferay.portal.model.User'),(20006,'com.liferay.portal.model.UserGroup'),(20066,'com.liferay.portal.model.UserGroupGroupRole'),(20067,'com.liferay.portal.model.UserGroupRole'),(20068,'com.liferay.portal.model.UserIdMapper'),(20069,'com.liferay.portal.model.UserNotificationDelivery'),(20070,'com.liferay.portal.model.UserNotificationEvent'),(20195,'com.liferay.portal.model.UserPersonalSite'),(20071,'com.liferay.portal.model.UserTracker'),(20072,'com.liferay.portal.model.UserTrackerPath'),(20073,'com.liferay.portal.model.VirtualHost'),(20074,'com.liferay.portal.model.WebDAVProps'),(20075,'com.liferay.portal.model.Website'),(20076,'com.liferay.portal.model.WorkflowDefinitionLink'),(20077,'com.liferay.portal.model.WorkflowInstanceLink'),(22204,'com.liferay.portal.repository.liferayrepository.LiferayRepository'),(20457,'com.liferay.portal.workflow.kaleo.model.KaleoAction'),(20458,'com.liferay.portal.workflow.kaleo.model.KaleoCondition'),(20459,'com.liferay.portal.workflow.kaleo.model.KaleoDefinition'),(20460,'com.liferay.portal.workflow.kaleo.model.KaleoInstance'),(20461,'com.liferay.portal.workflow.kaleo.model.KaleoInstanceToken'),(20462,'com.liferay.portal.workflow.kaleo.model.KaleoLog'),(20463,'com.liferay.portal.workflow.kaleo.model.KaleoNode'),(20464,'com.liferay.portal.workflow.kaleo.model.KaleoNotification'),(20465,'com.liferay.portal.workflow.kaleo.model.KaleoNotificationRecipient'),(20466,'com.liferay.portal.workflow.kaleo.model.KaleoTask'),(20467,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignment'),(20468,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignmentInstance'),(20469,'com.liferay.portal.workflow.kaleo.model.KaleoTaskInstanceToken'),(20470,'com.liferay.portal.workflow.kaleo.model.KaleoTimer'),(20471,'com.liferay.portal.workflow.kaleo.model.KaleoTimerInstanceToken'),(20472,'com.liferay.portal.workflow.kaleo.model.KaleoTransition'),(20078,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),(20079,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),(20080,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),(20081,'com.liferay.portlet.asset.model.AssetCategory'),(20082,'com.liferay.portlet.asset.model.AssetCategoryProperty'),(20083,'com.liferay.portlet.asset.model.AssetEntry'),(20084,'com.liferay.portlet.asset.model.AssetLink'),(20085,'com.liferay.portlet.asset.model.AssetTag'),(20086,'com.liferay.portlet.asset.model.AssetTagProperty'),(20087,'com.liferay.portlet.asset.model.AssetTagStats'),(20088,'com.liferay.portlet.asset.model.AssetVocabulary'),(20007,'com.liferay.portlet.blogs.model.BlogsEntry'),(20089,'com.liferay.portlet.blogs.model.BlogsStatsUser'),(20008,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),(20009,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),(20010,'com.liferay.portlet.calendar.model.CalEvent'),(20090,'com.liferay.portlet.documentlibrary.model.DLContent'),(20011,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),(20091,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),(20092,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),(20093,'com.liferay.portlet.documentlibrary.model.DLFileRank'),(20094,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),(20095,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),(20012,'com.liferay.portlet.documentlibrary.model.DLFolder'),(20096,'com.liferay.portlet.documentlibrary.model.DLSyncEvent'),(20318,'com.liferay.portlet.documentlibrary.util.RawMetadataProcessor'),(20097,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),(20098,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),(20099,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),(20100,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),(20101,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),(20102,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),(20103,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),(20104,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),(20105,'com.liferay.portlet.expando.model.ExpandoColumn'),(20106,'com.liferay.portlet.expando.model.ExpandoRow'),(20107,'com.liferay.portlet.expando.model.ExpandoTable'),(20108,'com.liferay.portlet.expando.model.ExpandoValue'),(20109,'com.liferay.portlet.journal.model.JournalArticle'),(20110,'com.liferay.portlet.journal.model.JournalArticleImage'),(20111,'com.liferay.portlet.journal.model.JournalArticleResource'),(20112,'com.liferay.portlet.journal.model.JournalContentSearch'),(20113,'com.liferay.portlet.journal.model.JournalFeed'),(20013,'com.liferay.portlet.journal.model.JournalFolder'),(20114,'com.liferay.portlet.messageboards.model.MBBan'),(20115,'com.liferay.portlet.messageboards.model.MBCategory'),(20116,'com.liferay.portlet.messageboards.model.MBDiscussion'),(20117,'com.liferay.portlet.messageboards.model.MBMailingList'),(20014,'com.liferay.portlet.messageboards.model.MBMessage'),(20118,'com.liferay.portlet.messageboards.model.MBStatsUser'),(20015,'com.liferay.portlet.messageboards.model.MBThread'),(20119,'com.liferay.portlet.messageboards.model.MBThreadFlag'),(20120,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),(20121,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),(20122,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),(20123,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),(20124,'com.liferay.portlet.polls.model.PollsChoice'),(20125,'com.liferay.portlet.polls.model.PollsQuestion'),(20126,'com.liferay.portlet.polls.model.PollsVote'),(20127,'com.liferay.portlet.ratings.model.RatingsEntry'),(20128,'com.liferay.portlet.ratings.model.RatingsStats'),(20129,'com.liferay.portlet.shopping.model.ShoppingCart'),(20130,'com.liferay.portlet.shopping.model.ShoppingCategory'),(20131,'com.liferay.portlet.shopping.model.ShoppingCoupon'),(20132,'com.liferay.portlet.shopping.model.ShoppingItem'),(20133,'com.liferay.portlet.shopping.model.ShoppingItemField'),(20134,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),(20135,'com.liferay.portlet.shopping.model.ShoppingOrder'),(20136,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),(20137,'com.liferay.portlet.social.model.SocialActivity'),(20138,'com.liferay.portlet.social.model.SocialActivityAchievement'),(20139,'com.liferay.portlet.social.model.SocialActivityCounter'),(20140,'com.liferay.portlet.social.model.SocialActivityLimit'),(20141,'com.liferay.portlet.social.model.SocialActivitySet'),(20142,'com.liferay.portlet.social.model.SocialActivitySetting'),(20143,'com.liferay.portlet.social.model.SocialRelation'),(20144,'com.liferay.portlet.social.model.SocialRequest'),(20145,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),(20146,'com.liferay.portlet.softwarecatalog.model.SCLicense'),(20147,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),(20148,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),(20149,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),(20150,'com.liferay.portlet.trash.model.TrashEntry'),(20151,'com.liferay.portlet.trash.model.TrashVersion'),(20152,'com.liferay.portlet.wiki.model.WikiNode'),(20016,'com.liferay.portlet.wiki.model.WikiPage'),(20153,'com.liferay.portlet.wiki.model.WikiPageResource'),(20505,'com.liferay.sync.model.SyncDLFileVersionDiff'),(20506,'com.liferay.sync.model.SyncDLObject');
/*!40000 ALTER TABLE `classname_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clustergroup`
--

DROP TABLE IF EXISTS `clustergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clustergroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clustergroup`
--

LOCK TABLES `clustergroup` WRITE;
/*!40000 ALTER TABLE `clustergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `clustergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `IX_EC00543C` (`webId`),
  KEY `IX_38EFE3FD` (`logoId`),
  KEY `IX_12566EC2` (`mx`),
  KEY `IX_35E3E7C6` (`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (20155,20157,'liferay.com','rO0ABXNyAB9qYXZheC5jcnlwdG8uc3BlYy5TZWNyZXRLZXlTcGVjW0cLZuIwYU0CAAJMAAlhbGdvcml0aG10ABJMamF2YS9sYW5nL1N0cmluZztbAANrZXl0AAJbQnhwdAADQUVTdXIAAltCrPMX+AYIVOACAAB4cAAAABBlrZtLI9axKbJGTsvaIgSZ','liferay.com','',22211,0,0,1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_`
--

DROP TABLE IF EXISTS `contact_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `IX_B8C28C53` (`accountId`),
  KEY `IX_791914FA` (`classNameId`,`classPK`),
  KEY `IX_66D496A3` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_`
--

LOCK TABLES `contact_` WRITE;
/*!40000 ALTER TABLE `contact_` DISABLE KEYS */;
INSERT INTO `contact_` VALUES (20160,20155,20159,'','2017-01-09 16:25:43','2017-01-09 16:25:43',20005,20159,20157,0,'default@liferay.com','','','',0,0,1,'2017-01-09 16:25:43','','','','','','','','','','','','','','',''),(20204,20155,20203,'','2017-01-09 16:25:45','2017-01-09 16:25:45',20005,20203,20157,0,'test@liferay.com','Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20439,20155,20438,'','2017-01-09 16:27:22','2017-06-20 05:38:58',20005,20438,20157,0,'admin@openncp.com','Admin','','User',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20544,20155,20543,'','2017-01-09 16:28:05','2017-01-09 16:28:05',20005,20543,20157,0,'test.ord.1@liferay.com','Test','','ORD 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20550,20155,20549,'','2017-01-09 16:28:06','2017-01-09 16:28:06',20005,20549,20157,0,'test.ord.2@liferay.com','Test','','ORD 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20556,20155,20555,'','2017-01-09 16:28:06','2017-01-09 16:28:06',20005,20555,20157,0,'test.ord.3@liferay.com','Test','','ORD 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20562,20155,20561,'','2017-01-09 16:28:07','2017-01-09 16:28:07',20005,20561,20157,0,'test.ord.4@liferay.com','Test','','ORD 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20568,20155,20567,'','2017-01-09 16:28:07','2017-01-09 16:28:07',20005,20567,20157,0,'test.ord.5@liferay.com','Test','','ORD 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20574,20155,20573,'','2017-01-09 16:28:07','2017-01-09 16:28:07',20005,20573,20157,0,'test.ord.6@liferay.com','Test','','ORD 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20580,20155,20579,'','2017-01-09 16:28:08','2017-01-09 16:28:08',20005,20579,20157,0,'test.ord.7@liferay.com','Test','','ORD 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20586,20155,20585,'','2017-01-09 16:28:08','2017-01-09 16:28:08',20005,20585,20157,0,'test.ord.8@liferay.com','Test','','ORD 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20592,20155,20591,'','2017-01-09 16:28:08','2017-01-09 16:28:08',20005,20591,20157,0,'test.ord.9@liferay.com','Test','','ORD 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20598,20155,20597,'','2017-01-09 16:28:08','2017-01-09 16:28:08',20005,20597,20157,0,'test.ord.10@liferay.com','Test','','ORD 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20612,20155,20611,'','2017-01-09 16:28:09','2017-01-09 16:28:09',20005,20611,20157,0,'test.dlc.1@liferay.com','Test','','DLC 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20618,20155,20617,'','2017-01-09 16:28:09','2017-01-09 16:28:09',20005,20617,20157,0,'test.dlc.2@liferay.com','Test','','DLC 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20624,20155,20623,'','2017-01-09 16:28:09','2017-01-09 16:28:09',20005,20623,20157,0,'test.dlc.3@liferay.com','Test','','DLC 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20630,20155,20629,'','2017-01-09 16:28:10','2017-01-09 16:28:10',20005,20629,20157,0,'test.dlc.4@liferay.com','Test','','DLC 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20636,20155,20635,'','2017-01-09 16:28:10','2017-01-09 16:28:10',20005,20635,20157,0,'test.dlc.5@liferay.com','Test','','DLC 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20642,20155,20641,'','2017-01-09 16:28:10','2017-01-09 16:28:10',20005,20641,20157,0,'test.dlc.6@liferay.com','Test','','DLC 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20648,20155,20647,'','2017-01-09 16:28:11','2017-01-09 16:28:11',20005,20647,20157,0,'test.dlc.7@liferay.com','Test','','DLC 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20654,20155,20653,'','2017-01-09 16:28:11','2017-01-09 16:28:11',20005,20653,20157,0,'test.dlc.8@liferay.com','Test','','DLC 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20660,20155,20659,'','2017-01-09 16:28:11','2017-01-09 16:28:11',20005,20659,20157,0,'test.dlc.9@liferay.com','Test','','DLC 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20666,20155,20665,'','2017-01-09 16:28:12','2017-01-09 16:28:12',20005,20665,20157,0,'test.dlc.10@liferay.com','Test','','DLC 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20680,20155,20679,'','2017-01-09 16:28:12','2017-01-09 16:28:12',20005,20679,20157,0,'test.fra.1@liferay.com','Test','','FRA 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20686,20155,20685,'','2017-01-09 16:28:12','2017-01-09 16:28:12',20005,20685,20157,0,'test.fra.2@liferay.com','Test','','FRA 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20692,20155,20691,'','2017-01-09 16:28:13','2017-01-09 16:28:13',20005,20691,20157,0,'test.fra.3@liferay.com','Test','','FRA 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20698,20155,20697,'','2017-01-09 16:28:13','2017-01-09 16:28:13',20005,20697,20157,0,'test.fra.4@liferay.com','Test','','FRA 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20704,20155,20703,'','2017-01-09 16:28:13','2017-01-09 16:28:13',20005,20703,20157,0,'test.fra.5@liferay.com','Test','','FRA 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20710,20155,20709,'','2017-01-09 16:28:14','2017-01-09 16:28:14',20005,20709,20157,0,'test.fra.6@liferay.com','Test','','FRA 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20716,20155,20715,'','2017-01-09 16:28:14','2017-01-09 16:28:14',20005,20715,20157,0,'test.fra.7@liferay.com','Test','','FRA 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20722,20155,20721,'','2017-01-09 16:28:14','2017-01-09 16:28:14',20005,20721,20157,0,'test.fra.8@liferay.com','Test','','FRA 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20728,20155,20727,'','2017-01-09 16:28:14','2017-01-09 16:28:14',20005,20727,20157,0,'test.fra.9@liferay.com','Test','','FRA 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20734,20155,20733,'','2017-01-09 16:28:15','2017-01-09 16:28:15',20005,20733,20157,0,'test.fra.10@liferay.com','Test','','FRA 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20744,20155,20743,'','2017-01-09 16:28:15','2017-01-09 16:28:15',20005,20743,20157,0,'test.hkg.1@liferay.com','Test','','HKG 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20750,20155,20749,'','2017-01-09 16:28:15','2017-01-09 16:28:15',20005,20749,20157,0,'test.hkg.2@liferay.com','Test','','HKG 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20756,20155,20755,'','2017-01-09 16:28:16','2017-01-09 16:28:16',20005,20755,20157,0,'test.hkg.3@liferay.com','Test','','HKG 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20762,20155,20761,'','2017-01-09 16:28:16','2017-01-09 16:28:16',20005,20761,20157,0,'test.hkg.4@liferay.com','Test','','HKG 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20768,20155,20767,'','2017-01-09 16:28:16','2017-01-09 16:28:16',20005,20767,20157,0,'test.hkg.5@liferay.com','Test','','HKG 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20774,20155,20773,'','2017-01-09 16:28:17','2017-01-09 16:28:17',20005,20773,20157,0,'test.hkg.6@liferay.com','Test','','HKG 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20780,20155,20779,'','2017-01-09 16:28:17','2017-01-09 16:28:17',20005,20779,20157,0,'test.hkg.7@liferay.com','Test','','HKG 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20786,20155,20785,'','2017-01-09 16:28:17','2017-01-09 16:28:17',20005,20785,20157,0,'test.hkg.8@liferay.com','Test','','HKG 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20792,20155,20791,'','2017-01-09 16:28:17','2017-01-09 16:28:17',20005,20791,20157,0,'test.hkg.9@liferay.com','Test','','HKG 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20798,20155,20797,'','2017-01-09 16:28:18','2017-01-09 16:28:18',20005,20797,20157,0,'test.hkg.10@liferay.com','Test','','HKG 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20808,20155,20807,'','2017-01-09 16:28:18','2017-01-09 16:28:18',20005,20807,20157,0,'test.kul.1@liferay.com','Test','','KUL 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20814,20155,20813,'','2017-01-09 16:28:18','2017-01-09 16:28:18',20005,20813,20157,0,'test.kul.2@liferay.com','Test','','KUL 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20820,20155,20819,'','2017-01-09 16:28:19','2017-01-09 16:28:19',20005,20819,20157,0,'test.kul.3@liferay.com','Test','','KUL 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20826,20155,20825,'','2017-01-09 16:28:19','2017-01-09 16:28:19',20005,20825,20157,0,'test.kul.4@liferay.com','Test','','KUL 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20832,20155,20831,'','2017-01-09 16:28:19','2017-01-09 16:28:19',20005,20831,20157,0,'test.kul.5@liferay.com','Test','','KUL 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20838,20155,20837,'','2017-01-09 16:28:19','2017-01-09 16:28:19',20005,20837,20157,0,'test.kul.6@liferay.com','Test','','KUL 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20844,20155,20843,'','2017-01-09 16:28:20','2017-01-09 16:28:20',20005,20843,20157,0,'test.kul.7@liferay.com','Test','','KUL 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20850,20155,20849,'','2017-01-09 16:28:20','2017-01-09 16:28:20',20005,20849,20157,0,'test.kul.8@liferay.com','Test','','KUL 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20856,20155,20855,'','2017-01-09 16:28:20','2017-01-09 16:28:20',20005,20855,20157,0,'test.kul.9@liferay.com','Test','','KUL 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20862,20155,20861,'','2017-01-09 16:28:21','2017-01-09 16:28:21',20005,20861,20157,0,'test.kul.10@liferay.com','Test','','KUL 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20872,20155,20871,'','2017-01-09 16:28:21','2017-01-09 16:28:21',20005,20871,20157,0,'test.lax.1@liferay.com','Test','','LAX 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20878,20155,20877,'','2017-01-09 16:28:21','2017-01-09 16:28:21',20005,20877,20157,0,'test.lax.2@liferay.com','Test','','LAX 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20884,20155,20883,'','2017-01-09 16:28:22','2017-01-09 16:28:22',20005,20883,20157,0,'test.lax.3@liferay.com','Test','','LAX 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20890,20155,20889,'','2017-01-09 16:28:22','2017-01-09 16:28:22',20005,20889,20157,0,'test.lax.4@liferay.com','Test','','LAX 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20896,20155,20895,'','2017-01-09 16:28:22','2017-01-09 16:28:22',20005,20895,20157,0,'test.lax.5@liferay.com','Test','','LAX 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20902,20155,20901,'','2017-01-09 16:28:22','2017-01-09 16:28:22',20005,20901,20157,0,'test.lax.6@liferay.com','Test','','LAX 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20908,20155,20907,'','2017-01-09 16:28:23','2017-01-09 16:28:23',20005,20907,20157,0,'test.lax.7@liferay.com','Test','','LAX 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20914,20155,20913,'','2017-01-09 16:28:23','2017-01-09 16:28:23',20005,20913,20157,0,'test.lax.8@liferay.com','Test','','LAX 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20920,20155,20919,'','2017-01-09 16:28:23','2017-01-09 16:28:23',20005,20919,20157,0,'test.lax.9@liferay.com','Test','','LAX 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20926,20155,20925,'','2017-01-09 16:28:24','2017-01-09 16:28:24',20005,20925,20157,0,'test.lax.10@liferay.com','Test','','LAX 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20936,20155,20935,'','2017-01-09 16:28:24','2017-01-09 16:28:24',20005,20935,20157,0,'test.mad.1@liferay.com','Test','','MAD 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20942,20155,20941,'','2017-01-09 16:28:24','2017-01-09 16:28:24',20005,20941,20157,0,'test.mad.2@liferay.com','Test','','MAD 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20948,20155,20947,'','2017-01-09 16:28:25','2017-01-09 16:28:25',20005,20947,20157,0,'test.mad.3@liferay.com','Test','','MAD 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20954,20155,20953,'','2017-01-09 16:28:25','2017-01-09 16:28:25',20005,20953,20157,0,'test.mad.4@liferay.com','Test','','MAD 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20960,20155,20959,'','2017-01-09 16:28:25','2017-01-09 16:28:25',20005,20959,20157,0,'test.mad.5@liferay.com','Test','','MAD 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20966,20155,20965,'','2017-01-09 16:28:25','2017-01-09 16:28:25',20005,20965,20157,0,'test.mad.6@liferay.com','Test','','MAD 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20972,20155,20971,'','2017-01-09 16:28:26','2017-01-09 16:28:26',20005,20971,20157,0,'test.mad.7@liferay.com','Test','','MAD 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20978,20155,20977,'','2017-01-09 16:28:26','2017-01-09 16:28:26',20005,20977,20157,0,'test.mad.8@liferay.com','Test','','MAD 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20984,20155,20983,'','2017-01-09 16:28:26','2017-01-09 16:28:26',20005,20983,20157,0,'test.mad.9@liferay.com','Test','','MAD 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(20990,20155,20989,'','2017-01-09 16:28:27','2017-01-09 16:28:27',20005,20989,20157,0,'test.mad.10@liferay.com','Test','','MAD 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21004,20155,21003,'','2017-01-09 16:28:27','2017-01-09 16:28:27',20005,21003,20157,0,'test.nyc.1@liferay.com','Test','','NYC 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21010,20155,21009,'','2017-01-09 16:28:27','2017-01-09 16:28:27',20005,21009,20157,0,'test.nyc.2@liferay.com','Test','','NYC 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21016,20155,21015,'','2017-01-09 16:28:28','2017-01-09 16:28:28',20005,21015,20157,0,'test.nyc.3@liferay.com','Test','','NYC 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21022,20155,21021,'','2017-01-09 16:28:28','2017-01-09 16:28:28',20005,21021,20157,0,'test.nyc.4@liferay.com','Test','','NYC 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21028,20155,21027,'','2017-01-09 16:28:28','2017-01-09 16:28:28',20005,21027,20157,0,'test.nyc.5@liferay.com','Test','','NYC 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21034,20155,21033,'','2017-01-09 16:28:29','2017-01-09 16:28:29',20005,21033,20157,0,'test.nyc.6@liferay.com','Test','','NYC 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21040,20155,21039,'','2017-01-09 16:28:29','2017-01-09 16:28:29',20005,21039,20157,0,'test.nyc.7@liferay.com','Test','','NYC 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21046,20155,21045,'','2017-01-09 16:28:29','2017-01-09 16:28:29',20005,21045,20157,0,'test.nyc.8@liferay.com','Test','','NYC 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21052,20155,21051,'','2017-01-09 16:28:30','2017-01-09 16:28:30',20005,21051,20157,0,'test.nyc.9@liferay.com','Test','','NYC 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21058,20155,21057,'','2017-01-09 16:28:30','2017-01-09 16:28:30',20005,21057,20157,0,'test.nyc.10@liferay.com','Test','','NYC 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21068,20155,21067,'','2017-01-09 16:28:30','2017-01-09 16:28:30',20005,21067,20157,0,'test.gru.1@liferay.com','Test','','GRU 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21074,20155,21073,'','2017-01-09 16:28:30','2017-01-09 16:28:30',20005,21073,20157,0,'test.gru.2@liferay.com','Test','','GRU 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21080,20155,21079,'','2017-01-09 16:28:31','2017-01-09 16:28:31',20005,21079,20157,0,'test.gru.3@liferay.com','Test','','GRU 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21086,20155,21085,'','2017-01-09 16:28:31','2017-01-09 16:28:31',20005,21085,20157,0,'test.gru.4@liferay.com','Test','','GRU 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21092,20155,21091,'','2017-01-09 16:28:31','2017-01-09 16:28:31',20005,21091,20157,0,'test.gru.5@liferay.com','Test','','GRU 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21098,20155,21097,'','2017-01-09 16:28:32','2017-01-09 16:28:32',20005,21097,20157,0,'test.gru.6@liferay.com','Test','','GRU 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21104,20155,21103,'','2017-01-09 16:28:32','2017-01-09 16:28:32',20005,21103,20157,0,'test.gru.7@liferay.com','Test','','GRU 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21110,20155,21109,'','2017-01-09 16:28:32','2017-01-09 16:28:32',20005,21109,20157,0,'test.gru.8@liferay.com','Test','','GRU 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21116,20155,21115,'','2017-01-09 16:28:32','2017-01-09 16:28:32',20005,21115,20157,0,'test.gru.9@liferay.com','Test','','GRU 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21122,20155,21121,'','2017-01-09 16:28:33','2017-01-09 16:28:33',20005,21121,20157,0,'test.gru.10@liferay.com','Test','','GRU 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21136,20155,21135,'','2017-01-09 16:28:33','2017-01-09 16:28:33',20005,21135,20157,0,'test.sfo.1@liferay.com','Test','','SFO 1',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21142,20155,21141,'','2017-01-09 16:28:34','2017-01-09 16:28:34',20005,21141,20157,0,'test.sfo.2@liferay.com','Test','','SFO 2',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21148,20155,21147,'','2017-01-09 16:28:34','2017-01-09 16:28:34',20005,21147,20157,0,'test.sfo.3@liferay.com','Test','','SFO 3',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21154,20155,21153,'','2017-01-09 16:28:34','2017-01-09 16:28:34',20005,21153,20157,0,'test.sfo.4@liferay.com','Test','','SFO 4',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21160,20155,21159,'','2017-01-09 16:28:34','2017-01-09 16:28:34',20005,21159,20157,0,'test.sfo.5@liferay.com','Test','','SFO 5',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21166,20155,21165,'','2017-01-09 16:28:35','2017-01-09 16:28:35',20005,21165,20157,0,'test.sfo.6@liferay.com','Test','','SFO 6',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21172,20155,21171,'','2017-01-09 16:28:35','2017-01-09 16:28:35',20005,21171,20157,0,'test.sfo.7@liferay.com','Test','','SFO 7',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21178,20155,21177,'','2017-01-09 16:28:35','2017-01-09 16:28:35',20005,21177,20157,0,'test.sfo.8@liferay.com','Test','','SFO 8',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21184,20155,21183,'','2017-01-09 16:28:36','2017-01-09 16:28:36',20005,21183,20157,0,'test.sfo.9@liferay.com','Test','','SFO 9',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21190,20155,21189,'','2017-01-09 16:28:36','2017-01-09 16:28:36',20005,21189,20157,0,'test.sfo.10@liferay.com','Test','','SFO 10',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21221,20155,20438,'Admin User','2017-01-09 16:31:39','2017-06-20 05:40:48',20005,21220,20157,0,'doctor@openncp.com','doctor','','',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21230,20155,20438,'Admin User','2017-01-09 16:32:38','2017-06-20 05:41:04',20005,21229,20157,0,'pharmacist@openncp.com','pharmacist','','',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(21703,20155,20438,'Admin User','2017-03-28 11:54:13','2017-06-20 05:41:22',20005,21702,20157,0,'nurse@openncp.com','nurse','','',0,0,0,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(22302,20155,20438,'Admin User','2017-10-17 05:17:19','2017-10-17 05:18:03',20005,22301,20157,0,'testdoctor@gnomon.com.gr','testdoctor','','',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `contact_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES ('com.liferay.counter.model.Counter',22400),('com.liferay.portal.model.Layout#20177#true',1),('com.liferay.portal.model.Layout#20186#false',2),('com.liferay.portal.model.Layout#20321#true',1),('com.liferay.portal.model.Layout#20333#true',1),('com.liferay.portal.model.Layout#20343#true',1),('com.liferay.portal.model.Layout#20354#true',2),('com.liferay.portal.model.Layout#20380#true',3),('com.liferay.portal.model.Layout#20440#false',1),('com.liferay.portal.model.Layout#20440#true',1),('com.liferay.portal.model.Layout#20524#false',1),('com.liferay.portal.model.Layout#20524#true',1),('com.liferay.portal.model.Layout#21222#false',1),('com.liferay.portal.model.Layout#21222#true',1),('com.liferay.portal.model.Layout#21231#false',1),('com.liferay.portal.model.Layout#21231#true',1),('com.liferay.portal.model.Layout#21704#false',1),('com.liferay.portal.model.Layout#21704#true',1),('com.liferay.portal.model.Layout#22303#false',1),('com.liferay.portal.model.Layout#22303#true',1),('com.liferay.portal.model.ResourceAction',1400),('com.liferay.portal.model.ResourcePermission',1700),('com.liferay.portlet.documentlibrary.model.DLFileEntry',100);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `IX_717B97E1` (`a2`),
  UNIQUE KEY `IX_717B9BA2` (`a3`),
  UNIQUE KEY `IX_19DA007B` (`name`),
  KEY `IX_25D734CD` (`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'canada','CA','CAN','124','001',1,1),(2,'china','CN','CHN','156','086',1,1),(3,'france','FR','FRA','250','033',1,1),(4,'germany','DE','DEU','276','049',1,1),(5,'hong-kong','HK','HKG','344','852',1,1),(6,'hungary','HU','HUN','348','036',1,1),(7,'israel','IL','ISR','376','972',1,1),(8,'italy','IT','ITA','380','039',1,1),(9,'japan','JP','JPN','392','081',0,1),(10,'south-korea','KR','KOR','410','082',1,1),(11,'netherlands','NL','NLD','528','031',1,1),(12,'portugal','PT','PRT','620','351',1,1),(13,'russia','RU','RUS','643','007',1,1),(14,'singapore','SG','SGP','702','065',1,1),(15,'spain','ES','ESP','724','034',1,1),(16,'turkey','TR','TUR','792','090',1,1),(17,'vietnam','VN','VNM','704','084',1,1),(18,'united-kingdom','GB','GBR','826','044',1,1),(19,'united-states','US','USA','840','001',1,1),(20,'afghanistan','AF','AFG','4','093',1,1),(21,'albania','AL','ALB','8','355',1,1),(22,'algeria','DZ','DZA','12','213',1,1),(23,'american-samoa','AS','ASM','16','684',1,1),(24,'andorra','AD','AND','20','376',1,1),(25,'angola','AO','AGO','24','244',0,1),(26,'anguilla','AI','AIA','660','264',1,1),(27,'antarctica','AQ','ATA','10','672',1,1),(28,'antigua-barbuda','AG','ATG','28','268',0,1),(29,'argentina','AR','ARG','32','054',1,1),(30,'armenia','AM','ARM','51','374',1,1),(31,'aruba','AW','ABW','533','297',0,1),(32,'australia','AU','AUS','36','061',1,1),(33,'austria','AT','AUT','40','043',1,1),(34,'azerbaijan','AZ','AZE','31','994',1,1),(35,'bahamas','BS','BHS','44','242',0,1),(36,'bahrain','BH','BHR','48','973',1,1),(37,'bangladesh','BD','BGD','50','880',1,1),(38,'barbados','BB','BRB','52','246',1,1),(39,'belarus','BY','BLR','112','375',1,1),(40,'belgium','BE','BEL','56','032',1,1),(41,'belize','BZ','BLZ','84','501',0,1),(42,'benin','BJ','BEN','204','229',0,1),(43,'bermuda','BM','BMU','60','441',1,1),(44,'bhutan','BT','BTN','64','975',1,1),(45,'bolivia','BO','BOL','68','591',1,1),(46,'bosnia-herzegovina','BA','BIH','70','387',1,1),(47,'botswana','BW','BWA','72','267',0,1),(48,'brazil','BR','BRA','76','055',1,1),(49,'british-virgin-islands','VG','VGB','92','284',1,1),(50,'brunei','BN','BRN','96','673',1,1),(51,'bulgaria','BG','BGR','100','359',1,1),(52,'burkina-faso','BF','BFA','854','226',0,1),(53,'burma-myanmar','MM','MMR','104','095',1,1),(54,'burundi','BI','BDI','108','257',0,1),(55,'cambodia','KH','KHM','116','855',1,1),(56,'cameroon','CM','CMR','120','237',1,1),(57,'cape-verde-island','CV','CPV','132','238',1,1),(58,'cayman-islands','KY','CYM','136','345',1,1),(59,'central-african-republic','CF','CAF','140','236',0,1),(60,'chad','TD','TCD','148','235',1,1),(61,'chile','CL','CHL','152','056',1,1),(62,'christmas-island','CX','CXR','162','061',1,1),(63,'cocos-islands','CC','CCK','166','061',1,1),(64,'colombia','CO','COL','170','057',1,1),(65,'comoros','KM','COM','174','269',0,1),(66,'republic-of-congo','CD','COD','180','242',0,1),(67,'democratic-republic-of-congo','CG','COG','178','243',0,1),(68,'cook-islands','CK','COK','184','682',0,1),(69,'costa-rica','CR','CRI','188','506',1,1),(70,'croatia','HR','HRV','191','385',1,1),(71,'cuba','CU','CUB','192','053',1,1),(72,'cyprus','CY','CYP','196','357',1,1),(73,'czech-republic','CZ','CZE','203','420',1,1),(74,'denmark','DK','DNK','208','045',1,1),(75,'djibouti','DJ','DJI','262','253',0,1),(76,'dominica','DM','DMA','212','767',0,1),(77,'dominican-republic','DO','DOM','214','809',1,1),(78,'ecuador','EC','ECU','218','593',1,1),(79,'egypt','EG','EGY','818','020',1,1),(80,'el-salvador','SV','SLV','222','503',1,1),(81,'equatorial-guinea','GQ','GNQ','226','240',0,1),(82,'eritrea','ER','ERI','232','291',0,1),(83,'estonia','EE','EST','233','372',1,1),(84,'ethiopia','ET','ETH','231','251',1,1),(85,'faeroe-islands','FO','FRO','234','298',1,1),(86,'falkland-islands','FK','FLK','238','500',1,1),(87,'fiji-islands','FJ','FJI','242','679',0,1),(88,'finland','FI','FIN','246','358',1,1),(89,'french-guiana','GF','GUF','254','594',1,1),(90,'french-polynesia','PF','PYF','258','689',1,1),(91,'gabon','GA','GAB','266','241',1,1),(92,'gambia','GM','GMB','270','220',0,1),(93,'georgia','GE','GEO','268','995',1,1),(94,'ghana','GH','GHA','288','233',0,1),(95,'gibraltar','GI','GIB','292','350',1,1),(96,'greece','GR','GRC','300','030',1,1),(97,'greenland','GL','GRL','304','299',1,1),(98,'grenada','GD','GRD','308','473',0,1),(99,'guadeloupe','GP','GLP','312','590',1,1),(100,'guam','GU','GUM','316','671',1,1),(101,'guatemala','GT','GTM','320','502',1,1),(102,'guinea','GN','GIN','324','224',0,1),(103,'guinea-bissau','GW','GNB','624','245',1,1),(104,'guyana','GY','GUY','328','592',0,1),(105,'haiti','HT','HTI','332','509',1,1),(106,'honduras','HN','HND','340','504',1,1),(107,'iceland','IS','ISL','352','354',1,1),(108,'india','IN','IND','356','091',1,1),(109,'indonesia','ID','IDN','360','062',1,1),(110,'iran','IR','IRN','364','098',1,1),(111,'iraq','IQ','IRQ','368','964',1,1),(112,'ireland','IE','IRL','372','353',0,1),(113,'ivory-coast','CI','CIV','384','225',1,1),(114,'jamaica','JM','JAM','388','876',1,1),(115,'jordan','JO','JOR','400','962',1,1),(116,'kazakhstan','KZ','KAZ','398','007',1,1),(117,'kenya','KE','KEN','404','254',1,1),(118,'kiribati','KI','KIR','408','686',0,1),(119,'kuwait','KW','KWT','414','965',1,1),(120,'north-korea','KP','PRK','408','850',0,1),(121,'kyrgyzstan','KG','KGZ','471','996',1,1),(122,'laos','LA','LAO','418','856',1,1),(123,'latvia','LV','LVA','428','371',1,1),(124,'lebanon','LB','LBN','422','961',1,1),(125,'lesotho','LS','LSO','426','266',1,1),(126,'liberia','LR','LBR','430','231',1,1),(127,'libya','LY','LBY','434','218',1,1),(128,'liechtenstein','LI','LIE','438','423',1,1),(129,'lithuania','LT','LTU','440','370',1,1),(130,'luxembourg','LU','LUX','442','352',1,1),(131,'macau','MO','MAC','446','853',0,1),(132,'macedonia','MK','MKD','807','389',1,1),(133,'madagascar','MG','MDG','450','261',1,1),(134,'malawi','MW','MWI','454','265',0,1),(135,'malaysia','MY','MYS','458','060',1,1),(136,'maldives','MV','MDV','462','960',1,1),(137,'mali','ML','MLI','466','223',0,1),(138,'malta','MT','MLT','470','356',1,1),(139,'marshall-islands','MH','MHL','584','692',1,1),(140,'martinique','MQ','MTQ','474','596',1,1),(141,'mauritania','MR','MRT','478','222',0,1),(142,'mauritius','MU','MUS','480','230',0,1),(143,'mayotte-island','YT','MYT','175','269',1,1),(144,'mexico','MX','MEX','484','052',1,1),(145,'micronesia','FM','FSM','583','691',1,1),(146,'moldova','MD','MDA','498','373',1,1),(147,'monaco','MC','MCO','492','377',1,1),(148,'mongolia','MN','MNG','496','976',1,1),(149,'montenegro','ME','MNE','499','382',1,1),(150,'montserrat','MS','MSR','500','664',0,1),(151,'morocco','MA','MAR','504','212',1,1),(152,'mozambique','MZ','MOZ','508','258',1,1),(153,'namibia','NA','NAM','516','264',1,1),(154,'nauru','NR','NRU','520','674',0,1),(155,'nepal','NP','NPL','524','977',1,1),(156,'netherlands-antilles','AN','ANT','530','599',1,1),(157,'new-caledonia','NC','NCL','540','687',1,1),(158,'new-zealand','NZ','NZL','554','064',1,1),(159,'nicaragua','NI','NIC','558','505',1,1),(160,'niger','NE','NER','562','227',1,1),(161,'nigeria','NG','NGA','566','234',1,1),(162,'niue','NU','NIU','570','683',0,1),(163,'norfolk-island','NF','NFK','574','672',1,1),(164,'norway','NO','NOR','578','047',1,1),(165,'oman','OM','OMN','512','968',1,1),(166,'pakistan','PK','PAK','586','092',1,1),(167,'palau','PW','PLW','585','680',1,1),(168,'palestine','PS','PSE','275','970',1,1),(169,'panama','PA','PAN','591','507',1,1),(170,'papua-new-guinea','PG','PNG','598','675',1,1),(171,'paraguay','PY','PRY','600','595',1,1),(172,'peru','PE','PER','604','051',1,1),(173,'philippines','PH','PHL','608','063',1,1),(174,'poland','PL','POL','616','048',1,1),(175,'puerto-rico','PR','PRI','630','787',1,1),(176,'qatar','QA','QAT','634','974',0,1),(177,'reunion-island','RE','REU','638','262',1,1),(178,'romania','RO','ROU','642','040',1,1),(179,'rwanda','RW','RWA','646','250',0,1),(180,'st-helena','SH','SHN','654','290',1,1),(181,'st-kitts','KN','KNA','659','869',0,1),(182,'st-lucia','LC','LCA','662','758',0,1),(183,'st-pierre-miquelon','PM','SPM','666','508',1,1),(184,'st-vincent','VC','VCT','670','784',1,1),(185,'san-marino','SM','SMR','674','378',1,1),(186,'sao-tome-principe','ST','STP','678','239',0,1),(187,'saudi-arabia','SA','SAU','682','966',1,1),(188,'senegal','SN','SEN','686','221',1,1),(189,'serbia','RS','SRB','688','381',1,1),(190,'seychelles','SC','SYC','690','248',0,1),(191,'sierra-leone','SL','SLE','694','249',0,1),(192,'slovakia','SK','SVK','703','421',1,1),(193,'slovenia','SI','SVN','705','386',1,1),(194,'solomon-islands','SB','SLB','90','677',0,1),(195,'somalia','SO','SOM','706','252',0,1),(196,'south-africa','ZA','ZAF','710','027',1,1),(197,'sri-lanka','LK','LKA','144','094',1,1),(198,'sudan','SD','SDN','736','095',1,1),(199,'suriname','SR','SUR','740','597',0,1),(200,'swaziland','SZ','SWZ','748','268',1,1),(201,'sweden','SE','SWE','752','046',1,1),(202,'switzerland','CH','CHE','756','041',1,1),(203,'syria','SY','SYR','760','963',0,1),(204,'taiwan','TW','TWN','158','886',1,1),(205,'tajikistan','TJ','TJK','762','992',1,1),(206,'tanzania','TZ','TZA','834','255',0,1),(207,'thailand','TH','THA','764','066',1,1),(208,'togo','TG','TGO','768','228',1,1),(209,'tonga','TO','TON','776','676',0,1),(210,'trinidad-tobago','TT','TTO','780','868',0,1),(211,'tunisia','TN','TUN','788','216',1,1),(212,'turkmenistan','TM','TKM','795','993',1,1),(213,'turks-caicos','TC','TCA','796','649',1,1),(214,'tuvalu','TV','TUV','798','688',0,1),(215,'uganda','UG','UGA','800','256',0,1),(216,'ukraine','UA','UKR','804','380',1,1),(217,'united-arab-emirates','AE','ARE','784','971',0,1),(218,'uruguay','UY','URY','858','598',1,1),(219,'uzbekistan','UZ','UZB','860','998',1,1),(220,'vanuatu','VU','VUT','548','678',0,1),(221,'vatican-city','VA','VAT','336','039',1,1),(222,'venezuela','VE','VEN','862','058',1,1),(223,'wallis-futuna','WF','WLF','876','681',1,1),(224,'western-samoa','WS','WSM','882','685',1,1),(225,'yemen','YE','YEM','887','967',0,1),(226,'zambia','ZM','ZMB','894','260',1,1),(227,'zimbabwe','ZW','ZWE','716','263',0,1),(228,'aland-islands','AX','ALA','248','359',1,1),(229,'bonaire-st-eustatius-saba','BQ','BES','535','599',1,1),(230,'bouvet-island','BV','BVT','74','047',1,1),(231,'british-indian-ocean-territory','IO','IOT','86','246',1,1),(232,'curacao','CW','CUW','531','599',1,1),(233,'french-southern-territories','TF','ATF','260','033',0,1),(234,'guernsey','GG','GGY','831','044',1,1),(235,'heard-island-mcdonald-islands','HM','HMD','334','061',1,1),(236,'isle-of-man','IM','IMN','833','044',1,1),(237,'jersey','JE','JEY','832','044',1,1),(238,'northern-mariana-islands','MP','MNP','580','670',1,1),(239,'pitcairn','PN','PCN','612','649',1,1),(240,'south-georgia-south-sandwich-islands','GS','SGS','239','044',1,1),(241,'south-sudan','SS','SSD','728','211',1,1),(242,'sint-maarten','SX','SXM','534','721',1,1),(243,'st-barthelemy','BL','BLM','652','590',1,1),(244,'st-martin','MF','MAF','663','590',1,1),(245,'tokelau','TK','TKL','772','690',0,1),(246,'timor-leste','TL','TLS','626','670',1,1),(247,'united-states-minor-outlying-islands','UM','UMI','581','699',1,1),(248,'united-states-virgin-islands','VI','VIR','850','340',1,1),(249,'western-sahara','EH','ESH','732','212',1,1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyrususer`
--

DROP TABLE IF EXISTS `cyrususer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cyrususer` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyrususer`
--

LOCK TABLES `cyrususer` WRITE;
/*!40000 ALTER TABLE `cyrususer` DISABLE KEYS */;
/*!40000 ALTER TABLE `cyrususer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyrusvirtual`
--

DROP TABLE IF EXISTS `cyrusvirtual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cyrusvirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyrusvirtual`
--

LOCK TABLES `cyrusvirtual` WRITE;
/*!40000 ALTER TABLE `cyrusvirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `cyrusvirtual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecord`
--

DROP TABLE IF EXISTS `ddlrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`),
  UNIQUE KEY `IX_B4328F39` (`uuid_`,`groupId`),
  KEY `IX_6A6C1C85` (`companyId`),
  KEY `IX_87A6B599` (`recordSetId`),
  KEY `IX_AAC564D3` (`recordSetId`,`userId`),
  KEY `IX_8BC2F891` (`uuid_`),
  KEY `IX_384AB6F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecord`
--

LOCK TABLES `ddlrecord` WRITE;
/*!40000 ALTER TABLE `ddlrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecordset`
--

DROP TABLE IF EXISTS `ddlrecordset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecordset` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`),
  UNIQUE KEY `IX_56DAB121` (`groupId`,`recordSetKey`),
  UNIQUE KEY `IX_270BA5E1` (`uuid_`,`groupId`),
  KEY `IX_4FA5969F` (`groupId`),
  KEY `IX_561E44E9` (`uuid_`),
  KEY `IX_5938C39F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecordset`
--

LOCK TABLES `ddlrecordset` WRITE;
/*!40000 ALTER TABLE `ddlrecordset` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecordset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecordversion`
--

DROP TABLE IF EXISTS `ddlrecordversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecordversion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`),
  UNIQUE KEY `IX_C79E347` (`recordId`,`version`),
  KEY `IX_2F4DDFE1` (`recordId`),
  KEY `IX_762ADC7` (`recordId`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecordversion`
--

LOCK TABLES `ddlrecordversion` WRITE;
/*!40000 ALTER TABLE `ddlrecordversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecordversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmcontent`
--

DROP TABLE IF EXISTS `ddmcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmcontent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_EB9BDE28` (`uuid_`,`groupId`),
  KEY `IX_E3BAF436` (`companyId`),
  KEY `IX_50BF1038` (`groupId`),
  KEY `IX_AE4B50C2` (`uuid_`),
  KEY `IX_3A9C0626` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmcontent`
--

LOCK TABLES `ddmcontent` WRITE;
/*!40000 ALTER TABLE `ddmcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddmcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstoragelink`
--

DROP TABLE IF EXISTS `ddmstoragelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstoragelink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`),
  UNIQUE KEY `IX_702D1AD5` (`classPK`),
  KEY `IX_81776090` (`structureId`),
  KEY `IX_32A18526` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstoragelink`
--

LOCK TABLES `ddmstoragelink` WRITE;
/*!40000 ALTER TABLE `ddmstoragelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddmstoragelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstructure`
--

DROP TABLE IF EXISTS `ddmstructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentStructureId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`),
  UNIQUE KEY `IX_C8785130` (`groupId`,`classNameId`,`structureKey`),
  UNIQUE KEY `IX_85C7EBE2` (`uuid_`,`groupId`),
  KEY `IX_31817A62` (`classNameId`),
  KEY `IX_4FBAC092` (`companyId`,`classNameId`),
  KEY `IX_C8419FBE` (`groupId`),
  KEY `IX_B6ED5E50` (`groupId`,`classNameId`),
  KEY `IX_43395316` (`groupId`,`parentStructureId`),
  KEY `IX_657899A8` (`parentStructureId`),
  KEY `IX_20FDE04C` (`structureKey`),
  KEY `IX_E61809C8` (`uuid_`),
  KEY `IX_F9FB8D60` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstructure`
--

LOCK TABLES `ddmstructure` WRITE;
/*!40000 ALTER TABLE `ddmstructure` DISABLE KEYS */;
INSERT INTO `ddmstructure` VALUES ('46ab4044-0dee-42d7-a5a7-c911318fa304',20307,20199,20155,20159,'','2017-01-09 16:25:47','2017-01-09 16:25:47',0,20091,'LEARNING MODULE METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select2235\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select3212\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4115\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select5069\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('8e2a1b9a-d50f-4a4b-b9c9-539bc524a91c',20308,20199,20155,20159,'','2017-01-09 16:25:47','2017-01-09 16:25:47',0,20091,'MARKETING CAMPAIGN THEME METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2305\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3229\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4282\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('effe2240-ad3b-43f8-94c2-be18a622eb35',20309,20199,20155,20159,'','2017-01-09 16:25:47','2017-01-09 16:25:47',0,20091,'MEETING METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date3054\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2217\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text4569\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text5638\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea6584\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea7502\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('29114c0b-9c8b-4d8a-8737-058b08fdfc0d',20311,20199,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48',0,20091,'AUTO_E250150B-D09E-412B-9D0E-E7300856482D','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date18949\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date20127\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select10264\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4893\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text14822\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text17700\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2087\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('57bf5b8a-ec4a-4347-8ff8-fad1b4ef34f6',20313,20199,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48',0,20091,'AUTO_DB470E47-581B-4C7D-A23B-4157FD17885D','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"radio5547\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2033\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea2873\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('c15651be-f50b-41f4-b87d-7155159bca4e',20315,20199,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48',0,20091,'AUTO_BCC39119-43ED-4AE2-8679-57783DF8A7E5','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2082\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2979\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('fc67d022-761e-4ec8-9049-913ce10ade99',20317,20199,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48',0,20091,'AUTO_C54878C2-E6E4-4FD3-9183-EC106BB4A4FE','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2890\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3864\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4831\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select5929\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text1993\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('4b93aa63-94ed-4bfa-b861-037c8bbe8e90',20319,20199,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48',0,20318,'TIKARAWMETADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TIKARAWMETADATA</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TIKARAWMETADATA</Description></root>','<root available-locales=\"en_US\" default-locale=\"en_US\"><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TABLE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_IMAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_OBJECT_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_USER_DEFINED_METADATA_NAME_PREFIX\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element></root>','xml',0),('3c1ebfee-e651-41a7-b2e3-382d0b62d0da',20416,20186,20155,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',0,20098,'CONTACTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"imService\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('3b40dd8b-03ef-4aa8-8aa0-81dc9ae5481f',20417,20186,20155,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',0,20098,'EVENTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('5f7d956e-321e-47b1-9818-c836585903a1',20418,20186,20155,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',0,20098,'INVENTORY','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('11d3b382-fa79-4a29-b4ec-59448615f037',20419,20186,20155,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',0,20098,'ISSUES TRACKING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('82ad5287-1fe0-4d2c-b310-8a984080dca7',20420,20186,20155,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',0,20098,'MEETING MINUTES','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('e6710b11-07e7-4f81-a871-2099e758fdfe',20421,20186,20155,20159,'','2017-01-09 16:25:55','2017-01-09 16:25:55',0,20098,'TO DO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" required=\"false\" showLabel=\"true\" type=\"ddm-integer\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
/*!40000 ALTER TABLE `ddmstructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstructurelink`
--

DROP TABLE IF EXISTS `ddmstructurelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstructurelink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`),
  UNIQUE KEY `IX_C803899D` (`classPK`),
  KEY `IX_D43E4208` (`classNameId`),
  KEY `IX_17692B58` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstructurelink`
--

LOCK TABLES `ddmstructurelink` WRITE;
/*!40000 ALTER TABLE `ddmstructurelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddmstructurelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmtemplate`
--

DROP TABLE IF EXISTS `ddmtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmtemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `templateKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`templateId`),
  UNIQUE KEY `IX_E6DFAB84` (`groupId`,`classNameId`,`templateKey`),
  UNIQUE KEY `IX_1AA75CE3` (`uuid_`,`groupId`),
  KEY `IX_B6356F93` (`classNameId`,`classPK`,`type_`),
  KEY `IX_32F83D16` (`classPK`),
  KEY `IX_DB24DDDD` (`groupId`),
  KEY `IX_BD9A4A91` (`groupId`,`classNameId`),
  KEY `IX_824ADC72` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_90800923` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_F0C3449` (`groupId`,`classNameId`,`classPK`,`type_`,`mode_`),
  KEY `IX_B1C33EA6` (`groupId`,`classPK`),
  KEY `IX_33BEF579` (`language`),
  KEY `IX_127A35B0` (`smallImageId`),
  KEY `IX_CAE41A28` (`templateKey`),
  KEY `IX_C4F283C8` (`type_`),
  KEY `IX_F2A243A7` (`uuid_`),
  KEY `IX_D4C2C221` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmtemplate`
--

LOCK TABLES `ddmtemplate` WRITE;
/*!40000 ALTER TABLE `ddmtemplate` DISABLE KEYS */;
INSERT INTO `ddmtemplate` VALUES ('2c5eb350-e59f-42de-a408-46be1e621e3d',20422,20199,20155,20159,'','2017-01-09 16:25:55','2017-01-09 16:25:55',20016,0,'WIKI-SOCIAL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Social</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays social bookmarks and ratings for wiki pages and their child pages.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#assign wikiPageClassName = \"com.liferay.portlet.wiki.model.WikiPage\" />\n\n<#assign assetRenderer = assetEntry.getAssetRenderer() />\n\n<div class=\"taglib-header\">\n	<h1 class=\"header-title\">${entry.getTitle()}</h1>\n</div>\n\n<div style=\"float: right;\">\n	<@getEditIcon />\n\n	<@getPageDetailsIcon />\n\n	<@getPrintIcon />\n</div>\n\n<div class=\"wiki-body\">\n	<div class=\"wiki-info\">\n		<span class=\"stats\">${assetEntry.getViewCount()} <@liferay.language key=\"views\" /></span> |\n\n		<span class=\"date\"><@liferay.language key=\"last-modified\" /> ${dateUtil.getDate(entry.getModifiedDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}</span>\n\n		<span class=\"author\"><@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}</span>\n	</div>\n\n	<div class=\"wiki-content\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"normal\"\n			target=\"_blank\"\n			title=entry.getTitle()\n			url=viewURL\n		/>\n\n		${formattedContent}\n	</div>\n\n	<div class=\"page-actions\">\n		<div class=\"article-actions\">\n			<@getAddChildPageIcon />\n\n			<@getAttatchmentsIcon />\n		</div>\n	</div>\n\n	 <br />\n\n	<@getRatings cssClass=\"page-ratings\" entry=entry />\n\n	<@getRelatedAssets />\n</div>\n\n<div class=\"page-categorization\">\n	<div class=\"page-categories\">\n		<#assign viewCategorizedPagesURL = renderResponse.createRenderURL() />\n\n		${viewCategorizedPagesURL.setParameter(\"struts_action\", \"/wiki/view_categorized_pages\")}\n		${viewCategorizedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-categories-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewCategorizedPagesURL\n		/>\n	</div>\n\n	<div class=\"page-tags\">\n		<#assign viewTaggedPagesURL = renderResponse.createRenderURL() />\n\n		${viewTaggedPagesURL.setParameter(\"struts_action\", \"/wiki/view_tagged_pages\")}\n		${viewTaggedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-tags-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewTaggedPagesURL\n		/>\n	</div>\n</div>\n\n<#assign childPages = entry.getChildPages() />\n\n<#if (childPages?has_content)>\n	<div class=\"child-pages\">\n		<h2><@liferay.language key=\"children-pages\" /></h2>\n\n		<table class=\"taglib-search-iterator\">\n			<tr class=\"portlet-section-header results-header\">\n				<th>\n					<@liferay.language key=\"page\" />\n				</th>\n				<th>\n					<@liferay.language key=\"last-modified\" />\n				</th>\n				<th>\n					<@liferay.language key=\"ratings\" />\n				</th>\n			</tr>\n\n			<#list childPages as childPage>\n				<tr class=\"results-row\">\n					<#assign viewPageURL = renderResponse.createRenderURL() />\n\n					${viewPageURL.setParameter(\"struts_action\", \"/wiki/view\")}\n\n					<#assign childNode = childPage.getNode() />\n\n					${viewPageURL.setParameter(\"nodeName\", childNode.getName())}\n					${viewPageURL.setParameter(\"title\", childPage.getTitle())}\n\n					<td>\n						<a href=\"${viewPageURL}\">${childPage.getTitle()}</a>\n					</td>\n					<td>\n						<a href=\"${viewPageURL}\">${dateUtil.getDate(childPage.getModifiedDate(),\"dd MMM yyyy - HH:mm:ss\", locale)} <@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(childPage.getUserId(), childPage.getUserName()))}</a>\n					</td>\n					<td>\n						<@getRatings cssClass=\"child-ratings\" entry=childPage />\n					</td>\n				</tr>\n			</#list>\n		</table>\n	</div>\n</#if>\n\n<@getDiscussion />\n\n<#macro getAddChildPageIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign addPageURL = renderResponse.createRenderURL() />\n\n		${addPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${addPageURL.setParameter(\"redirect\", currentURL)}\n		${addPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${addPageURL.setParameter(\"title\", \"\")}\n		${addPageURL.setParameter(\"editTitle\", \"1\")}\n		${addPageURL.setParameter(\"parentTitle\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"add_article\"\n			label=true\n			message=\"add-child-page\"\n			url=addPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getAttatchmentsIcon>\n	<#assign viewPageAttachmentsURL = renderResponse.createRenderURL() />\n\n	${viewPageAttachmentsURL.setParameter(\"struts_action\", \"/wiki/view_page_attachments\") }\n\n	<@liferay_ui[\"icon\"]\n		image=\"clip\"\n		label=true\n		message=\'${entry.getAttachmentsFileEntriesCount() + languageUtil.get(locale, \"attachments\")}\'\n		url=viewPageAttachmentsURL?string\n	/>\n</#macro>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/wiki/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			formAction=discussionURL?string\n			formName=\"fm2\"\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=currentURL\n			subject=assetRenderer.getTitle(locale)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign editPageURL = renderResponse.createRenderURL() />\n\n		${editPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${editPageURL.setParameter(\"redirect\", currentURL)}\n		${editPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${editPageURL.setParameter(\"title\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"edit\"\n			message=entry.getTitle()\n			url=editPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getPageDetailsIcon>\n	<#assign viewPageDetailsURL = renderResponse.createRenderURL() />\n\n	${viewPageDetailsURL.setParameter(\"struts_action\", \"/wiki/view_page_details\")}\n	${viewPageDetailsURL.setParameter(\"redirect\", currentURL)}\n\n	<@liferay_ui[\"icon\"]\n		image=\"history\"\n		message=\"details\"\n		url=viewPageDetailsURL?string\n	/>\n</#macro>\n\n<#macro getPrintIcon>\n	<#assign printURL = renderResponse.createRenderURL() />\n\n	${printURL.setParameter(\"viewMode\", \"print\")}\n	${printURL.setWindowState(\"pop_up\")}\n\n	<#assign title = languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", htmlUtil.escape(assetRenderer.getTitle(locale))]) />\n	<#assign taglibPrintURL = \"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + title + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\" />\n\n	<@liferay_ui[\"icon\"]\n		image=\"print\"\n		message=\"print\"\n		url=taglibPrintURL\n	/>\n</#macro>\n\n<#macro getRatings\n	cssClass\n	entry\n>\n	<#if enablePageRatings == \"true\">\n		<div class=\"${cssClass}\">\n			<@liferay_ui[\"ratings\"]\n				className=wikiPageClassName\n				classPK=entry.getResourcePrimKey()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if assetEntry?? && (enableRelatedAssets == \"true\")>\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=assetEntry.getEntryId()\n		/>\n	</#if>\n</#macro>',0,0,20423,''),('293be708-1c6a-4ad2-8b91-f39f0906cb62',20424,20199,20155,20159,'','2017-01-09 16:25:55','2017-01-09 16:25:55',20081,0,'ASSET-CATEGORIES-NAVIGATION-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each vocabulary. Each column includes the name of a vocabulary with the vocabulary\'s top level categories listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n			<@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						${entry.getName()}\n					</h3>\n				</div>\n\n				<#assign categories = entry.getCategories()>\n\n				<@displayCategories categories=categories />\n			</@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayCategories\n	categories\n>\n	<#if categories?has_content>\n		<ul class=\"categories\">\n			<#list categories as category>\n				<li>\n					<#assign categoryURL = renderResponse.createRenderURL()>\n\n					${categoryURL.setParameter(\"resetCur\", \"true\")}\n					${categoryURL.setParameter(\"categoryId\", category.getCategoryId()?string)}\n\n					<a href=\"${categoryURL}\">${category.getName()}</a>\n\n					<#if serviceLocator??>\n						<#assign assetCategoryService = serviceLocator.findService(\"com.liferay.portlet.asset.service.AssetCategoryService\")>\n\n						<#assign childCategories = assetCategoryService.getChildCategories(category.getCategoryId())>\n\n						<@displayCategories categories=childCategories />\n					</#if>\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,20425,''),('a6cdffa3-cadd-442e-b41d-4bbc50632b54',20427,20199,20155,20159,'','2017-01-09 16:25:55','2017-01-09 16:25:55',20426,0,'DOCUMENTLIBRARY-CAROUSEL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Carousel</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays images in a carousel.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n<#assign liferay_portlet = taglibLiferayHash[\"/WEB-INF/tld/liferay-portlet.tld\"] />\n\n<#if entries?has_content>\n	<style>\n		#<@liferay_portlet.namespace />carousel .carousel-item {\n			background-color: #000;\n			height: 250px;\n			overflow: hidden;\n			text-align: center;\n			width: 700px;\n		}\n\n		#<@liferay_portlet.namespace />carousel .carousel-item img {\n			max-height: 250px;\n			max-width: 700px;\n		}\n	</style>\n\n	<div id=\"<@liferay_portlet.namespace />carousel\">\n		<#assign imageMimeTypes = propsUtil.getArray(\"dl.file.entry.preview.image.mime.types\") />\n\n		<#list entries as entry>\n			<#if imageMimeTypes?seq_contains(entry.getMimeType()) >\n				<div class=\"carousel-item\">\n					<img src=\"${dlUtil.getPreviewURL(entry, entry.getFileVersion(), themeDisplay, \"\")}\" />\n				</div>\n			</#if>\n		</#list>\n	</div>\n\n	<@aui.script use=\"aui-carousel\">\n		new A.Carousel(\n			{\n				contentBox: \'#<@liferay_portlet.namespace />carousel\',\n				height: 250,\n				intervalTime: 2,\n				width: 700\n			}\n		).render();\n	</@aui.script>\n</#if>',0,0,20428,''),('b6646ef6-3493-4265-9103-922ed12d316e',20429,20199,20155,20159,'','2017-01-09 16:25:55','2017-01-09 16:25:55',20083,0,'ASSET-PUBLISHER-RICH-SUMMARY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Rich Summary</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays abstracts, icons, related assets, and print/edit actions for assets. Optionally include asset bookmarks and ratings.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<#assign entry = entry />\n\n	<#assign assetRenderer = entry.getAssetRenderer() />\n\n	<#assign entryTitle = htmlUtil.escape(assetRenderer.getTitle(locale)) />\n\n	<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />\n\n	<#if assetLinkBehavior != \"showFullContent\">\n		<#assign viewURL = assetPublisherHelperImpl.getAssetViewURL(renderRequest, renderResponse, entry, true) />\n	</#if>\n\n	<div class=\"asset-abstract\">\n		<div class=\"lfr-meta-actions asset-actions\">\n			<@getPrintIcon />\n\n			<@getFlagsIcon />\n\n			<@getEditIcon />\n		</div>\n\n		<h3 class=\"asset-title\">\n			<a href=\"${viewURL}\"><img alt=\"\" src=\"${assetRenderer.getIconPath(renderRequest)}\" />${entryTitle}</a>\n		</h3>\n\n		<@getMetadataField fieldName=\"tags\" />\n\n		<@getMetadataField fieldName=\"create-date\" />\n\n		<@getMetadataField fieldName=\"view-count\" />\n\n		<div class=\"asset-content\">\n			<@getSocialBookmarks />\n\n			<div class=\"asset-summary\">\n				<@getMetadataField fieldName=\"author\" />\n\n				${htmlUtil.escape(assetRenderer.getSummary(locale))}\n\n				<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /><span class=\"hide-accessible\"><@liferay.language key=\"about\" />${entryTitle}</span> &raquo;</a>\n			</div>\n\n			<@getRatings />\n\n			<@getRelatedAssets />\n\n			<@getDiscussion />\n		</div>\n	</div>\n\n</#list>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/asset_publisher/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			formAction=discussionURL?string\n			formName=\"fm\" + entry.getClassPK()\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=portalUtil.getCurrentURL(request)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign redirectURL = renderResponse.createRenderURL() />\n\n		${redirectURL.setParameter(\"struts_action\", \"/asset_publisher/add_asset_redirect\")}\n		${redirectURL.setWindowState(\"pop_up\")}\n\n		<#assign editPortletURL = assetRenderer.getURLEdit(renderRequest, renderResponse, windowStateFactory.getWindowState(\"pop_up\"), redirectURL)!\"\" />\n\n		<#if validator.isNotNull(editPortletURL)>\n			<#assign title = languageUtil.format(locale, \"edit-x\", entryTitle) />\n\n			<@liferay_ui[\"icon\"]\n				image=\"edit\"\n				message=title\n				url=\"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"editAsset\', title: \'\" + title + \"\', uri:\'\" + htmlUtil.escapeURL(editPortletURL.toString()) + \"\'});\"\n			/>\n		</#if>\n	</#if>\n</#macro>\n\n<#macro getFlagsIcon>\n	<#if enableFlags == \"true\">\n		<@liferay_ui[\"flags\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			contentTitle=entry.getTitle(locale)\n			label=false\n			reportedUserId=entry.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getMetadataField\n	fieldName\n>\n	<#if stringUtil.split(metadataFields)?seq_contains(fieldName)>\n		<span class=\"metadata-entry metadata-\"${fieldName}\">\n			<#assign dateFormat = \"dd MMM yyyy - HH:mm:ss\" />\n\n			<#if fieldName == \"author\">\n				<@liferay.language key=\"by\" /> ${portalUtil.getUserName(assetRenderer.getUserId(), assetRenderer.getUserName())}\n			<#elseif fieldName == \"categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"create-date\">\n				${dateUtil.getDate(entry.getCreateDate(), dateFormat, locale)}\n			<#elseif fieldName == \"expiration-date\">\n				${dateUtil.getDate(entry.getExpirationDate(), dateFormat, locale)}\n			<#elseif fieldName == \"modified-date\">\n				${dateUtil.getDate(entry.getModifiedDate(), dateFormat, locale)}\n			<#elseif fieldName == \"priority\">\n				${entry.getPriority()}\n			<#elseif fieldName == \"publish-date\">\n				${dateUtil.getDate(entry.getPublishDate(), dateFormat, locale)}\n			<#elseif fieldName == \"tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"view-count\">\n				<@liferay_ui[\"icon\"]\n					image=\"history\"\n				/>\n\n				${entry.getViewCount()} <@liferay.language key=\"views\" />\n			</#if>\n		</span>\n	</#if>\n</#macro>\n\n<#macro getPrintIcon>\n	<#if enablePrint == \"true\" >\n		<#assign printURL = renderResponse.createRenderURL() />\n\n		${printURL.setParameter(\"struts_action\", \"/asset_publisher/view_content\")}\n		${printURL.setParameter(\"assetEntryId\", entry.getEntryId()?string)}\n		${printURL.setParameter(\"viewMode\", \"print\")}\n		${printURL.setParameter(\"type\", entry.getAssetRendererFactory().getType())}\n\n		<#if (validator.isNotNull(assetRenderer.getUrlTitle()))>\n			<#if (assetRenderer.getGroupId() != themeDisplay.getScopeGroupId())>\n				${printURL.setParameter(\"groupId\", assetRenderer.getGroupId()?string)}\n			</#if>\n\n			${printURL.setParameter(\"urlTitle\", assetRenderer.getUrlTitle())}\n		</#if>\n\n		${printURL.setWindowState(\"pop_up\")}\n\n		<@liferay_ui[\"icon\"]\n			image=\"print\"\n			message=\"print\"\n			url=\"javascript:Liferay.Util.openWindow({id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", entryTitle]) + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\"\n		/>\n	</#if>\n</#macro>\n\n<#macro getRatings>\n	<#if (enableRatings == \"true\")>\n		<div class=\"asset-ratings\">\n			<@liferay_ui[\"ratings\"]\n				className=entry.getClassName()\n				classPK=entry.getClassPK()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if enableRelatedAssets == \"true\">\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=entry.getEntryId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getSocialBookmarks>\n	<#if enableSocialBookmarks == \"true\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"${socialBookmarksDisplayStyle}\"\n			target=\"_blank\"\n			title=entry.getTitle(locale)\n			url=viewURL\n		/>\n	</#if>\n</#macro>',0,0,20430,''),('9ad79399-6d10-47df-a7cf-096ee63ec91e',20431,20199,20155,20159,'','2017-01-09 16:25:55','2017-01-09 16:25:55',20034,0,'SITE-MAP-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each top level page. Each column includes the name of a top level page with the page\'s immediate children listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n		    <@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						<#assign layoutURL = portalUtil.getLayoutURL(entry, themeDisplay)>\n\n						<a href=\"${layoutURL}\">${entry.getName(locale)}</a>\n					</h3>\n				</div>\n\n				<#assign pages = entry.getChildren()>\n\n				<@displayPages pages = pages />\n		    </@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayPages\n	pages\n>\n	<#if pages?has_content>\n		<ul class=\"child-pages\">\n			<#list pages as page>\n				<li>\n					<#assign pageLayoutURL = portalUtil.getLayoutURL(page, themeDisplay)>\n\n					<a href=\"${pageLayoutURL}\">${page.getName(locale)}</a>\n\n					<#assign childPages = page.getChildren()>\n\n					<@displayPages pages = childPages />\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,20432,''),('e70a1476-70a2-4971-aa47-299d4e92bbf8',20433,20199,20155,20159,'','2017-01-09 16:25:55','2017-01-09 16:25:55',20085,0,'ASSET-TAGS-NAVIGATION-COLOR-BY-POPULARITY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Color by Popularity</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays asset tags colored by popularity: red (high), yellow (medium), and green (low).</Description></root>','display','','ftl','<#if entries?has_content>\n	<ul class=\"tag-items tag-list\">\n		<#assign scopeGroupId = getterUtil.getLong(scopeGroupId, themeDisplay.getScopeGroupId()) />\n		<#assign classNameId = getterUtil.getLong(classNameId, 0) />\n\n		<#assign maxCount = 1 />\n		<#assign minCount = 1 />\n\n		<#list entries as entry>\n			<#assign maxCount = liferay.max(maxCount, entry.getAssetCount()) />\n			<#assign minCount = liferay.min(minCount, entry.getAssetCount()) />\n		</#list>\n\n		<#assign multiplier = 1 />\n\n		<#if maxCount != minCount>\n			<#assign multiplier = 3 / (maxCount - minCount) />\n		</#if>\n\n		<#list entries as entry>\n			<li class=\"taglib-asset-tags-summary\">\n				<#assign popularity = (maxCount - (maxCount - (entry.getAssetCount() - minCount))) * multiplier />\n\n				<#if popularity < 1>\n					<#assign color = \"green\" />\n				<#elseif (popularity >= 1) && (popularity < 2)>\n					<#assign color = \"orange\" />\n				<#else>\n					<#assign color = \"red\" />\n				</#if>\n\n				<#assign tagURL = renderResponse.createRenderURL() />\n\n				${tagURL.setParameter(\"resetCur\", \"true\")}\n				${tagURL.setParameter(\"tag\", entry.getName())}\n\n				<a class =\"tag\" style=\"color: ${color};\" href=\"${tagURL}\">\n					${entry.getName()}\n\n					<#if (showAssetCount == \"true\")>\n						<span class=\"tag-asset-count\">(${count})</span>\n					</#if>\n				</a>\n			</li>\n		</#list>\n	</ul>\n\n	<br style=\"clear: both;\" />\n</#if>',0,0,20434,''),('6083470f-78c0-47cc-8884-6230d0914590',20435,20199,20155,20159,'','2017-01-09 16:25:55','2017-01-09 16:25:55',20007,0,'BLOGS-BASIC-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Basic</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays titles, authors, and abstracts compactly for blog entries.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<div class=\"entry\">\n		<#assign viewURL = renderResponse.createRenderURL() />\n\n		${viewURL.setParameter(\"struts_action\", \"/blogs/view_entry\")}\n		${viewURL.setParameter(\"redirect\", currentURL)}\n		${viewURL.setParameter(\"urlTitle\", entry.getUrlTitle())}\n\n		<div class=\"entry-content\">\n			<div class=\"entry-title\">\n				<h2><a href=\"${viewURL}\">${htmlUtil.escape(entry.getTitle())}</a></h2>\n			</div>\n		</div>\n\n		<div class=\"entry-body\">\n			<div class=\"entry-author\">\n				<@liferay.language key=\"written-by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}\n			</div>\n\n			<#assign summary = entry.getDescription() />\n\n			<#if (validator.isNull(summary))>\n				<#assign summary = entry.getContent() />\n			</#if>\n\n			${stringUtil.shorten(htmlUtil.stripHtml(summary), 100)}\n\n			<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /> <span class=\"hide-accessible\"><@liferay.language key=\"about\"/>${htmlUtil.escape(entry.getTitle())}</span> &raquo;</a>\n		</div>\n\n		<div class=\"entry-footer\">\n			<span class=\"entry-date\">\n				${dateUtil.getDate(entry.getCreateDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}\n			</span>\n\n			<#assign blogsEntryClassName = \"com.liferay.portlet.blogs.model.BlogsEntry\" />\n\n			<#if (enableFlags == \"true\")>\n				<@liferay_ui[\"flags\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					contentTitle=entry.getTitle()\n					reportedUserId=entry.getUserId()\n				/>\n			</#if>\n\n			<span class=\"entry-categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n\n			<span class=\"entry-tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n		</div>\n	</div>\n\n	<div class=\"separator\"><!-- --></div>\n</#list>',0,0,20436,'');
/*!40000 ALTER TABLE `ddmtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlcontent`
--

DROP TABLE IF EXISTS `dlcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlcontent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_FDD1AAA8` (`companyId`,`repositoryId`,`path_`,`version`),
  KEY `IX_6A83A66A` (`companyId`,`repositoryId`),
  KEY `IX_EB531760` (`companyId`,`repositoryId`,`path_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlcontent`
--

LOCK TABLES `dlcontent` WRITE;
/*!40000 ALTER TABLE `dlcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentry`
--

DROP TABLE IF EXISTS `dlfileentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`),
  UNIQUE KEY `IX_5391712` (`groupId`,`folderId`,`name`),
  UNIQUE KEY `IX_ED5CA615` (`groupId`,`folderId`,`title`),
  UNIQUE KEY `IX_BC2E7E6A` (`uuid_`,`groupId`),
  KEY `IX_4CB1B2B4` (`companyId`),
  KEY `IX_772ECDE7` (`fileEntryTypeId`),
  KEY `IX_8F6C75D0` (`folderId`,`name`),
  KEY `IX_F4AF5636` (`groupId`),
  KEY `IX_93CF8193` (`groupId`,`folderId`),
  KEY `IX_29D0AF28` (`groupId`,`folderId`,`fileEntryTypeId`),
  KEY `IX_43261870` (`groupId`,`userId`),
  KEY `IX_D20C434D` (`groupId`,`userId`,`folderId`),
  KEY `IX_D9492CF6` (`mimeType`),
  KEY `IX_1B352F4A` (`repositoryId`,`folderId`),
  KEY `IX_64F0FE40` (`uuid_`),
  KEY `IX_31079DE8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentry`
--

LOCK TABLES `dlfileentry` WRITE;
/*!40000 ALTER TABLE `dlfileentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrymetadata`
--

DROP TABLE IF EXISTS `dlfileentrymetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrymetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`),
  UNIQUE KEY `IX_7332B44F` (`DDMStructureId`,`fileVersionId`),
  KEY `IX_4F40FE5E` (`fileEntryId`),
  KEY `IX_A44636C9` (`fileEntryId`,`fileVersionId`),
  KEY `IX_F8E90438` (`fileEntryTypeId`),
  KEY `IX_1FE9C04` (`fileVersionId`),
  KEY `IX_D49AB5D1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrymetadata`
--

LOCK TABLES `dlfileentrymetadata` WRITE;
/*!40000 ALTER TABLE `dlfileentrymetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileentrymetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytype`
--

DROP TABLE IF EXISTS `dlfileentrytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileEntryTypeKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`),
  UNIQUE KEY `IX_5B6BEF5F` (`groupId`,`fileEntryTypeKey`),
  UNIQUE KEY `IX_1399D844` (`uuid_`,`groupId`),
  KEY `IX_4501FD9C` (`groupId`),
  KEY `IX_90724726` (`uuid_`),
  KEY `IX_5B03E942` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytype`
--

LOCK TABLES `dlfileentrytype` WRITE;
/*!40000 ALTER TABLE `dlfileentrytype` DISABLE KEYS */;
INSERT INTO `dlfileentrytype` VALUES ('9c25965d-23ab-4760-9951-93169cf8bf0a',0,0,0,0,'','2017-01-09 16:25:33','2017-01-09 16:25:33','BASIC-DOCUMENT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">basic-document</Name></root>',''),('e250150b-d09e-412b-9d0e-e7300856482d',20310,20199,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48','CONTRACT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>'),('db470e47-581b-4c7d-a23b-4157fd17885d',20312,20199,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48','MARKETING BANNER','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>'),('bcc39119-43ed-4ae2-8679-57783df8a7e5',20314,20199,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48','ONLINE TRAINING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>'),('c54878c2-e6e4-4fd3-9183-ec106bb4a4fe',20316,20199,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48','SALES PRESENTATION','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>');
/*!40000 ALTER TABLE `dlfileentrytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytypes_ddmstructures`
--

DROP TABLE IF EXISTS `dlfileentrytypes_ddmstructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytypes_ddmstructures` (
  `structureId` bigint(20) NOT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  PRIMARY KEY (`structureId`,`fileEntryTypeId`),
  KEY `IX_8373EC7C` (`fileEntryTypeId`),
  KEY `IX_F147CF3F` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytypes_ddmstructures`
--

LOCK TABLES `dlfileentrytypes_ddmstructures` WRITE;
/*!40000 ALTER TABLE `dlfileentrytypes_ddmstructures` DISABLE KEYS */;
INSERT INTO `dlfileentrytypes_ddmstructures` VALUES (20311,20310),(20308,20312),(20313,20312),(20307,20314),(20315,20314),(20309,20316),(20317,20316);
/*!40000 ALTER TABLE `dlfileentrytypes_ddmstructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytypes_dlfolders`
--

DROP TABLE IF EXISTS `dlfileentrytypes_dlfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytypes_dlfolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`),
  KEY `IX_5BB6AD6C` (`fileEntryTypeId`),
  KEY `IX_6E00A2EC` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytypes_dlfolders`
--

LOCK TABLES `dlfileentrytypes_dlfolders` WRITE;
/*!40000 ALTER TABLE `dlfileentrytypes_dlfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileentrytypes_dlfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfilerank`
--

DROP TABLE IF EXISTS `dlfilerank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfilerank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`),
  UNIQUE KEY `IX_38F0315` (`companyId`,`userId`,`fileEntryId`),
  KEY `IX_A65A1F8B` (`fileEntryId`),
  KEY `IX_BAFB116E` (`groupId`,`userId`),
  KEY `IX_4E96195B` (`groupId`,`userId`,`active_`),
  KEY `IX_EED06670` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfilerank`
--

LOCK TABLES `dlfilerank` WRITE;
/*!40000 ALTER TABLE `dlfilerank` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfilerank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileshortcut`
--

DROP TABLE IF EXISTS `dlfileshortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileshortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`),
  UNIQUE KEY `IX_FDB4A946` (`uuid_`,`groupId`),
  KEY `IX_A4BB2E58` (`companyId`),
  KEY `IX_8571953E` (`companyId`,`status`),
  KEY `IX_B0051937` (`groupId`,`folderId`),
  KEY `IX_348DC3B2` (`groupId`,`folderId`,`active_`),
  KEY `IX_17EE3098` (`groupId`,`folderId`,`active_`,`status`),
  KEY `IX_4B7247F6` (`toFileEntryId`),
  KEY `IX_4831EBE4` (`uuid_`),
  KEY `IX_29AE81C4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileshortcut`
--

LOCK TABLES `dlfileshortcut` WRITE;
/*!40000 ALTER TABLE `dlfileshortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileshortcut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileversion`
--

DROP TABLE IF EXISTS `dlfileversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileversion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`),
  UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`),
  UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`),
  KEY `IX_F389330E` (`companyId`),
  KEY `IX_A0A283F4` (`companyId`,`status`),
  KEY `IX_C68DC967` (`fileEntryId`),
  KEY `IX_D47BB14D` (`fileEntryId`,`status`),
  KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`),
  KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`),
  KEY `IX_FFB3395C` (`mimeType`),
  KEY `IX_4BFABB9A` (`uuid_`),
  KEY `IX_95E9E44E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileversion`
--

LOCK TABLES `dlfileversion` WRITE;
/*!40000 ALTER TABLE `dlfileversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfolder`
--

DROP TABLE IF EXISTS `dlfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `hidden_` tinyint(4) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`),
  KEY `IX_A74DB14C` (`companyId`),
  KEY `IX_E79BE432` (`companyId`,`status`),
  KEY `IX_F2EA1ACE` (`groupId`),
  KEY `IX_F78286C5` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`),
  KEY `IX_C88430AB` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_49C37475` (`groupId`,`parentFolderId`),
  KEY `IX_CE360BF6` (`groupId`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_EE29C715` (`repositoryId`),
  KEY `IX_CBC408D8` (`uuid_`),
  KEY `IX_DA448450` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfolder`
--

LOCK TABLES `dlfolder` WRITE;
/*!40000 ALTER TABLE `dlfolder` DISABLE KEYS */;
INSERT INTO `dlfolder` VALUES ('e2d02924-eb7f-44d0-945b-44ff4eabf375',22206,20199,20155,20159,'','2017-06-20 05:42:34','2017-06-20 05:42:34',22205,1,0,'/22206/','20','','2017-06-20 05:42:34',0,1,0,0,0,'',NULL),('b22b131c-0956-4bf8-8dc3-e89a08b48e4f',22207,20199,20155,20438,'Admin User','2017-06-20 05:42:34','2017-06-20 05:42:34',22205,0,22206,'/22206/22207/','20438','','2017-06-20 05:42:34',0,0,0,0,0,'',NULL),('f579b999-c082-472a-b2e6-a02bfd275e05',22208,20199,20155,20438,'Admin User','2017-06-20 05:42:34','2017-06-20 05:42:34',22205,0,22207,'/22206/22207/22208/','com.liferay.portlet.portalsettings.action.EditCompanyLogoAction','','2017-06-20 05:44:15',0,0,0,0,0,'',NULL);
/*!40000 ALTER TABLE `dlfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlsyncevent`
--

DROP TABLE IF EXISTS `dlsyncevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlsyncevent` (
  `syncEventId` bigint(20) NOT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`syncEventId`),
  UNIQUE KEY `IX_57D82B06` (`typePK`),
  KEY `IX_3D8E1607` (`modifiedTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlsyncevent`
--

LOCK TABLES `dlsyncevent` WRITE;
/*!40000 ALTER TABLE `dlsyncevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlsyncevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailaddress`
--

DROP TABLE IF EXISTS `emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailaddress` (
  `uuid_` varchar(75) DEFAULT NULL,
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`),
  KEY `IX_1BB072CA` (`companyId`),
  KEY `IX_49D2DEC4` (`companyId`,`classNameId`),
  KEY `IX_551A519F` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_2A2CB130` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_7B43CD8` (`userId`),
  KEY `IX_D24F3956` (`uuid_`),
  KEY `IX_F74AB912` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailaddress`
--

LOCK TABLES `emailaddress` WRITE;
/*!40000 ALTER TABLE `emailaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epsosschemainformation`
--

DROP TABLE IF EXISTS `epsosschemainformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epsosschemainformation` (
  `schemaid` bigint(19) NOT NULL AUTO_INCREMENT,
  `language` varchar(2) DEFAULT NULL,
  `countryCode` varchar(2) DEFAULT NULL,
  `SchemeName` varchar(255) NOT NULL DEFAULT 'NCP-Service Status List:',
  `SchemeOperatorName` varchar(255) DEFAULT NULL,
  `StreetAddress` varchar(255) DEFAULT NULL,
  `Locality` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(255) DEFAULT NULL,
  `CountryName` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`schemaid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epsosschemainformation`
--

LOCK TABLES `epsosschemainformation` WRITE;
/*!40000 ALTER TABLE `epsosschemainformation` DISABLE KEYS */;
INSERT INTO `epsosschemainformation` VALUES (1,'en','MT','NCP-Service Status List:','Agius Muscat Hugo','15, Merchants Street','Valetta','VLT2000','Malta','hugo.agius-muscat@gov.mt');
/*!40000 ALTER TABLE `epsosschemainformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epsosservice`
--

DROP TABLE IF EXISTS `epsosservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epsosservice` (
  `serviceid` bigint(19) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `VPNGatewayEndpoint` varchar(255) DEFAULT NULL,
  `PatientIdenitificationEndpoint` varchar(255) DEFAULT NULL,
  `OrderServiceEndpoint` varchar(255) DEFAULT NULL,
  `ConsentServiceEndpoint` varchar(255) DEFAULT NULL,
  `PatientServiceEndpoint` varchar(255) DEFAULT NULL,
  `DispensationServiceEndpoint` varchar(255) DEFAULT NULL,
  `VPNCertificate` text,
  `SPCertificate` text,
  `SCCertificate` text,
  `NCPSignatureCertificate` text,
  `CACertificate` text,
  `DistributionPoints` varchar(255) DEFAULT NULL,
  `EPSOSSchemaInformationschemaid` bigint(19) NOT NULL,
  PRIMARY KEY (`serviceid`),
  KEY `FKEPSOSServi675850` (`EPSOSSchemaInformationschemaid`),
  CONSTRAINT `FKEPSOSServi675850` FOREIGN KEY (`EPSOSSchemaInformationschemaid`) REFERENCES `epsosschemainformation` (`schemaid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epsosservice`
--

LOCK TABLES `epsosservice` WRITE;
/*!40000 ALTER TABLE `epsosservice` DISABLE KEYS */;
INSERT INTO `epsosservice` VALUES (1,'PPT','217.30.96.46','https://217.30.96.46:9443/openncp-ws-server/services/XCPD_Service','https://217.30.96.46:9443/openncp-ws-server/services/XCA_Service','https://217.30.96.46:9443/openncp-ws-server/services/XDR_Service','https://217.30.96.46:9443/openncp-ws-server/services/XCA_Service','','MIIDSjCCArOgAwIBAgIBDzANBgkqhkiG9w0BAQ0FADA1MQswCQYDVQQGEwJCRTETMBEGA1UECgwKSUhFIEV1cm9wZTERMA8GA1UEAwwIRUhEU0kgQ0EwHhcNMTcwNTI3MTIyMTE3WhcNMjcwNTI3MTIyMTE3WjBJMQswCQYDVQQGEwJNVDEcMBoGA1UECgwTTWluaXN0cnkgZm9yIEhlYWx0aDEcMBoGA1UEAwwTbmNwLnZwbnMudGVzdC5jZWZtdDCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAqLEE/RRqoLQRohBeUXf31OTeoL2uvXKBzQ1AzqDUWG9BRa6n/fXoJmqNg6VrYdzq1hO4IGNtmxzaYh7QgM9ZGPPbD1Shy2PRwoBVosyiCo0InI/aQEazvZdSShK4S4iMaKnzicbCS9UwyyBl4bIO/I9xx/t1mOHzvHBXJiKh3yECAwEAAaOCAVQwggFQMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHBzOi8vZ2F6ZWxsZS5laGRzaS5paGUtZXVyb3BlLm5ldC9nc3MvY3JsLzIvY2FjcmwuY3JsMEcGCWCGSAGG+EIBBAQ6FjhodHRwczovL2dhemVsbGUuZWhkc2kuaWhlLWV1cm9wZS5uZXQvZ3NzL2NybC8yL2NhY3JsLmNybDBHBglghkgBhvhCAQMEOhY4aHR0cHM6Ly9nYXplbGxlLmVoZHNpLmloZS1ldXJvcGUubmV0L2dzcy9jcmwvMi9jYWNybC5jcmwwHwYDVR0jBBgwFoAU1CDyv36BdNxq9vygyNXRNJBkA7EwHQYDVR0OBBYEFJSvDOE8fSuuyh9IezZJ8sk1yUapMAwGA1UdEwEB/wQCMAAwDgYDVR0PAQH/BAQDAgUgMBMGA1UdJQQMMAoGCCsGAQUFBwMBMA0GCSqGSIb3DQEBDQUAA4GBABe0dRaWiFFiQHmqkq7AlXt+i5RSrRJD55vXtVG2T2x4tPqTgU9GrxpI3e0TFJw2vSZraENexOlZzqH7+lv//kLr4LdrAFQc/eFpYyMfnBvij3Uv7zju1dcVJtQAMYTbV55MwxIODWCI6pI10t7Wnirtw11P4Z/MoxpHrHgy5Cl6','MIIDSDCCArGgAwIBAgIBETANBgkqhkiG9w0BAQ0FADA1MQswCQYDVQQGEwJCRTETMBEGA1UECgwKSUhFIEV1cm9wZTERMA8GA1UEAwwIRUhEU0kgQ0EwHhcNMTcwNTI3MTcxODE2WhcNMjcwNTI3MTcxODE2WjBHMQswCQYDVQQGEwJNVDEcMBoGA1UECgwTTWluaXN0cnkgZm9yIEhlYWx0ZzEaMBgGA1UEAwwRbmNwLnNwLnRlc3QuY2VmbXQwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAKAQsvHCdnJyauZa/szedaBCuI5azZo2SZZMD1dCYDQwsUpXMRHnxiDEseMTtU1V+KU/GZpBtWsTifO1j//vlyYoC0B2/768F5qDC4zrUd9qMNyhNPtiHFbdj1l+PSn0/h5f+op8J3AoCbIQtT7XSrXwxWW8jYX2dhI+1pEJl9eDAgMBAAGjggFUMIIBUDBJBgNVHR8EQjBAMD6gPKA6hjhodHRwczovL2dhemVsbGUuZWhkc2kuaWhlLWV1cm9wZS5uZXQvZ3NzL2NybC8yL2NhY3JsLmNybDBHBglghkgBhvhCAQQEOhY4aHR0cHM6Ly9nYXplbGxlLmVoZHNpLmloZS1ldXJvcGUubmV0L2dzcy9jcmwvMi9jYWNybC5jcmwwRwYJYIZIAYb4QgEDBDoWOGh0dHBzOi8vZ2F6ZWxsZS5laGRzaS5paGUtZXVyb3BlLm5ldC9nc3MvY3JsLzIvY2FjcmwuY3JsMB8GA1UdIwQYMBaAFNQg8r9+gXTcavb8oMjV0TSQZAOxMB0GA1UdDgQWBBRZ7QiztQAKVs1WH5WkvvzFE7ITZDAMBgNVHRMBAf8EAjAAMA4GA1UdDwEB/wQEAwIFIDATBgNVHSUEDDAKBggrBgEFBQcDATANBgkqhkiG9w0BAQ0FAAOBgQBA2BXhoAQ1JzYLLDMR1JqDW8iI15JbGho6BNbbo0AZ1lL4Iwy7iOyf3IEY22qbzrJw1N853PYIKnkIxrUBpsdy2g27PMkY8Wr9EvNWU90ReayvtlDZZSPzrfEvxmPrGOeamdmb7lKL/VNKb0nAg2F3C9XyfNqrc2ZBHpANb+vRWQ==','MIIDSDCCArGgAwIBAgIBEDANBgkqhkiG9w0BAQ0FADA1MQswCQYDVQQGEwJCRTETMBEGA1UECgwKSUhFIEV1cm9wZTERMA8GA1UEAwwIRUhEU0kgQ0EwHhcNMTcwNTI3MTIyODQ0WhcNMjcwNTI3MTIyODQ0WjBHMQswCQYDVQQGEwJNVDEcMBoGA1UECgwTTWluaXN0cnkgZm9yIEhlYWx0aDEaMBgGA1UEAwwRbmNwLnNjLnRlc3QuY2VmbXQwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAJb1jhro7SheDE/ewjReApieDkO6Tl3V/CXn9QUyQGcOJochFtvAJ45ah/J9QP5NQMsuAJqVrfrVwW4yTCp3aLIl5W7bEPQFH3AAelQNf5HBziu/gg805xfN16GSy2ao3KGIVZCHgpWLUy9zrIJj/jP0IrffOYn6w7A3q7NqelZDAgMBAAGjggFUMIIBUDBJBgNVHR8EQjBAMD6gPKA6hjhodHRwczovL2dhemVsbGUuZWhkc2kuaWhlLWV1cm9wZS5uZXQvZ3NzL2NybC8yL2NhY3JsLmNybDBHBglghkgBhvhCAQQEOhY4aHR0cHM6Ly9nYXplbGxlLmVoZHNpLmloZS1ldXJvcGUubmV0L2dzcy9jcmwvMi9jYWNybC5jcmwwRwYJYIZIAYb4QgEDBDoWOGh0dHBzOi8vZ2F6ZWxsZS5laGRzaS5paGUtZXVyb3BlLm5ldC9nc3MvY3JsLzIvY2FjcmwuY3JsMB8GA1UdIwQYMBaAFNQg8r9+gXTcavb8oMjV0TSQZAOxMB0GA1UdDgQWBBSz6gBXXiyqbdWJQoBBW35hIg7ZtjAMBgNVHRMBAf8EAjAAMA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAjANBgkqhkiG9w0BAQ0FAAOBgQAj0+LUhjMioGHb4VRO11l4Cd3FxVQgva+6wdR21K6UnLXFeQ5jHOdIylL192MmfTpAC/RLnOvrf5cLGDmCyTDkAOhUNH85zIdgpKyciYowsGN5eMCTqKCs0fw5t16EzIxG3nXGXXobW0i2TDsl/dmkBCEMK9iRijr4wewKSj1FSg==','MIIDNTCCAp6gAwIBAgIBEjANBgkqhkiG9w0BAQ0FADA1MQswCQYDVQQGEwJCRTETMBEGA1UECgwKSUhFIEV1cm9wZTERMA8GA1UEAwwIRUhEU0kgQ0EwHhcNMTcwNTI3MTcxOTE5WhcNMjcwNTI3MTcxOTE5WjBJMQswCQYDVQQGEwJNVDEcMBoGA1UECgwTTWluaXN0cnkgZm9yIEhlYWx0aDEcMBoGA1UEAwwTbmNwLnNpZ24udGVzdC5jZWZtdDCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAgKRmT6+n+UtA7ejifeGP5c9sgWvon+iaa5gFV8PtRTrKGtW46SKT8UkCUe4aRDI9/OzDW5Y6yR3d407B1wljT5PXPEKgt0uYS81e9+6isTPezvLG2IDYZJTLe7nG1iYpRMzim2Gm+bCn1vajpzZYMKAP98HqogIfhb4g1fBlBgkCAwEAAaOCAT8wggE7MEkGA1UdHwRCMEAwPqA8oDqGOGh0dHBzOi8vZ2F6ZWxsZS5laGRzaS5paGUtZXVyb3BlLm5ldC9nc3MvY3JsLzIvY2FjcmwuY3JsMEcGCWCGSAGG+EIBBAQ6FjhodHRwczovL2dhemVsbGUuZWhkc2kuaWhlLWV1cm9wZS5uZXQvZ3NzL2NybC8yL2NhY3JsLmNybDBHBglghkgBhvhCAQMEOhY4aHR0cHM6Ly9nYXplbGxlLmVoZHNpLmloZS1ldXJvcGUubmV0L2dzcy9jcmwvMi9jYWNybC5jcmwwHwYDVR0jBBgwFoAU1CDyv36BdNxq9vygyNXRNJBkA7EwHQYDVR0OBBYEFNpdQf2xGjIA4wkdn/29qik0ZjofMAwGA1UdEwEB/wQCMAAwDgYDVR0PAQH/BAQDAgbAMA0GCSqGSIb3DQEBDQUAA4GBAFlW8omx5LIPxPYs9m4ayef4KYKXA9uPuzJpyz1SDk4Vw+pQmc2ylp+98h5WPqUhNLQ3H1KS02xGLZSI07ARQ3789HUa+67FpCNhvJq9o64duBlazcAxxUcnNLoo+qE4xOgvvWJIhDlkZd8uKo6irB8SnNTx5327JGfo7bMvSG+Y','MIIDHTCCAoagAwIBAgIBATANBgkqhkiG9w0BAQ0FADA6MQswCQYDVQQGEwJGUjETMBEGA1UECgwKSUhFIEV1cm9wZTEWMBQGA1UEAwwNSUhFIEV1cm9wZSBDQTAeFw0xMjA5MjgxMTE5MjlaFw0yMjA5MjgxMTE5MjlaMDoxCzAJBgNVBAYTAkZSMRMwEQYDVQQKDApJSEUgRXVyb3BlMRYwFAYDVQQDDA1JSEUgRXVyb3BlIENBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuLWUWgF2L5igJIQ1pWFw/Yk5ZcMG4JPw13GLxn+7nufHHq/xgzxJxFLoY/kL8WUgg+QiCBv6yecXy3qJeb6DjuQJ+k2KHSKQxyN4fpfZdeNVc6w5qNOmMFKixS0ntax/4RXNBgP7IbKq2+fr1QscFZo0X6qWdO9OvL9RgSmGMNQIDAQABo4IBMTCCAS0wPQYDVR0fBDYwNDAyoDCgLoYsaHR0cDovL2dhemVsbGUuaWhlLm5ldC9wa2kvY3JsLzY0My9jYWNybC5jcmwwOwYJYIZIAYb4QgEEBC4WLGh0dHA6Ly9nYXplbGxlLmloZS5uZXQvcGtpL2NybC82NDMvY2FjcmwuY3JsMDsGCWCGSAGG+EIBAwQuFixodHRwOi8vZ2F6ZWxsZS5paGUubmV0L3BraS9jcmwvNjQzL2NhY3JsLmNybDAOBgNVHQ8BAf8EBAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU7DMOE8giXqLha69De3pd0ndzHX4wHwYDVR0jBBgwFoAU7DMOE8giXqLha69De3pd0ndzHX4wEQYJYIZIAYb4QgEBBAQDAgAHMA0GCSqGSIb3DQEBDQUAA4GBAFfPfr/Cjk/ZBsDI9SdHGYqlHAJaJaJX/fpXIu3akEZxCPzMJkTeDDHvUOGaaP7bAHGnTBsS8rR9CD6gyUVJmrC/fk6/QoYFVaPNOGG2M1KnA14bwhriYLXV1INsUwj/jUTdSSvrPgV8XddgM8VgBLAX59VH94jufDPOPqwV1++P','https://webgate.ec.europa.eu/ehealth/tsl',1);
/*!40000 ALTER TABLE `epsosservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epsosservicelog`
--

DROP TABLE IF EXISTS `epsosservicelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epsosservicelog` (
  `logId` bigint(20) NOT NULL AUTO_INCREMENT,
  `logDate` datetime NOT NULL,
  `logDateEnd` datetime DEFAULT NULL,
  `serviceCode` varchar(50) NOT NULL,
  `description` text,
  `status` int(10) DEFAULT '0',
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epsosservicelog`
--

LOCK TABLES `epsosservicelog` WRITE;
/*!40000 ALTER TABLE `epsosservicelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `epsosservicelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandocolumn`
--

DROP TABLE IF EXISTS `expandocolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandocolumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`),
  UNIQUE KEY `IX_FEFC8DA7` (`tableId`,`name`),
  KEY `IX_A8C0CBE8` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandocolumn`
--

LOCK TABLES `expandocolumn` WRITE;
/*!40000 ALTER TABLE `expandocolumn` DISABLE KEYS */;
INSERT INTO `expandocolumn` VALUES (20449,20155,20448,'clientId',15,'','');
/*!40000 ALTER TABLE `expandocolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandorow`
--

DROP TABLE IF EXISTS `expandorow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandorow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`),
  UNIQUE KEY `IX_81EFBFF5` (`tableId`,`classPK`),
  KEY `IX_49EB3118` (`classPK`),
  KEY `IX_D3F5D7AE` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandorow`
--

LOCK TABLES `expandorow` WRITE;
/*!40000 ALTER TABLE `expandorow` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandorow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandotable`
--

DROP TABLE IF EXISTS `expandotable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandotable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`),
  UNIQUE KEY `IX_37562284` (`companyId`,`classNameId`,`name`),
  KEY `IX_B5AE8A85` (`companyId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandotable`
--

LOCK TABLES `expandotable` WRITE;
/*!40000 ALTER TABLE `expandotable` DISABLE KEYS */;
INSERT INTO `expandotable` VALUES (20517,20155,20002,'OPEN_SOCIAL_DATA_'),(20448,20155,20005,'MP'),(20518,20155,20005,'OPEN_SOCIAL_DATA_');
/*!40000 ALTER TABLE `expandotable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandovalue`
--

DROP TABLE IF EXISTS `expandovalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandovalue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`),
  UNIQUE KEY `IX_9DDD21E5` (`columnId`,`rowId_`),
  UNIQUE KEY `IX_D27B03E7` (`tableId`,`columnId`,`classPK`),
  KEY `IX_B29FEF17` (`classNameId`,`classPK`),
  KEY `IX_F7DD0987` (`columnId`),
  KEY `IX_9112A7A0` (`rowId_`),
  KEY `IX_F0566A77` (`tableId`),
  KEY `IX_1BD3F4C` (`tableId`,`classPK`),
  KEY `IX_CA9AFB7C` (`tableId`,`columnId`),
  KEY `IX_B71E92D5` (`tableId`,`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandovalue`
--

LOCK TABLES `expandovalue` WRITE;
/*!40000 ALTER TABLE `expandovalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandovalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_`
--

DROP TABLE IF EXISTS `group_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `manualMembership` tinyint(4) DEFAULT NULL,
  `membershipRestriction` int(11) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `remoteStagingGroupCount` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_5DE0BE11` (`companyId`,`classNameId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5BDDB872` (`companyId`,`friendlyURL`),
  UNIQUE KEY `IX_BBCA55B` (`companyId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5AA68501` (`companyId`,`name`),
  UNIQUE KEY `IX_754FBB1C` (`uuid_`,`groupId`),
  KEY `IX_ABA5CEC2` (`companyId`),
  KEY `IX_B584B5CC` (`companyId`,`classNameId`),
  KEY `IX_ABE2D54` (`companyId`,`classNameId`,`parentGroupId`),
  KEY `IX_5D75499E` (`companyId`,`parentGroupId`),
  KEY `IX_6C499099` (`companyId`,`parentGroupId`,`site`),
  KEY `IX_63A2AABD` (`companyId`,`site`),
  KEY `IX_16218A38` (`liveGroupId`),
  KEY `IX_7B590A7A` (`type_`,`active_`),
  KEY `IX_F981514E` (`uuid_`),
  KEY `IX_26CC761A` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_`
--

LOCK TABLES `group_` WRITE;
/*!40000 ALTER TABLE `group_` DISABLE KEYS */;
INSERT INTO `group_` VALUES ('7853421b-d7ec-4410-8eb2-50b9c68b772d',20177,20155,20159,20001,20177,0,0,'/20177/','Control Panel','',3,'',1,0,'/control_panel',0,0,1),('479da0d4-a148-4190-ae37-e7e0bf9b3247',20186,20155,20159,20001,20186,0,0,'/20186/','Guest','',1,'',1,0,'/guest',1,0,1),('26a334e5-4c84-44f3-ab5b-8bf1755e324a',20196,20155,20159,20195,20159,0,0,'/20196/','User Personal Site','',3,'',1,0,'/personal_site',0,0,1),('71d73143-afee-4271-b0f7-61f6c471767d',20199,20155,20159,20025,20155,0,0,'/20199/','20155','',0,'',1,0,'/global',1,0,1),('4a03b693-5e73-4ce0-8c9d-c98235fd1daa',20205,20155,20203,20005,20203,0,0,'/20205/','20203','',0,'',1,0,'/test',0,0,1),('39f4d995-ca5c-4bbe-94ed-bbde6ff52146',20321,20155,20159,20032,20320,0,0,'/20321/','20320','',0,'',1,0,'/template-20320',0,0,1),('1a7ba039-f7d5-48b9-9fb8-8546075f48b2',20333,20155,20159,20032,20332,0,0,'/20333/','20332','',0,'',1,0,'/template-20332',0,0,1),('fc2f6d85-a3a0-46e6-b60c-c3db44b60957',20343,20155,20159,20032,20342,0,0,'/20343/','20342','',0,'',1,0,'/template-20342',0,0,1),('463f9366-d00f-42b3-9c11-f420dfcf5d2a',20354,20155,20159,20036,20353,0,0,'/20354/','20353','',0,'',1,0,'/template-20353',0,0,1),('e18fbc37-245e-4092-913a-83d8a01dcbff',20380,20155,20159,20036,20379,0,0,'/20380/','20379','',0,'',1,0,'/template-20379',0,0,1),('9a4097ec-bdf7-48ac-8047-859584581dde',20440,20155,20438,20005,20438,0,0,'/20440/','20438','',0,'',1,0,'/admin',0,0,1),('63767097-b4ae-421e-a3bd-468e5233974a',20524,20155,20159,20003,20523,0,0,'/20524/','Liferay, Inc. LFR_ORGANIZATION','',3,'',0,0,'/liferay',1,0,1),('1a6c7308-cfe6-4d0b-b7a1-9e421e375566',20540,20155,20159,20003,20539,20524,0,'/20524/20540/','Liferay Chicago LFR_ORGANIZATION','',3,'',0,0,'/chicago',1,0,1),('68971b1e-4914-47f9-b855-b730f19cdbd9',20545,20155,20543,20005,20543,0,0,'/20545/','20543','',0,'',1,0,'/ord1',0,0,1),('a7af3221-bc61-4a59-94f9-07fc8efbfc10',20551,20155,20549,20005,20549,0,0,'/20551/','20549','',0,'',1,0,'/ord2',0,0,1),('7ad1545f-6930-4bcb-aa4c-2064b2db6487',20557,20155,20555,20005,20555,0,0,'/20557/','20555','',0,'',1,0,'/ord3',0,0,1),('5e8751d2-2cfc-4e55-baa4-1eaf1710c4dc',20563,20155,20561,20005,20561,0,0,'/20563/','20561','',0,'',1,0,'/ord4',0,0,1),('2372a881-2fa0-4a76-a64d-ba9364317a71',20569,20155,20567,20005,20567,0,0,'/20569/','20567','',0,'',1,0,'/ord5',0,0,1),('f85785bc-0656-4cc8-a422-8c76a0d2a579',20575,20155,20573,20005,20573,0,0,'/20575/','20573','',0,'',1,0,'/ord6',0,0,1),('7854e218-4a8b-4a15-b0a8-7a4733949ac5',20581,20155,20579,20005,20579,0,0,'/20581/','20579','',0,'',1,0,'/ord7',0,0,1),('e783b067-a877-4435-8489-e2af01a4ee71',20587,20155,20585,20005,20585,0,0,'/20587/','20585','',0,'',1,0,'/ord8',0,0,1),('ea954d47-bb4b-43a7-b4eb-8a6d285441df',20593,20155,20591,20005,20591,0,0,'/20593/','20591','',0,'',1,0,'/ord9',0,0,1),('6d1dfd86-4951-4b89-a465-96cd7bd7a8df',20599,20155,20597,20005,20597,0,0,'/20599/','20597','',0,'',1,0,'/ord10',0,0,1),('ce4fcac3-8335-4969-bc1e-a9f66e3e54df',20604,20155,20159,20003,20603,20524,0,'/20524/20604/','Liferay Consulting LFR_ORGANIZATION','',3,'',0,0,'/consulting',1,0,1),('48173c0f-4e1a-4eb6-92d8-bb571ba6ec4f',20608,20155,20159,20003,20607,20524,0,'/20524/20608/','Liferay Dalian LFR_ORGANIZATION','',3,'',0,0,'/dalian',1,0,1),('24dbfd4a-0da0-4ce7-a8a7-e53d9b33fb83',20613,20155,20611,20005,20611,0,0,'/20613/','20611','',0,'',1,0,'/dlc1',0,0,1),('e8d627f1-dfcf-4293-9096-c3547d802664',20619,20155,20617,20005,20617,0,0,'/20619/','20617','',0,'',1,0,'/dlc2',0,0,1),('60ea1276-8efb-47d8-a393-55a4344b7141',20625,20155,20623,20005,20623,0,0,'/20625/','20623','',0,'',1,0,'/dlc3',0,0,1),('e292db86-cff2-4cb2-878c-0b8847b94dc5',20631,20155,20629,20005,20629,0,0,'/20631/','20629','',0,'',1,0,'/dlc4',0,0,1),('3ac93aea-f49d-4674-8383-b06bf56224e3',20637,20155,20635,20005,20635,0,0,'/20637/','20635','',0,'',1,0,'/dlc5',0,0,1),('2b4e63c2-1dd6-43d2-90d7-6d028092de4b',20643,20155,20641,20005,20641,0,0,'/20643/','20641','',0,'',1,0,'/dlc6',0,0,1),('a1d1f0ac-0a98-480d-8f12-ef031252093c',20649,20155,20647,20005,20647,0,0,'/20649/','20647','',0,'',1,0,'/dlc7',0,0,1),('2b00b5f7-b7be-405a-b7b5-a501698c7c0f',20655,20155,20653,20005,20653,0,0,'/20655/','20653','',0,'',1,0,'/dlc8',0,0,1),('1296d809-65cf-416b-a325-6baa7827a58c',20661,20155,20659,20005,20659,0,0,'/20661/','20659','',0,'',1,0,'/dlc9',0,0,1),('2074737b-8852-4072-9cda-bf66ac085067',20667,20155,20665,20005,20665,0,0,'/20667/','20665','',0,'',1,0,'/dlc10',0,0,1),('4a61d546-c161-41ef-a20b-71b748a7b3bb',20672,20155,20159,20003,20671,20524,0,'/20524/20672/','Liferay Engineering LFR_ORGANIZATION','',3,'',0,0,'/engineering',1,0,1),('4024eef4-62a7-44de-8936-eec9529b8811',20676,20155,20159,20003,20675,20524,0,'/20524/20676/','Liferay Frankfurt LFR_ORGANIZATION','',3,'',0,0,'/frankfurt',1,0,1),('f503c47b-c5ee-4c89-ab44-6406d4877318',20681,20155,20679,20005,20679,0,0,'/20681/','20679','',0,'',1,0,'/fra1',0,0,1),('1e95859c-59b2-44c3-93a1-1aa479f3d48b',20687,20155,20685,20005,20685,0,0,'/20687/','20685','',0,'',1,0,'/fra2',0,0,1),('c14c738b-01d9-4492-8eb0-4db0f3de2671',20693,20155,20691,20005,20691,0,0,'/20693/','20691','',0,'',1,0,'/fra3',0,0,1),('64d7b61d-3a60-45ad-a090-21caff8e967d',20699,20155,20697,20005,20697,0,0,'/20699/','20697','',0,'',1,0,'/fra4',0,0,1),('ea205442-44d4-4961-a97b-e53e0919992b',20705,20155,20703,20005,20703,0,0,'/20705/','20703','',0,'',1,0,'/fra5',0,0,1),('7a4e6e30-ab68-4184-873d-654695d461e9',20711,20155,20709,20005,20709,0,0,'/20711/','20709','',0,'',1,0,'/fra6',0,0,1),('68dae2db-19c1-44d4-9093-64cb4ab79b12',20717,20155,20715,20005,20715,0,0,'/20717/','20715','',0,'',1,0,'/fra7',0,0,1),('1648129b-b404-485a-aaee-c1ae44c7c8b2',20723,20155,20721,20005,20721,0,0,'/20723/','20721','',0,'',1,0,'/fra8',0,0,1),('5b35f086-cdb1-48f3-bd87-ff4644d420f3',20729,20155,20727,20005,20727,0,0,'/20729/','20727','',0,'',1,0,'/fra9',0,0,1),('fbe8dcf7-a603-4330-b329-9dd55fbe1999',20735,20155,20733,20005,20733,0,0,'/20735/','20733','',0,'',1,0,'/fra10',0,0,1),('6455d9ba-8165-478d-a8fd-c1681917468c',20740,20155,20159,20003,20739,20524,0,'/20524/20740/','Liferay Hong Kong LFR_ORGANIZATION','',3,'',0,0,'/hong-kong',1,0,1),('79b7b5a6-1d1b-498b-a977-268169d0b803',20745,20155,20743,20005,20743,0,0,'/20745/','20743','',0,'',1,0,'/hkg1',0,0,1),('1edce9b7-fcb3-489f-91e2-2608fc716c8f',20751,20155,20749,20005,20749,0,0,'/20751/','20749','',0,'',1,0,'/hkg2',0,0,1),('482ea68e-f4eb-4a38-962f-3a4f93bd12a0',20757,20155,20755,20005,20755,0,0,'/20757/','20755','',0,'',1,0,'/hkg3',0,0,1),('67e424b3-fe23-4ec5-89e7-2c81d4930b0c',20763,20155,20761,20005,20761,0,0,'/20763/','20761','',0,'',1,0,'/hkg4',0,0,1),('c18a7866-cd3a-4667-9a9e-4f9983a40703',20769,20155,20767,20005,20767,0,0,'/20769/','20767','',0,'',1,0,'/hkg5',0,0,1),('9f60c1fd-bb63-4ee3-aaba-b5ad64ce2026',20775,20155,20773,20005,20773,0,0,'/20775/','20773','',0,'',1,0,'/hkg6',0,0,1),('b75508d1-8790-4d3e-9ebb-58ef9852f0aa',20781,20155,20779,20005,20779,0,0,'/20781/','20779','',0,'',1,0,'/hkg7',0,0,1),('49ff9848-e5dc-4c6d-898d-d8b888d2a9b6',20787,20155,20785,20005,20785,0,0,'/20787/','20785','',0,'',1,0,'/hkg8',0,0,1),('3f8cbf94-b40f-43ca-9bdb-a67899561521',20793,20155,20791,20005,20791,0,0,'/20793/','20791','',0,'',1,0,'/hkg9',0,0,1),('8d6c6c2f-3b05-4a58-bac5-af2a0c63e1d2',20799,20155,20797,20005,20797,0,0,'/20799/','20797','',0,'',1,0,'/hkg10',0,0,1),('872dbb91-adc4-4b8f-9385-ab222804a137',20804,20155,20159,20003,20803,20524,0,'/20524/20804/','Liferay Kuala Lumpur LFR_ORGANIZATION','',3,'',0,0,'/kuala-lumpur',1,0,1),('d2c85057-b6c1-439d-9bb6-50a71f5cc277',20809,20155,20807,20005,20807,0,0,'/20809/','20807','',0,'',1,0,'/kul1',0,0,1),('9a749482-3da9-45c3-912c-6123bd6208e3',20815,20155,20813,20005,20813,0,0,'/20815/','20813','',0,'',1,0,'/kul2',0,0,1),('e81da6d7-752a-4bfb-bd49-e0d917feddb2',20821,20155,20819,20005,20819,0,0,'/20821/','20819','',0,'',1,0,'/kul3',0,0,1),('3277bad7-d38e-4ad4-a5fa-ca32f1e77e69',20827,20155,20825,20005,20825,0,0,'/20827/','20825','',0,'',1,0,'/kul4',0,0,1),('d380c3a0-27c2-47e3-a876-2e7d8c94201c',20833,20155,20831,20005,20831,0,0,'/20833/','20831','',0,'',1,0,'/kul5',0,0,1),('a9bd1ea6-e049-4b14-83dc-df6c215882a3',20839,20155,20837,20005,20837,0,0,'/20839/','20837','',0,'',1,0,'/kul6',0,0,1),('6264d13e-3f22-4545-a4e5-d430d50cfb5f',20845,20155,20843,20005,20843,0,0,'/20845/','20843','',0,'',1,0,'/kul7',0,0,1),('a80a0045-39ae-474c-b6d1-3fbcb3c0633f',20851,20155,20849,20005,20849,0,0,'/20851/','20849','',0,'',1,0,'/kul8',0,0,1),('3704e382-9777-4903-b495-e51590530d77',20857,20155,20855,20005,20855,0,0,'/20857/','20855','',0,'',1,0,'/kul9',0,0,1),('e34f53d2-907c-44b2-b245-2428e2bba3c1',20863,20155,20861,20005,20861,0,0,'/20863/','20861','',0,'',1,0,'/kul10',0,0,1),('ab326502-b9c3-496b-8acd-2dd0c4627af5',20868,20155,20159,20003,20867,20524,0,'/20524/20868/','Liferay Los Angeles LFR_ORGANIZATION','',3,'',0,0,'/los-angeles',1,0,1),('638a6e85-be91-4b62-8754-fb8fd2b99ec3',20873,20155,20871,20005,20871,0,0,'/20873/','20871','',0,'',1,0,'/lax1',0,0,1),('b5b6311b-9b81-41a2-af73-a1a759118ade',20879,20155,20877,20005,20877,0,0,'/20879/','20877','',0,'',1,0,'/lax2',0,0,1),('353a9223-fcb8-4d3c-9934-1118479a7782',20885,20155,20883,20005,20883,0,0,'/20885/','20883','',0,'',1,0,'/lax3',0,0,1),('08c2c058-aa29-4eee-8fa0-b721fd046679',20891,20155,20889,20005,20889,0,0,'/20891/','20889','',0,'',1,0,'/lax4',0,0,1),('cb702ab6-a1d6-4014-9c79-9ab7f2b946bb',20897,20155,20895,20005,20895,0,0,'/20897/','20895','',0,'',1,0,'/lax5',0,0,1),('ce530b2e-0a66-4e5d-9fb6-0bd95ef5a924',20903,20155,20901,20005,20901,0,0,'/20903/','20901','',0,'',1,0,'/lax6',0,0,1),('90f00df0-a7c6-4750-8cdf-96ce5f23bd3a',20909,20155,20907,20005,20907,0,0,'/20909/','20907','',0,'',1,0,'/lax7',0,0,1),('2c1dd730-b0c7-440d-9dfe-a85a2ce990e2',20915,20155,20913,20005,20913,0,0,'/20915/','20913','',0,'',1,0,'/lax8',0,0,1),('b84fed68-dcb0-44ef-8723-32bced92e503',20921,20155,20919,20005,20919,0,0,'/20921/','20919','',0,'',1,0,'/lax9',0,0,1),('fc9f2b2a-56d6-4e37-a427-16002bb6915c',20927,20155,20925,20005,20925,0,0,'/20927/','20925','',0,'',1,0,'/lax10',0,0,1),('bc3cb29c-5cf4-4c9a-898f-87ab71836613',20932,20155,20159,20003,20931,20524,0,'/20524/20932/','Liferay Madrid LFR_ORGANIZATION','',3,'',0,0,'/madrid',1,0,1),('c79e1ad8-5ea0-4cdd-b99e-344edd1af758',20937,20155,20935,20005,20935,0,0,'/20937/','20935','',0,'',1,0,'/mad1',0,0,1),('c243a3ae-9fa5-4640-9ff9-4b2501b1fb92',20943,20155,20941,20005,20941,0,0,'/20943/','20941','',0,'',1,0,'/mad2',0,0,1),('7066cdd3-6f08-437f-aa50-fd5365ccaaf4',20949,20155,20947,20005,20947,0,0,'/20949/','20947','',0,'',1,0,'/mad3',0,0,1),('871d5ac3-a230-4167-a143-b90012cfef15',20955,20155,20953,20005,20953,0,0,'/20955/','20953','',0,'',1,0,'/mad4',0,0,1),('516994df-7491-462a-8467-1c36596484c5',20961,20155,20959,20005,20959,0,0,'/20961/','20959','',0,'',1,0,'/mad5',0,0,1),('f596af75-e957-4efd-ad9d-771b64167928',20967,20155,20965,20005,20965,0,0,'/20967/','20965','',0,'',1,0,'/mad6',0,0,1),('5d062695-666c-4487-bda5-3dae6e3ded32',20973,20155,20971,20005,20971,0,0,'/20973/','20971','',0,'',1,0,'/mad7',0,0,1),('9e3448bb-919f-42da-b191-0f1b361865ad',20979,20155,20977,20005,20977,0,0,'/20979/','20977','',0,'',1,0,'/mad8',0,0,1),('e4cb3225-a9ba-49e6-8a9c-6e9f0728765a',20985,20155,20983,20005,20983,0,0,'/20985/','20983','',0,'',1,0,'/mad9',0,0,1),('9bb0d1ca-cee5-4fdc-baed-050c23b0a1f2',20991,20155,20989,20005,20989,0,0,'/20991/','20989','',0,'',1,0,'/mad10',0,0,1),('dba30da6-28d7-4c22-95ea-debba74fcf46',20996,20155,20159,20003,20995,20524,0,'/20524/20996/','Liferay Marketing LFR_ORGANIZATION','',3,'',0,0,'/marketing',1,0,1),('b5ecdea9-e8f3-42d3-b55c-cd5782c49be2',21000,20155,20159,20003,20999,20524,0,'/20524/21000/','Liferay New York LFR_ORGANIZATION','',3,'',0,0,'/new-york',1,0,1),('e111a250-4c7c-4b1e-8921-389107b1321c',21005,20155,21003,20005,21003,0,0,'/21005/','21003','',0,'',1,0,'/nyc1',0,0,1),('7e161544-29d8-4d17-863d-86e7a4587961',21011,20155,21009,20005,21009,0,0,'/21011/','21009','',0,'',1,0,'/nyc2',0,0,1),('bc1fe45b-1a63-45aa-ab90-4977f09780ad',21017,20155,21015,20005,21015,0,0,'/21017/','21015','',0,'',1,0,'/nyc3',0,0,1),('4e5ef42f-775c-43a4-8d60-8bbaccb864a3',21023,20155,21021,20005,21021,0,0,'/21023/','21021','',0,'',1,0,'/nyc4',0,0,1),('20822885-db87-4781-a099-ce343de0f200',21029,20155,21027,20005,21027,0,0,'/21029/','21027','',0,'',1,0,'/nyc5',0,0,1),('907da793-27cf-4b68-aded-a802b6d82403',21035,20155,21033,20005,21033,0,0,'/21035/','21033','',0,'',1,0,'/nyc6',0,0,1),('646d7d28-3b3f-4559-bdca-1bff4649d38e',21041,20155,21039,20005,21039,0,0,'/21041/','21039','',0,'',1,0,'/nyc7',0,0,1),('42617071-6a3c-4672-9cb9-a33afd195b1c',21047,20155,21045,20005,21045,0,0,'/21047/','21045','',0,'',1,0,'/nyc8',0,0,1),('d3af9ad2-1978-44d6-9154-85a5e45b9f61',21053,20155,21051,20005,21051,0,0,'/21053/','21051','',0,'',1,0,'/nyc9',0,0,1),('54bd82c8-868e-43e0-9180-191dcdf321b7',21059,20155,21057,20005,21057,0,0,'/21059/','21057','',0,'',1,0,'/nyc10',0,0,1),('73ad4fd3-5506-4253-b68a-1b71f0fed2c7',21064,20155,20159,20003,21063,20524,0,'/20524/21064/','Liferay Saint Paulo LFR_ORGANIZATION','',3,'',0,0,'/saint-paulo',1,0,1),('5f5c87ae-4fb0-40a0-a9bf-aac246e50a46',21069,20155,21067,20005,21067,0,0,'/21069/','21067','',0,'',1,0,'/gru1',0,0,1),('6967f2cb-9670-4087-99ed-2413a037610c',21075,20155,21073,20005,21073,0,0,'/21075/','21073','',0,'',1,0,'/gru2',0,0,1),('7d288872-8cd5-4df2-84fe-b364b717f2e3',21081,20155,21079,20005,21079,0,0,'/21081/','21079','',0,'',1,0,'/gru3',0,0,1),('ff050bfe-9ba0-463f-8a5b-10d5ef9c958b',21087,20155,21085,20005,21085,0,0,'/21087/','21085','',0,'',1,0,'/gru4',0,0,1),('753d6bd0-69b9-4ef6-bf1f-734a4352463a',21093,20155,21091,20005,21091,0,0,'/21093/','21091','',0,'',1,0,'/gru5',0,0,1),('017bb34d-5e2c-4b1e-8fdb-596c160f7174',21099,20155,21097,20005,21097,0,0,'/21099/','21097','',0,'',1,0,'/gru6',0,0,1),('48af32c9-aa4b-4511-b024-af4ec9557e84',21105,20155,21103,20005,21103,0,0,'/21105/','21103','',0,'',1,0,'/gru7',0,0,1),('76cae67d-a48d-49ce-8fec-088b60ca6df1',21111,20155,21109,20005,21109,0,0,'/21111/','21109','',0,'',1,0,'/gru8',0,0,1),('fff495ac-69db-491a-9a31-479b7d655a44',21117,20155,21115,20005,21115,0,0,'/21117/','21115','',0,'',1,0,'/gru9',0,0,1),('44eefb63-0208-498a-b921-d912b9ee7ff9',21123,20155,21121,20005,21121,0,0,'/21123/','21121','',0,'',1,0,'/gru10',0,0,1),('fe5a6276-27b6-4140-a037-515fdfb40ea4',21128,20155,20159,20003,21127,20524,0,'/20524/21128/','Liferay Sales LFR_ORGANIZATION','',3,'',0,0,'/sales',1,0,1),('8e7ee03a-44ca-4638-9f1d-0152760744bc',21132,20155,20159,20003,21131,20524,0,'/20524/21132/','Liferay San Francisco LFR_ORGANIZATION','',3,'',0,0,'/san-francisco',1,0,1),('d188f9a2-cb7b-443f-ad63-ab456cefe67b',21137,20155,21135,20005,21135,0,0,'/21137/','21135','',0,'',1,0,'/sfo1',0,0,1),('c379a84f-f48d-4f2d-a9a5-ec7573cf947a',21143,20155,21141,20005,21141,0,0,'/21143/','21141','',0,'',1,0,'/sfo2',0,0,1),('8a1e769e-ae32-4928-b981-383cb2952de1',21149,20155,21147,20005,21147,0,0,'/21149/','21147','',0,'',1,0,'/sfo3',0,0,1),('ec698203-7d30-41b7-a6fd-ce9f99cf35d8',21155,20155,21153,20005,21153,0,0,'/21155/','21153','',0,'',1,0,'/sfo4',0,0,1),('ae9e5f24-c6bc-475c-9dc1-9ff684527677',21161,20155,21159,20005,21159,0,0,'/21161/','21159','',0,'',1,0,'/sfo5',0,0,1),('2630267a-2e1b-42a0-a976-b8da8299072a',21167,20155,21165,20005,21165,0,0,'/21167/','21165','',0,'',1,0,'/sfo6',0,0,1),('c54d2db5-1c89-46e1-9327-cfc6bb9737c1',21173,20155,21171,20005,21171,0,0,'/21173/','21171','',0,'',1,0,'/sfo7',0,0,1),('bc498f5c-d80f-4b1b-b9d2-913376b49dc0',21179,20155,21177,20005,21177,0,0,'/21179/','21177','',0,'',1,0,'/sfo8',0,0,1),('bc9b2b32-d23f-4dc9-a966-7243d2c44569',21185,20155,21183,20005,21183,0,0,'/21185/','21183','',0,'',1,0,'/sfo9',0,0,1),('8eca456e-1597-442e-8875-a85bfe843006',21191,20155,21189,20005,21189,0,0,'/21191/','21189','',0,'',1,0,'/sfo10',0,0,1),('cf6f832c-d7bf-400b-8293-4b9574088071',21196,20155,20159,20003,21195,20524,0,'/20524/21196/','Liferay Support LFR_ORGANIZATION','',3,'',0,0,'/support',1,0,1),('b82a09c7-52a9-47fa-acea-265922895122',21222,20155,21220,20005,21220,0,0,'/21222/','21220','',0,'',1,0,'/doctor',0,0,1),('933ae300-8758-4d2b-bf13-cbecac470c94',21231,20155,21229,20005,21229,0,0,'/21231/','21229','',0,'',1,0,'/pharmacist',0,0,1),('a6095d35-29ef-4fe6-ad22-d935a0ddf930',21704,20155,21702,20005,21702,0,0,'/21704/','21702','',0,'',1,0,'/nurse',0,0,1),('3c6ac90e-6726-49cf-bf1c-3cf4a35fc0c5',22303,20155,22301,20005,22301,0,0,'/22303/','22301','',0,'',1,0,'/testdoctor',0,0,1);
/*!40000 ALTER TABLE `group_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_orgs`
--

DROP TABLE IF EXISTS `groups_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`),
  KEY `IX_75267DCA` (`groupId`),
  KEY `IX_6BBB7682` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_orgs`
--

LOCK TABLES `groups_orgs` WRITE;
/*!40000 ALTER TABLE `groups_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_roles`
--

DROP TABLE IF EXISTS `groups_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`),
  KEY `IX_84471FD2` (`groupId`),
  KEY `IX_3103EF3D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_roles`
--

LOCK TABLES `groups_roles` WRITE;
/*!40000 ALTER TABLE `groups_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_usergroups`
--

DROP TABLE IF EXISTS `groups_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_usergroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`),
  KEY `IX_31FB749A` (`groupId`),
  KEY `IX_3B69160F` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_usergroups`
--

LOCK TABLES `groups_usergroups` WRITE;
/*!40000 ALTER TABLE `groups_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `IX_6A925A4D` (`size_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (22211,'2017-06-20 05:44:17','jpg',123,100,4153);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticle`
--

DROP TABLE IF EXISTS `journalarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_85C52EEC` (`groupId`,`articleId`,`version`),
  UNIQUE KEY `IX_3463D95B` (`uuid_`,`groupId`),
  KEY `IX_FF0E7A72` (`classNameId`,`templateId`),
  KEY `IX_DFF98523` (`companyId`),
  KEY `IX_323DF109` (`companyId`,`status`),
  KEY `IX_3D070845` (`companyId`,`version`),
  KEY `IX_E82F322B` (`companyId`,`version`,`status`),
  KEY `IX_EA05E9E1` (`displayDate`,`status`),
  KEY `IX_9356F865` (`groupId`),
  KEY `IX_68C0F69C` (`groupId`,`articleId`),
  KEY `IX_4D5CD982` (`groupId`,`articleId`,`status`),
  KEY `IX_9CE6E0FA` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_A2534AC2` (`groupId`,`classNameId`,`layoutUuid`),
  KEY `IX_91E78C35` (`groupId`,`classNameId`,`structureId`),
  KEY `IX_F43B9FF2` (`groupId`,`classNameId`,`templateId`),
  KEY `IX_5CD17502` (`groupId`,`folderId`),
  KEY `IX_F35391E8` (`groupId`,`folderId`,`status`),
  KEY `IX_3C028C1E` (`groupId`,`layoutUuid`),
  KEY `IX_301D024B` (`groupId`,`status`),
  KEY `IX_2E207659` (`groupId`,`structureId`),
  KEY `IX_8DEAE14E` (`groupId`,`templateId`),
  KEY `IX_22882D02` (`groupId`,`urlTitle`),
  KEY `IX_D2D249E8` (`groupId`,`urlTitle`,`status`),
  KEY `IX_D19C1B9F` (`groupId`,`userId`),
  KEY `IX_43A0F80F` (`groupId`,`userId`,`classNameId`),
  KEY `IX_3F1EA19E` (`layoutUuid`),
  KEY `IX_33F49D16` (`resourcePrimKey`),
  KEY `IX_89FF8B06` (`resourcePrimKey`,`indexable`),
  KEY `IX_451D63EC` (`resourcePrimKey`,`indexable`,`status`),
  KEY `IX_3E2765FC` (`resourcePrimKey`,`status`),
  KEY `IX_EF9B7028` (`smallImageId`),
  KEY `IX_8E8710D9` (`structureId`),
  KEY `IX_9106F6CE` (`templateId`),
  KEY `IX_F029602F` (`uuid_`),
  KEY `IX_71520099` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticle`
--

LOCK TABLES `journalarticle` WRITE;
/*!40000 ALTER TABLE `journalarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticleimage`
--

DROP TABLE IF EXISTS `journalarticleimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticleimage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`),
  UNIQUE KEY `IX_103D6207` (`groupId`,`articleId`,`version`,`elInstanceId`,`elName`,`languageId`),
  KEY `IX_3B51BB68` (`groupId`),
  KEY `IX_158B526F` (`groupId`,`articleId`,`version`),
  KEY `IX_D4121315` (`tempImage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticleimage`
--

LOCK TABLES `journalarticleimage` WRITE;
/*!40000 ALTER TABLE `journalarticleimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticleimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticleresource`
--

DROP TABLE IF EXISTS `journalarticleresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticleresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_88DF994A` (`groupId`,`articleId`),
  UNIQUE KEY `IX_84AB0309` (`uuid_`,`groupId`),
  KEY `IX_F8433677` (`groupId`),
  KEY `IX_DCD1FAC1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticleresource`
--

LOCK TABLES `journalarticleresource` WRITE;
/*!40000 ALTER TABLE `journalarticleresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticleresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalcontentsearch`
--

DROP TABLE IF EXISTS `journalcontentsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalcontentsearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`),
  UNIQUE KEY `IX_C3AA93B8` (`groupId`,`privateLayout`,`layoutId`,`portletId`,`articleId`),
  KEY `IX_9207CB31` (`articleId`),
  KEY `IX_6838E427` (`groupId`,`articleId`),
  KEY `IX_20962903` (`groupId`,`privateLayout`),
  KEY `IX_7CC7D73E` (`groupId`,`privateLayout`,`articleId`),
  KEY `IX_B3B318DC` (`groupId`,`privateLayout`,`layoutId`),
  KEY `IX_7ACC74C9` (`groupId`,`privateLayout`,`layoutId`,`portletId`),
  KEY `IX_8DAF8A35` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalcontentsearch`
--

LOCK TABLES `journalcontentsearch` WRITE;
/*!40000 ALTER TABLE `journalcontentsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalcontentsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalfeed`
--

DROP TABLE IF EXISTS `journalfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalfeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedFormat` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_65576CBC` (`groupId`,`feedId`),
  UNIQUE KEY `IX_39031F51` (`uuid_`,`groupId`),
  KEY `IX_35A2DB2F` (`groupId`),
  KEY `IX_50C36D79` (`uuid_`),
  KEY `IX_CB37A10F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalfeed`
--

LOCK TABLES `journalfeed` WRITE;
/*!40000 ALTER TABLE `journalfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalfolder`
--

DROP TABLE IF EXISTS `journalfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_65026705` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_E002061` (`uuid_`,`groupId`),
  KEY `IX_E6E2725D` (`companyId`),
  KEY `IX_C36B0443` (`companyId`,`status`),
  KEY `IX_742DEC1F` (`groupId`),
  KEY `IX_E988689E` (`groupId`,`name`),
  KEY `IX_190483C6` (`groupId`,`parentFolderId`),
  KEY `IX_EFD9CAC` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_63BDFA69` (`uuid_`),
  KEY `IX_54F89E1F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalfolder`
--

LOCK TABLES `journalfolder` WRITE;
/*!40000 ALTER TABLE `journalfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleoaction`
--

DROP TABLE IF EXISTS `kaleoaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleoaction` (
  `kaleoActionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `scriptRequiredContexts` longtext,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`kaleoActionId`),
  KEY `IX_50E9112C` (`companyId`),
  KEY `IX_170EFD7A` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_4B2545E8` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_F95A622` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleoaction`
--

LOCK TABLES `kaleoaction` WRITE;
/*!40000 ALTER TABLE `kaleoaction` DISABLE KEYS */;
INSERT INTO `kaleoaction` VALUES (20477,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoNode',20476,20475,'update','reject','','onAssignment','\n					\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"denied\"), workflowContext);\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"pending\"), workflowContext);\n					\n				','javascript','',0),(20482,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoNode',20481,20475,'approved','approve','','onEntry','\n					\n						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;\n						import com.liferay.portal.kernel.workflow.WorkflowConstants;\n\n						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					\n				','groovy','',0);
/*!40000 ALTER TABLE `kaleoaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleocondition`
--

DROP TABLE IF EXISTS `kaleocondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleocondition` (
  `kaleoConditionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `scriptRequiredContexts` longtext,
  PRIMARY KEY (`kaleoConditionId`),
  KEY `IX_FEE46067` (`companyId`),
  KEY `IX_DC978A5D` (`kaleoDefinitionId`),
  KEY `IX_86CBD4C` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleocondition`
--

LOCK TABLES `kaleocondition` WRITE;
/*!40000 ALTER TABLE `kaleocondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleocondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleodefinition`
--

DROP TABLE IF EXISTS `kaleodefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleodefinition` (
  `kaleoDefinitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `content` longtext,
  `version` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `startKaleoNodeId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`kaleoDefinitionId`),
  KEY `IX_40B9112F` (`companyId`),
  KEY `IX_408542BA` (`companyId`,`active_`),
  KEY `IX_76C781AE` (`companyId`,`name`),
  KEY `IX_4C23F11B` (`companyId`,`name`,`active_`),
  KEY `IX_EC14F81A` (`companyId`,`name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleodefinition`
--

LOCK TABLES `kaleodefinition` WRITE;
/*!40000 ALTER TABLE `kaleodefinition` DISABLE KEYS */;
INSERT INTO `kaleodefinition` VALUES (20475,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:55','Single Approver','Single Approver','A single approver can approve a workflow content.','<?xml version=\"1.0\"?>\n\n<workflow-definition xmlns=\"urn:liferay.com:liferay-workflow_6.2.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"urn:liferay.com:liferay-workflow_6.2.0 http://www.liferay.com/dtd/liferay-workflow-definition_6_2_0.xsd\">\n	<name>Single Approver</name>\n	<description>A single approver can approve a workflow content.</description>\n	<version>1</version>\n	<state>\n		<name>created</name>\n		<metadata> <![CDATA[{\"xy\":[36,51]}]]> </metadata>\n		<initial>true</initial>\n		<transitions>\n			<transition>\n				<name>review</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</state>\n	<task>\n		<name>update</name>\n		<metadata> <![CDATA[{\"transitions\":{\"resubmit\":{\"bendpoints\":[[303,140]]}},\"xy\":[328,199]}]]> </metadata>\n		<actions>\n			<action>\n				<name>reject</name>\n				<script> <![CDATA[\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"denied\"), workflowContext);\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"pending\"), workflowContext);\n					]]> </script>\n				<script-language>javascript</script-language>\n				<execution-type>onAssignment</execution-type>\n			</action>\n			<notification>\n				<name>Creator Modification Notification</name>\n				<template>Your submission was rejected by ${userName}, please modify and resubmit.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<notification-type>user-notification</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<user/>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>resubmit</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</task>\n	<task>\n		<name>review</name>\n		<metadata> <![CDATA[{\"xy\":[168,36]}]]> </metadata>\n		<actions>\n			<notification>\n				<name>Review Notification</name>\n				<template>${userName} sent you a ${entryType} for review in the workflow.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<notification-type>user-notification</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n			<notification>\n				<name>Review Completion Notification</name>\n				<template>Your submission has been reviewed and the reviewer has applied the following ${taskComments}.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<recipients>\n					<user/>\n				</recipients>\n				<execution-type>onExit</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<roles>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Administrator</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Owner</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Administrator</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Portal Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Administrator</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Owner</name>\n				</role>\n			</roles>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>approve</name>\n				<target>approved</target>\n			</transition>\n			<transition>\n				<name>reject</name>\n				<target>update</target>\n				<default>false</default>\n			</transition>\n		</transitions>\n	</task>\n	<state>\n		<name>approved</name>\n		<metadata> <![CDATA[\n				{\"xy\":[380,51]}\n			]]> </metadata>\n		<actions>\n			<action>\n				<name>approve</name>\n				<script> <![CDATA[\n						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;\n						import com.liferay.portal.kernel.workflow.WorkflowConstants;\n\n						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					]]> </script>\n				<script-language>groovy</script-language>\n				<execution-type>onEntry</execution-type>\n			</action>\n		</actions>\n	</state>\n</workflow-definition>',1,1,20483);
/*!40000 ALTER TABLE `kaleodefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleoinstance`
--

DROP TABLE IF EXISTS `kaleoinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleoinstance` (
  `kaleoInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoDefinitionName` varchar(200) DEFAULT NULL,
  `kaleoDefinitionVersion` int(11) DEFAULT NULL,
  `rootKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoInstanceId`),
  KEY `IX_58D85ECB` (`className`,`classPK`),
  KEY `IX_5F2FCD2D` (`companyId`),
  KEY `IX_BF5839F8` (`companyId`,`kaleoDefinitionName`,`kaleoDefinitionVersion`,`completionDate`),
  KEY `IX_C6D7A867` (`companyId`,`userId`),
  KEY `IX_4DA4D123` (`kaleoDefinitionId`),
  KEY `IX_ACF16238` (`kaleoDefinitionId`,`completed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleoinstance`
--

LOCK TABLES `kaleoinstance` WRITE;
/*!40000 ALTER TABLE `kaleoinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleoinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleoinstancetoken`
--

DROP TABLE IF EXISTS `kaleoinstancetoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleoinstancetoken` (
  `kaleoInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `parentKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoInstanceTokenId`),
  KEY `IX_153721BE` (`companyId`),
  KEY `IX_4A86923B` (`companyId`,`parentKaleoInstanceTokenId`),
  KEY `IX_360D34D9` (`companyId`,`parentKaleoInstanceTokenId`,`completionDate`),
  KEY `IX_7BDB04B4` (`kaleoDefinitionId`),
  KEY `IX_F42AAFF6` (`kaleoInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleoinstancetoken`
--

LOCK TABLES `kaleoinstancetoken` WRITE;
/*!40000 ALTER TABLE `kaleoinstancetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleoinstancetoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleolog`
--

DROP TABLE IF EXISTS `kaleolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleolog` (
  `kaleoLogId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `terminalKaleoNode` tinyint(4) DEFAULT NULL,
  `kaleoActionId` bigint(20) DEFAULT NULL,
  `kaleoActionName` varchar(200) DEFAULT NULL,
  `kaleoActionDescription` longtext,
  `previousKaleoNodeId` bigint(20) DEFAULT NULL,
  `previousKaleoNodeName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassPK` bigint(20) DEFAULT NULL,
  `currentAssigneeClassName` varchar(200) DEFAULT NULL,
  `currentAssigneeClassPK` bigint(20) DEFAULT NULL,
  `type_` varchar(50) DEFAULT NULL,
  `comment_` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoLogId`),
  KEY `IX_73B5F4DE` (`companyId`),
  KEY `IX_E66A153A` (`kaleoClassName`,`kaleoClassPK`,`kaleoInstanceTokenId`,`type_`),
  KEY `IX_6C64B7D4` (`kaleoDefinitionId`),
  KEY `IX_5BC6AB16` (`kaleoInstanceId`),
  KEY `IX_470B9FF8` (`kaleoInstanceTokenId`,`type_`),
  KEY `IX_B0CDCA38` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleolog`
--

LOCK TABLES `kaleolog` WRITE;
/*!40000 ALTER TABLE `kaleolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleonode`
--

DROP TABLE IF EXISTS `kaleonode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleonode` (
  `kaleoNodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `type_` varchar(20) DEFAULT NULL,
  `initial_` tinyint(4) DEFAULT NULL,
  `terminal` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoNodeId`),
  KEY `IX_C4E9ACE0` (`companyId`),
  KEY `IX_F28C443E` (`companyId`,`kaleoDefinitionId`),
  KEY `IX_32E94DD6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleonode`
--

LOCK TABLES `kaleonode` WRITE;
/*!40000 ALTER TABLE `kaleonode` DISABLE KEYS */;
INSERT INTO `kaleonode` VALUES (20476,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54',20475,'update','\n			{\"transitions\":{\"resubmit\":{\"bendpoints\":[[303,140]]}},\"xy\":[328,199]}\n		','','TASK',0,0),(20481,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54',20475,'approved','\n			\n				{\"xy\":[380,51]}\n			\n		','','STATE',0,1),(20483,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54',20475,'created','\n			{\"xy\":[36,51]}\n		','','STATE',1,0),(20484,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54',20475,'review','\n			{\"xy\":[168,36]}\n		','','TASK',0,0);
/*!40000 ALTER TABLE `kaleonode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleonotification`
--

DROP TABLE IF EXISTS `kaleonotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleonotification` (
  `kaleoNotificationId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `template` longtext,
  `templateLanguage` varchar(75) DEFAULT NULL,
  `notificationTypes` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationId`),
  KEY `IX_38829497` (`companyId`),
  KEY `IX_902D342F` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_F3362E93` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_4B968E8D` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleonotification`
--

LOCK TABLES `kaleonotification` WRITE;
/*!40000 ALTER TABLE `kaleonotification` DISABLE KEYS */;
INSERT INTO `kaleonotification` VALUES (20478,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoNode',20476,20475,'update','Creator Modification Notification','','onAssignment','Your submission was rejected by ${userName}, please modify and resubmit.','freemarker','email,user-notification'),(20485,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoNode',20484,20475,'review','Review Notification','','onAssignment','${userName} sent you a ${entryType} for review in the workflow.','freemarker','email,user-notification'),(20486,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoNode',20484,20475,'review','Review Completion Notification','','onExit','\n					Your submission has been reviewed and the reviewer has applied the following ${taskComments}.','freemarker','email');
/*!40000 ALTER TABLE `kaleonotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleonotificationrecipient`
--

DROP TABLE IF EXISTS `kaleonotificationrecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleonotificationrecipient` (
  `kaleoNotificationRecipientId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNotificationId` bigint(20) DEFAULT NULL,
  `recipientClassName` varchar(200) DEFAULT NULL,
  `recipientClassPK` bigint(20) DEFAULT NULL,
  `recipientRoleType` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationRecipientId`),
  KEY `IX_2C8C4AF4` (`companyId`),
  KEY `IX_AA6697EA` (`kaleoDefinitionId`),
  KEY `IX_7F4FED02` (`kaleoNotificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleonotificationrecipient`
--

LOCK TABLES `kaleonotificationrecipient` WRITE;
/*!40000 ALTER TABLE `kaleonotificationrecipient` DISABLE KEYS */;
INSERT INTO `kaleonotificationrecipient` VALUES (20487,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54',20475,20486,'com.liferay.portal.model.User',0,0,'');
/*!40000 ALTER TABLE `kaleonotificationrecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotask`
--

DROP TABLE IF EXISTS `kaleotask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotask` (
  `kaleoTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`kaleoTaskId`),
  KEY `IX_E1F8B23D` (`companyId`),
  KEY `IX_3FFA633` (`kaleoDefinitionId`),
  KEY `IX_77B3F1A2` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotask`
--

LOCK TABLES `kaleotask` WRITE;
/*!40000 ALTER TABLE `kaleotask` DISABLE KEYS */;
INSERT INTO `kaleotask` VALUES (20479,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54',20475,20476,'update',''),(20488,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54',20475,20484,'review','');
/*!40000 ALTER TABLE `kaleotask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotaskassignment`
--

DROP TABLE IF EXISTS `kaleotaskassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotaskassignment` (
  `kaleoTaskAssignmentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `assigneeActionId` varchar(75) DEFAULT NULL,
  `assigneeScript` longtext,
  `assigneeScriptLanguage` varchar(75) DEFAULT NULL,
  `assigneeScriptRequiredContexts` longtext,
  PRIMARY KEY (`kaleoTaskAssignmentId`),
  KEY `IX_611732B0` (`companyId`),
  KEY `IX_D835C576` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1087068E` (`kaleoClassName`,`kaleoClassPK`,`assigneeClassName`),
  KEY `IX_575C03A6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotaskassignment`
--

LOCK TABLES `kaleotaskassignment` WRITE;
/*!40000 ALTER TABLE `kaleotaskassignment` DISABLE KEYS */;
INSERT INTO `kaleotaskassignment` VALUES (20480,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20475,0,'com.liferay.portal.model.User',0,'','','',''),(20489,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoTask',20488,20475,0,'com.liferay.portal.model.Role',20162,'','','',''),(20490,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoTask',20488,20475,0,'com.liferay.portal.model.Role',20491,'','','',''),(20492,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoTask',20488,20475,0,'com.liferay.portal.model.Role',20493,'','','',''),(20494,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoTask',20488,20475,0,'com.liferay.portal.model.Role',20495,'','','',''),(20496,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoTask',20488,20475,0,'com.liferay.portal.model.Role',20176,'','','',''),(20497,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoTask',20488,20475,0,'com.liferay.portal.model.Role',20174,'','','',''),(20498,0,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54','com.liferay.portal.workflow.kaleo.model.KaleoTask',20488,20475,0,'com.liferay.portal.model.Role',20171,'','','',''),(20499,0,20155,20159,'','2017-01-09 16:27:55','2017-01-09 16:27:55','com.liferay.portal.workflow.kaleo.model.KaleoTask',20488,20475,0,'com.liferay.portal.model.Role',20172,'','','','');
/*!40000 ALTER TABLE `kaleotaskassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotaskassignmentinstance`
--

DROP TABLE IF EXISTS `kaleotaskassignmentinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotaskassignmentinstance` (
  `kaleoTaskAssignmentInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoTaskAssignmentInstanceId`),
  KEY `IX_945F4EB7` (`assigneeClassName`),
  KEY `IX_3BD436FD` (`assigneeClassName`,`assigneeClassPK`),
  KEY `IX_6E3CDA1B` (`companyId`),
  KEY `IX_38A47B17` (`groupId`,`assigneeClassPK`),
  KEY `IX_C851011` (`kaleoDefinitionId`),
  KEY `IX_67A9EE93` (`kaleoInstanceId`),
  KEY `IX_D4C2235B` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotaskassignmentinstance`
--

LOCK TABLES `kaleotaskassignmentinstance` WRITE;
/*!40000 ALTER TABLE `kaleotaskassignmentinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotaskassignmentinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotaskinstancetoken`
--

DROP TABLE IF EXISTS `kaleotaskinstancetoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotaskinstancetoken` (
  `kaleoTaskInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTaskInstanceTokenId`),
  KEY `IX_A3271995` (`className`,`classPK`),
  KEY `IX_997FE723` (`companyId`),
  KEY `IX_608E9519` (`kaleoDefinitionId`),
  KEY `IX_2CE1159B` (`kaleoInstanceId`),
  KEY `IX_B857A115` (`kaleoInstanceId`,`kaleoTaskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotaskinstancetoken`
--

LOCK TABLES `kaleotaskinstancetoken` WRITE;
/*!40000 ALTER TABLE `kaleotaskinstancetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotaskinstancetoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotimer`
--

DROP TABLE IF EXISTS `kaleotimer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotimer` (
  `kaleoTimerId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `description` longtext,
  `duration` double DEFAULT NULL,
  `scale` varchar(75) DEFAULT NULL,
  `recurrenceDuration` double DEFAULT NULL,
  `recurrenceScale` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoTimerId`),
  KEY `IX_4DE6A889` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1A479F32` (`kaleoClassName`,`kaleoClassPK`,`blocking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotimer`
--

LOCK TABLES `kaleotimer` WRITE;
/*!40000 ALTER TABLE `kaleotimer` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotimer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotimerinstancetoken`
--

DROP TABLE IF EXISTS `kaleotimerinstancetoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotimerinstancetoken` (
  `kaleoTimerInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTimerId` bigint(20) DEFAULT NULL,
  `kaleoTimerName` varchar(200) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTimerInstanceTokenId`),
  KEY `IX_DB96C55B` (`kaleoInstanceId`),
  KEY `IX_DB279423` (`kaleoInstanceTokenId`,`completed`),
  KEY `IX_9932524C` (`kaleoInstanceTokenId`,`completed`,`blocking`),
  KEY `IX_13A5BA2C` (`kaleoInstanceTokenId`,`kaleoTimerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotimerinstancetoken`
--

LOCK TABLES `kaleotimerinstancetoken` WRITE;
/*!40000 ALTER TABLE `kaleotimerinstancetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotimerinstancetoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotransition`
--

DROP TABLE IF EXISTS `kaleotransition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotransition` (
  `kaleoTransitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `sourceKaleoNodeId` bigint(20) DEFAULT NULL,
  `sourceKaleoNodeName` varchar(200) DEFAULT NULL,
  `targetKaleoNodeId` bigint(20) DEFAULT NULL,
  `targetKaleoNodeName` varchar(200) DEFAULT NULL,
  `defaultTransition` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoTransitionId`),
  KEY `IX_41D6C6D` (`companyId`),
  KEY `IX_479F3063` (`kaleoDefinitionId`),
  KEY `IX_A392DFD2` (`kaleoNodeId`),
  KEY `IX_A38E2194` (`kaleoNodeId`,`defaultTransition`),
  KEY `IX_85268A11` (`kaleoNodeId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotransition`
--

LOCK TABLES `kaleotransition` WRITE;
/*!40000 ALTER TABLE `kaleotransition` DISABLE KEYS */;
INSERT INTO `kaleotransition` VALUES (20500,0,20155,20159,'','2017-01-09 16:27:55','2017-01-09 16:27:55',20475,20476,'resubmit','',20476,'update',20484,'review',1),(20501,0,20155,20159,'','2017-01-09 16:27:55','2017-01-09 16:27:55',20475,20483,'review','',20483,'created',20484,'review',1),(20502,0,20155,20159,'','2017-01-09 16:27:55','2017-01-09 16:27:55',20475,20484,'approve','',20484,'review',20481,'approved',1),(20503,0,20155,20159,'','2017-01-09 16:27:55','2017-01-09 16:27:55',20475,20484,'reject','',20484,'review',20476,'update',0);
/*!40000 ALTER TABLE `kaleotransition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`),
  UNIQUE KEY `IX_BC2C4231` (`groupId`,`privateLayout`,`friendlyURL`),
  UNIQUE KEY `IX_7162C27C` (`groupId`,`privateLayout`,`layoutId`),
  UNIQUE KEY `IX_E118C537` (`uuid_`,`groupId`,`privateLayout`),
  KEY `IX_C7FBC998` (`companyId`),
  KEY `IX_C099D61A` (`groupId`),
  KEY `IX_705F5AA3` (`groupId`,`privateLayout`),
  KEY `IX_6DE88B06` (`groupId`,`privateLayout`,`parentLayoutId`),
  KEY `IX_8CE8C0D9` (`groupId`,`privateLayout`,`sourcePrototypeLayoutUuid`),
  KEY `IX_1A1B61D2` (`groupId`,`privateLayout`,`type_`),
  KEY `IX_23922F7D` (`iconImageId`),
  KEY `IX_B529BFD3` (`layoutPrototypeUuid`),
  KEY `IX_39A18ECC` (`sourcePrototypeLayoutUuid`),
  KEY `IX_D0822724` (`uuid_`),
  KEY `IX_2CE4BE84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES ('fbaa973f-6fda-4136-b7b8-8ef7b4161140',20180,20177,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','privateLayout=true\n',0,'/manage',0,0,'','','','','',0,'',0,''),('1710c30b-de80-487d-85c8-1c8c50a3cdec',20189,20186,20155,20159,'','2017-01-09 16:25:45','2017-06-20 05:40:20',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=58,\ncolumn-2=portalb_WAR_epsosportal,47\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),('93c9aeca-576b-48d6-ad42-81d61335611e',20324,20321,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:49',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','column-1=33,\ncolumn-2=148_INSTANCE_f2ODAXriI8m3,114,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('efafc612-6ec2-409e-90aa-57b53651484c',20336,20333,20155,20159,'','2017-01-09 16:25:49','2017-01-09 16:25:50',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','column-1=141_INSTANCE_mgRruZ01MCJg,122_INSTANCE_mZrh6jW4DIzA,\ncolumn-2=3,101_INSTANCE_amyFHUGVtBte,\ndefault-asset-publisher-portlet-id=101_INSTANCE_amyFHUGVtBte\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('8d102a3b-35bf-4316-8490-411d0b470d83',20346,20343,20155,20159,'','2017-01-09 16:25:50','2017-01-09 16:25:50',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','column-1=36,\ncolumn-2=122_INSTANCE_kBd1uVwSqSQg,141_INSTANCE_qHRV3Lgo9CL3,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('a18d42dc-de9c-4d4b-9f57-754c59590349',20365,20354,20155,20159,'','2017-01-09 16:25:51','2017-01-09 16:25:52',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-1=19,\ncolumn-2=3,59_INSTANCE_RWHtefpXhFX1,180,101_INSTANCE_ZEJBGnXOtIPE,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('d42f961c-e9f0-4b64-824e-53ed6301e234',20373,20354,20155,20159,'','2017-01-09 16:25:52','2017-01-09 16:25:52',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','column-1=36,\ncolumn-2=122_INSTANCE_G3koGLa8gsG7,148_INSTANCE_n8ki3RLF7MPU,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/wiki',0,0,'','','','','',1,'',0,''),('1504cc0a-2ca7-458c-9671-7e13ef2532c0',20391,20380,20155,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-1=116,\ncolumn-2=3,82,101_INSTANCE_FTl0FHHJCJPz,\nlayout-template-id=2_columns_i\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('480a6a10-b67a-48e1-9d60-7fdd23e434c3',20400,20380,20155,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:54',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','column-1=20,\ncolumn-2=101_INSTANCE_1Zuf1ceA6yae,\nlayout-template-id=1_column\nprivateLayout=true\n',0,'/documents',0,0,'','','','','',1,'',0,''),('278312c7-1939-4dc0-b41e-617a19b5f681',20408,20380,20155,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','column-1=39_INSTANCE_OehmWpK3FPln,\ncolumn-2=39_INSTANCE_iZmHpw692ilV,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/news',0,0,'','','','','',2,'',0,''),('658458de-7847-4a2b-a3b1-e15c7da25140',20527,20524,20155,20159,'','2017-01-09 16:28:04','2017-01-09 16:28:05',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Liferay, Inc. Extranet</Name></root>','','','','','portlet','column-1=3,\ncolumn-2=19,\nlayout-template-id=2_columns_ii\n',0,'/extranet',0,0,'','','','','',0,'',0,''),('cd4ae3f4-56d2-4e70-9777-62a660ce206c',20533,20524,20155,20159,'','2017-01-09 16:28:05','2017-01-09 16:28:05',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Liferay, Inc. Intranet</Name></root>','','','','','portlet','column-1=3,\ncolumn-2=19,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/intranet',0,0,'','','','','',0,'',0,''),('db8bf371-75c8-4df8-976a-b4760fc08357',21199,20440,20155,20438,'Admin User','2017-01-09 16:28:36','2017-01-09 16:28:37',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,23,11,\ncolumn-2=29,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('1c923a1c-6cfa-4227-a9bb-1fc71cbf09a6',21205,20440,20155,20438,'Admin User','2017-01-09 16:28:37','2017-01-09 16:28:37',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,3,\ncolumn-2=33,\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),('4581a926-0938-42f8-92f9-416c9f9f7a16',21501,21222,20155,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,23,11,\ncolumn-2=29,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('525463e0-cdf4-4416-ad05-c3560f4ba28a',21507,21222,20155,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:08',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,3,\ncolumn-2=33,\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),('1c2575a6-8514-48ca-94fa-d42189c6cdff',21712,21704,20155,21702,'nurse','2017-03-28 11:55:46','2017-03-28 11:55:48',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,23,11,\ncolumn-2=29,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('82d3f3a9-fac1-4b30-a5e8-19cbfee162cc',21718,21704,20155,21702,'nurse','2017-03-28 11:55:48','2017-03-28 11:55:49',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,3,\ncolumn-2=33,\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),('d520fcdf-a7ec-4b01-ace4-7fbb9689c912',21901,21231,20155,21229,'pharmacist','2017-04-04 12:47:09','2017-04-04 12:47:11',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,23,11,\ncolumn-2=29,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('29d7a741-f0b8-4ff3-bfe8-b8fdc562c029',21907,21231,20155,21229,'pharmacist','2017-04-04 12:47:11','2017-04-04 12:47:12',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,3,\ncolumn-2=33,\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),('e890e53c-b83d-4c9a-ade7-48c08d70e45e',22101,20186,20155,20438,'Admin User','2017-06-08 14:26:31','2017-06-20 05:40:03',0,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TSLEditor</Name></root>','','','','','portlet','column-1=tsleditor_WAR_tsleditorportlet\nlayout-template-id=1_column\n',0,'/tsleditor',0,0,'','','','','',1,'',0,''),('68c17af7-7114-438a-889f-7bcd5779f150',22310,22303,20155,22301,'testdoctor','2017-10-17 05:18:15','2017-10-17 05:18:17',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,23,11,\ncolumn-2=29,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('5950c2b9-c2e1-4e7a-9ade-aad96da3bacd',22316,22303,20155,22301,'testdoctor','2017-10-17 05:18:17','2017-10-17 05:18:17',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,3,\ncolumn-2=33,\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,'');
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutbranch`
--

DROP TABLE IF EXISTS `layoutbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutbranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`),
  UNIQUE KEY `IX_FD57097D` (`layoutSetBranchId`,`plid`,`name`),
  KEY `IX_6C226433` (`layoutSetBranchId`),
  KEY `IX_2C42603E` (`layoutSetBranchId`,`plid`),
  KEY `IX_A705FF94` (`layoutSetBranchId`,`plid`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutbranch`
--

LOCK TABLES `layoutbranch` WRITE;
/*!40000 ALTER TABLE `layoutbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutfriendlyurl`
--

DROP TABLE IF EXISTS `layoutfriendlyurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutfriendlyurl` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutFriendlyURLId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`layoutFriendlyURLId`),
  UNIQUE KEY `IX_A6FC2B28` (`groupId`,`privateLayout`,`friendlyURL`,`languageId`),
  UNIQUE KEY `IX_C5762E72` (`plid`,`languageId`),
  UNIQUE KEY `IX_326525D6` (`uuid_`,`groupId`),
  KEY `IX_EAB317C8` (`companyId`),
  KEY `IX_742EF04A` (`groupId`),
  KEY `IX_CA713461` (`groupId`,`privateLayout`,`friendlyURL`),
  KEY `IX_83AE56AB` (`plid`),
  KEY `IX_59051329` (`plid`,`friendlyURL`),
  KEY `IX_9F80D54` (`uuid_`),
  KEY `IX_F4321A54` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutfriendlyurl`
--

LOCK TABLES `layoutfriendlyurl` WRITE;
/*!40000 ALTER TABLE `layoutfriendlyurl` DISABLE KEYS */;
INSERT INTO `layoutfriendlyurl` VALUES ('2c8783f7-0f61-4bd0-88c7-a92cc9618622',20181,20177,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',20180,1,'/manage','en_US'),('347bb0e7-a141-4912-83d6-2b7d281c922d',20190,20186,20155,20159,'','2017-01-09 16:25:45','2017-01-09 16:25:45',20189,0,'/home','en_US'),('518fd093-5690-4d71-9d8d-a387d264aa81',20325,20321,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48',20324,1,'/layout','en_US'),('1c726ceb-378a-4c07-ad32-efc46ff41514',20337,20333,20155,20159,'','2017-01-09 16:25:49','2017-01-09 16:25:49',20336,1,'/layout','en_US'),('8c4a174f-bf7d-444d-9df8-06dfd081ed93',20347,20343,20155,20159,'','2017-01-09 16:25:50','2017-01-09 16:25:50',20346,1,'/layout','en_US'),('0e87db5a-8d30-4eb8-bd11-7c395177f552',20366,20354,20155,20159,'','2017-01-09 16:25:51','2017-01-09 16:25:51',20365,1,'/home','en_US'),('98e9fbc3-866a-46b8-a0c3-54ac2798f658',20374,20354,20155,20159,'','2017-01-09 16:25:52','2017-01-09 16:25:52',20373,1,'/wiki','en_US'),('b05fb1c7-cab6-4dcb-b842-dde0bd96b965',20392,20380,20155,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',20391,1,'/home','en_US'),('70d72133-a77a-49c3-97b0-c34ef5ca17c1',20401,20380,20155,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',20400,1,'/documents','en_US'),('f2d71aa9-4a11-4b35-b303-d9f3d071aa4b',20409,20380,20155,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',20408,1,'/news','en_US'),('98cd075f-8816-4e54-b3fe-408307f267bf',20528,20524,20155,20159,'','2017-01-09 16:28:04','2017-01-09 16:28:04',20527,0,'/extranet','en_US'),('51209414-68e8-406a-bf77-6649766bd257',20534,20524,20155,20159,'','2017-01-09 16:28:05','2017-01-09 16:28:05',20533,1,'/intranet','en_US'),('145d8cc8-70ab-4d5f-a790-58e52f59d42b',21200,20440,20155,20438,'Admin User','2017-01-09 16:28:36','2017-01-09 16:28:36',21199,1,'/home','en_US'),('c52e786f-bc19-4aef-a74f-71c21d6b9394',21206,20440,20155,20438,'Admin User','2017-01-09 16:28:37','2017-01-09 16:28:37',21205,0,'/home','en_US'),('2d98869f-903e-40d0-9d6c-01bc5394f3b9',21502,21222,20155,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',21501,1,'/home','en_US'),('e714452d-5285-488e-aa5f-d21ca3258541',21508,21222,20155,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',21507,0,'/home','en_US'),('88fb3c4e-742a-402a-9c88-970f1d8ea0e8',21713,21704,20155,21702,'nurse','2017-03-28 11:55:46','2017-03-28 11:55:46',21712,1,'/home','en_US'),('0460e22c-5683-4016-b538-d6d80f8b2a73',21719,21704,20155,21702,'nurse','2017-03-28 11:55:48','2017-03-28 11:55:48',21718,0,'/home','en_US'),('b5c2ecfb-a260-4816-906a-fe5160eb9ede',21902,21231,20155,21229,'pharmacist','2017-04-04 12:47:10','2017-04-04 12:47:10',21901,1,'/home','en_US'),('eee81c90-2aa7-43ad-a652-5de5290baf73',21908,21231,20155,21229,'pharmacist','2017-04-04 12:47:11','2017-04-04 12:47:11',21907,0,'/home','en_US'),('98f98f17-f29c-4786-9efe-2348bc0f8dd4',22102,20186,20155,20438,'Admin User','2017-06-08 14:26:31','2017-06-08 14:26:31',22101,0,'/tsleditor','en_US'),('ad3649a8-6cbd-41cf-b9ec-5e5daf824b93',22311,22303,20155,22301,'testdoctor','2017-10-17 05:18:15','2017-10-17 05:18:15',22310,1,'/home','en_US'),('ad9be485-1068-4fa5-9b68-65deb569f544',22317,22303,20155,22301,'testdoctor','2017-10-17 05:18:17','2017-10-17 05:18:17',22316,0,'/home','en_US');
/*!40000 ALTER TABLE `layoutfriendlyurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutprototype`
--

DROP TABLE IF EXISTS `layoutprototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`),
  KEY `IX_30616AAA` (`companyId`),
  KEY `IX_557A639F` (`companyId`,`active_`),
  KEY `IX_CEF72136` (`uuid_`),
  KEY `IX_63ED2532` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutprototype`
--

LOCK TABLES `layoutprototype` WRITE;
/*!40000 ALTER TABLE `layoutprototype` DISABLE KEYS */;
INSERT INTO `layoutprototype` VALUES ('f37c1a97-a44a-4b80-8330-a204c5fb0ddf',20320,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('23990921-6a7d-4cbf-9bfc-4a9cb93b89e5',20332,20155,20159,'','2017-01-09 16:25:49','2017-01-09 16:25:49','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('5edca510-34fe-43a2-8bb7-414c189b1862',20342,20155,20159,'','2017-01-09 16:25:50','2017-01-09 16:25:50','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1);
/*!40000 ALTER TABLE `layoutprototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutrevision`
--

DROP TABLE IF EXISTS `layoutrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutrevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`),
  KEY `IX_43E8286A` (`head`,`plid`),
  KEY `IX_314B621A` (`layoutSetBranchId`),
  KEY `IX_A9AC086E` (`layoutSetBranchId`,`head`),
  KEY `IX_E10AC39` (`layoutSetBranchId`,`head`,`plid`),
  KEY `IX_13984800` (`layoutSetBranchId`,`layoutBranchId`,`plid`),
  KEY `IX_4A84AF43` (`layoutSetBranchId`,`parentLayoutRevisionId`,`plid`),
  KEY `IX_B7B914E5` (`layoutSetBranchId`,`plid`),
  KEY `IX_70DA9ECB` (`layoutSetBranchId`,`plid`,`status`),
  KEY `IX_7FFAE700` (`layoutSetBranchId`,`status`),
  KEY `IX_9329C9D6` (`plid`),
  KEY `IX_8EC3D2BC` (`plid`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutrevision`
--

LOCK TABLES `layoutrevision` WRITE;
/*!40000 ALTER TABLE `layoutrevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutset`
--

DROP TABLE IF EXISTS `layoutset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutset` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`),
  UNIQUE KEY `IX_48550691` (`groupId`,`privateLayout`),
  KEY `IX_A40B8BEC` (`groupId`),
  KEY `IX_72BBA8B7` (`layoutSetPrototypeUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutset`
--

LOCK TABLES `layoutset` WRITE;
/*!40000 ALTER TABLE `layoutset` DISABLE KEYS */;
INSERT INTO `layoutset` VALUES (20178,20177,20155,'2017-01-09 16:25:44','2017-01-09 16:25:44',1,0,0,'classic','01','mobile','01','',1,'','',0),(20179,20177,20155,'2017-01-09 16:25:44','2017-01-09 16:25:44',0,0,0,'classic','01','mobile','01','',0,'','',0),(20187,20186,20155,'2017-01-09 16:25:45','2017-01-09 16:25:45',1,0,0,'classic','01','mobile','01','',0,'','',0),(20188,20186,20155,'2017-01-09 16:25:45','2017-06-08 14:26:31',0,0,0,'classic','01','mobile','01','',2,'','',0),(20197,20196,20155,'2017-01-09 16:25:45','2017-01-09 16:25:45',1,0,0,'classic','01','mobile','01','',0,'','',0),(20198,20196,20155,'2017-01-09 16:25:45','2017-01-09 16:25:45',0,0,0,'classic','01','mobile','01','',0,'','',0),(20200,20199,20155,'2017-01-09 16:25:45','2017-01-09 16:25:45',1,0,0,'classic','01','mobile','01','',0,'','',0),(20201,20199,20155,'2017-01-09 16:25:45','2017-01-09 16:25:45',0,0,0,'classic','01','mobile','01','',0,'','',0),(20206,20205,20155,'2017-01-09 16:25:45','2017-01-09 16:25:45',1,0,0,'classic','01','mobile','01','',0,'','',0),(20207,20205,20155,'2017-01-09 16:25:45','2017-01-09 16:25:45',0,0,0,'classic','01','mobile','01','',0,'','',0),(20322,20321,20155,'2017-01-09 16:25:48','2017-01-09 16:25:48',1,0,0,'classic','01','mobile','01','',1,'','',0),(20323,20321,20155,'2017-01-09 16:25:48','2017-01-09 16:25:48',0,0,0,'classic','01','mobile','01','',0,'','',0),(20334,20333,20155,'2017-01-09 16:25:49','2017-01-09 16:25:49',1,0,0,'classic','01','mobile','01','',1,'','',0),(20335,20333,20155,'2017-01-09 16:25:49','2017-01-09 16:25:49',0,0,0,'classic','01','mobile','01','',0,'','',0),(20344,20343,20155,'2017-01-09 16:25:50','2017-01-09 16:25:50',1,0,0,'classic','01','mobile','01','',1,'','',0),(20345,20343,20155,'2017-01-09 16:25:50','2017-01-09 16:25:50',0,0,0,'classic','01','mobile','01','',0,'','',0),(20355,20354,20155,'2017-01-09 16:25:50','2017-01-09 16:25:52',1,0,0,'classic','01','mobile','01','',2,'','',0),(20356,20354,20155,'2017-01-09 16:25:50','2017-01-09 16:25:50',0,0,0,'classic','01','mobile','01','',0,'','',0),(20381,20380,20155,'2017-01-09 16:25:52','2017-01-09 16:25:54',1,0,0,'classic','01','mobile','01','',3,'','',0),(20382,20380,20155,'2017-01-09 16:25:52','2017-01-09 16:25:52',0,0,0,'classic','01','mobile','01','',0,'','',0),(20441,20440,20155,'2017-01-09 16:27:23','2017-01-09 16:28:36',1,0,0,'classic','01','mobile','01','',1,'','',0),(20442,20440,20155,'2017-01-09 16:27:23','2017-01-09 16:28:37',0,0,0,'classic','01','mobile','01','',1,'','',0),(20525,20524,20155,'2017-01-09 16:28:04','2017-01-09 16:28:05',1,0,0,'classic','01','mobile','01','',1,'','',0),(20526,20524,20155,'2017-01-09 16:28:04','2017-01-09 16:28:04',0,0,0,'classic','01','mobile','01','',1,'','',0),(20541,20540,20155,'2017-01-09 16:28:05','2017-01-09 16:28:05',1,0,0,'classic','01','mobile','01','',0,'','',0),(20542,20540,20155,'2017-01-09 16:28:05','2017-01-09 16:28:05',0,0,0,'classic','01','mobile','01','',0,'','',0),(20546,20545,20155,'2017-01-09 16:28:06','2017-01-09 16:28:06',1,0,0,'classic','01','mobile','01','',0,'','',0),(20547,20545,20155,'2017-01-09 16:28:06','2017-01-09 16:28:06',0,0,0,'classic','01','mobile','01','',0,'','',0),(20552,20551,20155,'2017-01-09 16:28:06','2017-01-09 16:28:06',1,0,0,'classic','01','mobile','01','',0,'','',0),(20553,20551,20155,'2017-01-09 16:28:06','2017-01-09 16:28:06',0,0,0,'classic','01','mobile','01','',0,'','',0),(20558,20557,20155,'2017-01-09 16:28:06','2017-01-09 16:28:06',1,0,0,'classic','01','mobile','01','',0,'','',0),(20559,20557,20155,'2017-01-09 16:28:06','2017-01-09 16:28:06',0,0,0,'classic','01','mobile','01','',0,'','',0),(20564,20563,20155,'2017-01-09 16:28:07','2017-01-09 16:28:07',1,0,0,'classic','01','mobile','01','',0,'','',0),(20565,20563,20155,'2017-01-09 16:28:07','2017-01-09 16:28:07',0,0,0,'classic','01','mobile','01','',0,'','',0),(20570,20569,20155,'2017-01-09 16:28:07','2017-01-09 16:28:07',1,0,0,'classic','01','mobile','01','',0,'','',0),(20571,20569,20155,'2017-01-09 16:28:07','2017-01-09 16:28:07',0,0,0,'classic','01','mobile','01','',0,'','',0),(20576,20575,20155,'2017-01-09 16:28:07','2017-01-09 16:28:07',1,0,0,'classic','01','mobile','01','',0,'','',0),(20577,20575,20155,'2017-01-09 16:28:07','2017-01-09 16:28:07',0,0,0,'classic','01','mobile','01','',0,'','',0),(20582,20581,20155,'2017-01-09 16:28:08','2017-01-09 16:28:08',1,0,0,'classic','01','mobile','01','',0,'','',0),(20583,20581,20155,'2017-01-09 16:28:08','2017-01-09 16:28:08',0,0,0,'classic','01','mobile','01','',0,'','',0),(20588,20587,20155,'2017-01-09 16:28:08','2017-01-09 16:28:08',1,0,0,'classic','01','mobile','01','',0,'','',0),(20589,20587,20155,'2017-01-09 16:28:08','2017-01-09 16:28:08',0,0,0,'classic','01','mobile','01','',0,'','',0),(20594,20593,20155,'2017-01-09 16:28:08','2017-01-09 16:28:08',1,0,0,'classic','01','mobile','01','',0,'','',0),(20595,20593,20155,'2017-01-09 16:28:08','2017-01-09 16:28:08',0,0,0,'classic','01','mobile','01','',0,'','',0),(20600,20599,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',1,0,0,'classic','01','mobile','01','',0,'','',0),(20601,20599,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',0,0,0,'classic','01','mobile','01','',0,'','',0),(20605,20604,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',1,0,0,'classic','01','mobile','01','',0,'','',0),(20606,20604,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',0,0,0,'classic','01','mobile','01','',0,'','',0),(20609,20608,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',1,0,0,'classic','01','mobile','01','',0,'','',0),(20610,20608,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',0,0,0,'classic','01','mobile','01','',0,'','',0),(20614,20613,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',1,0,0,'classic','01','mobile','01','',0,'','',0),(20615,20613,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',0,0,0,'classic','01','mobile','01','',0,'','',0),(20620,20619,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',1,0,0,'classic','01','mobile','01','',0,'','',0),(20621,20619,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',0,0,0,'classic','01','mobile','01','',0,'','',0),(20626,20625,20155,'2017-01-09 16:28:10','2017-01-09 16:28:10',1,0,0,'classic','01','mobile','01','',0,'','',0),(20627,20625,20155,'2017-01-09 16:28:10','2017-01-09 16:28:10',0,0,0,'classic','01','mobile','01','',0,'','',0),(20632,20631,20155,'2017-01-09 16:28:10','2017-01-09 16:28:10',1,0,0,'classic','01','mobile','01','',0,'','',0),(20633,20631,20155,'2017-01-09 16:28:10','2017-01-09 16:28:10',0,0,0,'classic','01','mobile','01','',0,'','',0),(20638,20637,20155,'2017-01-09 16:28:10','2017-01-09 16:28:10',1,0,0,'classic','01','mobile','01','',0,'','',0),(20639,20637,20155,'2017-01-09 16:28:10','2017-01-09 16:28:10',0,0,0,'classic','01','mobile','01','',0,'','',0),(20644,20643,20155,'2017-01-09 16:28:11','2017-01-09 16:28:11',1,0,0,'classic','01','mobile','01','',0,'','',0),(20645,20643,20155,'2017-01-09 16:28:11','2017-01-09 16:28:11',0,0,0,'classic','01','mobile','01','',0,'','',0),(20650,20649,20155,'2017-01-09 16:28:11','2017-01-09 16:28:11',1,0,0,'classic','01','mobile','01','',0,'','',0),(20651,20649,20155,'2017-01-09 16:28:11','2017-01-09 16:28:11',0,0,0,'classic','01','mobile','01','',0,'','',0),(20656,20655,20155,'2017-01-09 16:28:11','2017-01-09 16:28:11',1,0,0,'classic','01','mobile','01','',0,'','',0),(20657,20655,20155,'2017-01-09 16:28:11','2017-01-09 16:28:11',0,0,0,'classic','01','mobile','01','',0,'','',0),(20662,20661,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(20663,20661,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(20668,20667,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(20669,20667,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(20673,20672,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(20674,20672,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(20677,20676,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(20678,20676,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(20682,20681,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(20683,20681,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(20688,20687,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',1,0,0,'classic','01','mobile','01','',0,'','',0),(20689,20687,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',0,0,0,'classic','01','mobile','01','',0,'','',0),(20694,20693,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',1,0,0,'classic','01','mobile','01','',0,'','',0),(20695,20693,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',0,0,0,'classic','01','mobile','01','',0,'','',0),(20700,20699,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',1,0,0,'classic','01','mobile','01','',0,'','',0),(20701,20699,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',0,0,0,'classic','01','mobile','01','',0,'','',0),(20706,20705,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',1,0,0,'classic','01','mobile','01','',0,'','',0),(20707,20705,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',0,0,0,'classic','01','mobile','01','',0,'','',0),(20712,20711,20155,'2017-01-09 16:28:14','2017-01-09 16:28:14',1,0,0,'classic','01','mobile','01','',0,'','',0),(20713,20711,20155,'2017-01-09 16:28:14','2017-01-09 16:28:14',0,0,0,'classic','01','mobile','01','',0,'','',0),(20718,20717,20155,'2017-01-09 16:28:14','2017-01-09 16:28:14',1,0,0,'classic','01','mobile','01','',0,'','',0),(20719,20717,20155,'2017-01-09 16:28:14','2017-01-09 16:28:14',0,0,0,'classic','01','mobile','01','',0,'','',0),(20724,20723,20155,'2017-01-09 16:28:14','2017-01-09 16:28:14',1,0,0,'classic','01','mobile','01','',0,'','',0),(20725,20723,20155,'2017-01-09 16:28:14','2017-01-09 16:28:14',0,0,0,'classic','01','mobile','01','',0,'','',0),(20730,20729,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',1,0,0,'classic','01','mobile','01','',0,'','',0),(20731,20729,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',0,0,0,'classic','01','mobile','01','',0,'','',0),(20736,20735,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',1,0,0,'classic','01','mobile','01','',0,'','',0),(20737,20735,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',0,0,0,'classic','01','mobile','01','',0,'','',0),(20741,20740,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',1,0,0,'classic','01','mobile','01','',0,'','',0),(20742,20740,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',0,0,0,'classic','01','mobile','01','',0,'','',0),(20746,20745,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',1,0,0,'classic','01','mobile','01','',0,'','',0),(20747,20745,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',0,0,0,'classic','01','mobile','01','',0,'','',0),(20752,20751,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',1,0,0,'classic','01','mobile','01','',0,'','',0),(20753,20751,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',0,0,0,'classic','01','mobile','01','',0,'','',0),(20758,20757,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',1,0,0,'classic','01','mobile','01','',0,'','',0),(20759,20757,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',0,0,0,'classic','01','mobile','01','',0,'','',0),(20764,20763,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',1,0,0,'classic','01','mobile','01','',0,'','',0),(20765,20763,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',0,0,0,'classic','01','mobile','01','',0,'','',0),(20770,20769,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',1,0,0,'classic','01','mobile','01','',0,'','',0),(20771,20769,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',0,0,0,'classic','01','mobile','01','',0,'','',0),(20776,20775,20155,'2017-01-09 16:28:17','2017-01-09 16:28:17',1,0,0,'classic','01','mobile','01','',0,'','',0),(20777,20775,20155,'2017-01-09 16:28:17','2017-01-09 16:28:17',0,0,0,'classic','01','mobile','01','',0,'','',0),(20782,20781,20155,'2017-01-09 16:28:17','2017-01-09 16:28:17',1,0,0,'classic','01','mobile','01','',0,'','',0),(20783,20781,20155,'2017-01-09 16:28:17','2017-01-09 16:28:17',0,0,0,'classic','01','mobile','01','',0,'','',0),(20788,20787,20155,'2017-01-09 16:28:17','2017-01-09 16:28:17',1,0,0,'classic','01','mobile','01','',0,'','',0),(20789,20787,20155,'2017-01-09 16:28:17','2017-01-09 16:28:17',0,0,0,'classic','01','mobile','01','',0,'','',0),(20794,20793,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',1,0,0,'classic','01','mobile','01','',0,'','',0),(20795,20793,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',0,0,0,'classic','01','mobile','01','',0,'','',0),(20800,20799,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',1,0,0,'classic','01','mobile','01','',0,'','',0),(20801,20799,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',0,0,0,'classic','01','mobile','01','',0,'','',0),(20805,20804,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',1,0,0,'classic','01','mobile','01','',0,'','',0),(20806,20804,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',0,0,0,'classic','01','mobile','01','',0,'','',0),(20810,20809,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',1,0,0,'classic','01','mobile','01','',0,'','',0),(20811,20809,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',0,0,0,'classic','01','mobile','01','',0,'','',0),(20816,20815,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',1,0,0,'classic','01','mobile','01','',0,'','',0),(20817,20815,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',0,0,0,'classic','01','mobile','01','',0,'','',0),(20822,20821,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',1,0,0,'classic','01','mobile','01','',0,'','',0),(20823,20821,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',0,0,0,'classic','01','mobile','01','',0,'','',0),(20828,20827,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',1,0,0,'classic','01','mobile','01','',0,'','',0),(20829,20827,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',0,0,0,'classic','01','mobile','01','',0,'','',0),(20834,20833,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',1,0,0,'classic','01','mobile','01','',0,'','',0),(20835,20833,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',0,0,0,'classic','01','mobile','01','',0,'','',0),(20840,20839,20155,'2017-01-09 16:28:20','2017-01-09 16:28:20',1,0,0,'classic','01','mobile','01','',0,'','',0),(20841,20839,20155,'2017-01-09 16:28:20','2017-01-09 16:28:20',0,0,0,'classic','01','mobile','01','',0,'','',0),(20846,20845,20155,'2017-01-09 16:28:20','2017-01-09 16:28:20',1,0,0,'classic','01','mobile','01','',0,'','',0),(20847,20845,20155,'2017-01-09 16:28:20','2017-01-09 16:28:20',0,0,0,'classic','01','mobile','01','',0,'','',0),(20852,20851,20155,'2017-01-09 16:28:20','2017-01-09 16:28:20',1,0,0,'classic','01','mobile','01','',0,'','',0),(20853,20851,20155,'2017-01-09 16:28:20','2017-01-09 16:28:20',0,0,0,'classic','01','mobile','01','',0,'','',0),(20858,20857,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',1,0,0,'classic','01','mobile','01','',0,'','',0),(20859,20857,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',0,0,0,'classic','01','mobile','01','',0,'','',0),(20864,20863,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',1,0,0,'classic','01','mobile','01','',0,'','',0),(20865,20863,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',0,0,0,'classic','01','mobile','01','',0,'','',0),(20869,20868,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',1,0,0,'classic','01','mobile','01','',0,'','',0),(20870,20868,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',0,0,0,'classic','01','mobile','01','',0,'','',0),(20874,20873,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',1,0,0,'classic','01','mobile','01','',0,'','',0),(20875,20873,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',0,0,0,'classic','01','mobile','01','',0,'','',0),(20880,20879,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',1,0,0,'classic','01','mobile','01','',0,'','',0),(20881,20879,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',0,0,0,'classic','01','mobile','01','',0,'','',0),(20886,20885,20155,'2017-01-09 16:28:22','2017-01-09 16:28:22',1,0,0,'classic','01','mobile','01','',0,'','',0),(20887,20885,20155,'2017-01-09 16:28:22','2017-01-09 16:28:22',0,0,0,'classic','01','mobile','01','',0,'','',0),(20892,20891,20155,'2017-01-09 16:28:22','2017-01-09 16:28:22',1,0,0,'classic','01','mobile','01','',0,'','',0),(20893,20891,20155,'2017-01-09 16:28:22','2017-01-09 16:28:22',0,0,0,'classic','01','mobile','01','',0,'','',0),(20898,20897,20155,'2017-01-09 16:28:22','2017-01-09 16:28:22',1,0,0,'classic','01','mobile','01','',0,'','',0),(20899,20897,20155,'2017-01-09 16:28:22','2017-01-09 16:28:22',0,0,0,'classic','01','mobile','01','',0,'','',0),(20904,20903,20155,'2017-01-09 16:28:23','2017-01-09 16:28:23',1,0,0,'classic','01','mobile','01','',0,'','',0),(20905,20903,20155,'2017-01-09 16:28:23','2017-01-09 16:28:23',0,0,0,'classic','01','mobile','01','',0,'','',0),(20910,20909,20155,'2017-01-09 16:28:23','2017-01-09 16:28:23',1,0,0,'classic','01','mobile','01','',0,'','',0),(20911,20909,20155,'2017-01-09 16:28:23','2017-01-09 16:28:23',0,0,0,'classic','01','mobile','01','',0,'','',0),(20916,20915,20155,'2017-01-09 16:28:23','2017-01-09 16:28:23',1,0,0,'classic','01','mobile','01','',0,'','',0),(20917,20915,20155,'2017-01-09 16:28:23','2017-01-09 16:28:23',0,0,0,'classic','01','mobile','01','',0,'','',0),(20922,20921,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',1,0,0,'classic','01','mobile','01','',0,'','',0),(20923,20921,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',0,0,0,'classic','01','mobile','01','',0,'','',0),(20928,20927,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',1,0,0,'classic','01','mobile','01','',0,'','',0),(20929,20927,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',0,0,0,'classic','01','mobile','01','',0,'','',0),(20933,20932,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',1,0,0,'classic','01','mobile','01','',0,'','',0),(20934,20932,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',0,0,0,'classic','01','mobile','01','',0,'','',0),(20938,20937,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',1,0,0,'classic','01','mobile','01','',0,'','',0),(20939,20937,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',0,0,0,'classic','01','mobile','01','',0,'','',0),(20944,20943,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',1,0,0,'classic','01','mobile','01','',0,'','',0),(20945,20943,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',0,0,0,'classic','01','mobile','01','',0,'','',0),(20950,20949,20155,'2017-01-09 16:28:25','2017-01-09 16:28:25',1,0,0,'classic','01','mobile','01','',0,'','',0),(20951,20949,20155,'2017-01-09 16:28:25','2017-01-09 16:28:25',0,0,0,'classic','01','mobile','01','',0,'','',0),(20956,20955,20155,'2017-01-09 16:28:25','2017-01-09 16:28:25',1,0,0,'classic','01','mobile','01','',0,'','',0),(20957,20955,20155,'2017-01-09 16:28:25','2017-01-09 16:28:25',0,0,0,'classic','01','mobile','01','',0,'','',0),(20962,20961,20155,'2017-01-09 16:28:25','2017-01-09 16:28:25',1,0,0,'classic','01','mobile','01','',0,'','',0),(20963,20961,20155,'2017-01-09 16:28:25','2017-01-09 16:28:25',0,0,0,'classic','01','mobile','01','',0,'','',0),(20968,20967,20155,'2017-01-09 16:28:26','2017-01-09 16:28:26',1,0,0,'classic','01','mobile','01','',0,'','',0),(20969,20967,20155,'2017-01-09 16:28:26','2017-01-09 16:28:26',0,0,0,'classic','01','mobile','01','',0,'','',0),(20974,20973,20155,'2017-01-09 16:28:26','2017-01-09 16:28:26',1,0,0,'classic','01','mobile','01','',0,'','',0),(20975,20973,20155,'2017-01-09 16:28:26','2017-01-09 16:28:26',0,0,0,'classic','01','mobile','01','',0,'','',0),(20980,20979,20155,'2017-01-09 16:28:26','2017-01-09 16:28:26',1,0,0,'classic','01','mobile','01','',0,'','',0),(20981,20979,20155,'2017-01-09 16:28:26','2017-01-09 16:28:26',0,0,0,'classic','01','mobile','01','',0,'','',0),(20986,20985,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(20987,20985,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(20992,20991,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(20993,20991,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(20997,20996,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(20998,20996,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(21001,21000,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(21002,21000,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(21006,21005,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(21007,21005,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(21012,21011,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',1,0,0,'classic','01','mobile','01','',0,'','',0),(21013,21011,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(21018,21017,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',1,0,0,'classic','01','mobile','01','',0,'','',0),(21019,21017,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(21024,21023,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',1,0,0,'classic','01','mobile','01','',0,'','',0),(21025,21023,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(21030,21029,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',1,0,0,'classic','01','mobile','01','',0,'','',0),(21031,21029,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',0,0,0,'classic','01','mobile','01','',0,'','',0),(21036,21035,20155,'2017-01-09 16:28:29','2017-01-09 16:28:29',1,0,0,'classic','01','mobile','01','',0,'','',0),(21037,21035,20155,'2017-01-09 16:28:29','2017-01-09 16:28:29',0,0,0,'classic','01','mobile','01','',0,'','',0),(21042,21041,20155,'2017-01-09 16:28:29','2017-01-09 16:28:29',1,0,0,'classic','01','mobile','01','',0,'','',0),(21043,21041,20155,'2017-01-09 16:28:29','2017-01-09 16:28:29',0,0,0,'classic','01','mobile','01','',0,'','',0),(21048,21047,20155,'2017-01-09 16:28:29','2017-01-09 16:28:29',1,0,0,'classic','01','mobile','01','',0,'','',0),(21049,21047,20155,'2017-01-09 16:28:29','2017-01-09 16:28:29',0,0,0,'classic','01','mobile','01','',0,'','',0),(21054,21053,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',1,0,0,'classic','01','mobile','01','',0,'','',0),(21055,21053,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(21060,21059,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',1,0,0,'classic','01','mobile','01','',0,'','',0),(21061,21059,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(21065,21064,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',1,0,0,'classic','01','mobile','01','',0,'','',0),(21066,21064,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(21070,21069,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',1,0,0,'classic','01','mobile','01','',0,'','',0),(21071,21069,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(21076,21075,20155,'2017-01-09 16:28:31','2017-01-09 16:28:31',1,0,0,'classic','01','mobile','01','',0,'','',0),(21077,21075,20155,'2017-01-09 16:28:31','2017-01-09 16:28:31',0,0,0,'classic','01','mobile','01','',0,'','',0),(21082,21081,20155,'2017-01-09 16:28:31','2017-01-09 16:28:31',1,0,0,'classic','01','mobile','01','',0,'','',0),(21083,21081,20155,'2017-01-09 16:28:31','2017-01-09 16:28:31',0,0,0,'classic','01','mobile','01','',0,'','',0),(21088,21087,20155,'2017-01-09 16:28:31','2017-01-09 16:28:31',1,0,0,'classic','01','mobile','01','',0,'','',0),(21089,21087,20155,'2017-01-09 16:28:31','2017-01-09 16:28:31',0,0,0,'classic','01','mobile','01','',0,'','',0),(21094,21093,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',1,0,0,'classic','01','mobile','01','',0,'','',0),(21095,21093,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',0,0,0,'classic','01','mobile','01','',0,'','',0),(21100,21099,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',1,0,0,'classic','01','mobile','01','',0,'','',0),(21101,21099,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',0,0,0,'classic','01','mobile','01','',0,'','',0),(21106,21105,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',1,0,0,'classic','01','mobile','01','',0,'','',0),(21107,21105,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',0,0,0,'classic','01','mobile','01','',0,'','',0),(21112,21111,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',1,0,0,'classic','01','mobile','01','',0,'','',0),(21113,21111,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',0,0,0,'classic','01','mobile','01','',0,'','',0),(21118,21117,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(21119,21117,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(21124,21123,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(21125,21123,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(21129,21128,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(21130,21128,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(21133,21132,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(21134,21132,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(21138,21137,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(21139,21137,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(21144,21143,20155,'2017-01-09 16:28:34','2017-01-09 16:28:34',1,0,0,'classic','01','mobile','01','',0,'','',0),(21145,21143,20155,'2017-01-09 16:28:34','2017-01-09 16:28:34',0,0,0,'classic','01','mobile','01','',0,'','',0),(21150,21149,20155,'2017-01-09 16:28:34','2017-01-09 16:28:34',1,0,0,'classic','01','mobile','01','',0,'','',0),(21151,21149,20155,'2017-01-09 16:28:34','2017-01-09 16:28:34',0,0,0,'classic','01','mobile','01','',0,'','',0),(21156,21155,20155,'2017-01-09 16:28:34','2017-01-09 16:28:34',1,0,0,'classic','01','mobile','01','',0,'','',0),(21157,21155,20155,'2017-01-09 16:28:34','2017-01-09 16:28:34',0,0,0,'classic','01','mobile','01','',0,'','',0),(21162,21161,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',1,0,0,'classic','01','mobile','01','',0,'','',0),(21163,21161,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(21168,21167,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',1,0,0,'classic','01','mobile','01','',0,'','',0),(21169,21167,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(21174,21173,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',1,0,0,'classic','01','mobile','01','',0,'','',0),(21175,21173,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(21180,21179,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',1,0,0,'classic','01','mobile','01','',0,'','',0),(21181,21179,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(21186,21185,20155,'2017-01-09 16:28:36','2017-01-09 16:28:36',1,0,0,'classic','01','mobile','01','',0,'','',0),(21187,21185,20155,'2017-01-09 16:28:36','2017-01-09 16:28:36',0,0,0,'classic','01','mobile','01','',0,'','',0),(21192,21191,20155,'2017-01-09 16:28:36','2017-01-09 16:28:36',1,0,0,'classic','01','mobile','01','',0,'','',0),(21193,21191,20155,'2017-01-09 16:28:36','2017-01-09 16:28:36',0,0,0,'classic','01','mobile','01','',0,'','',0),(21197,21196,20155,'2017-01-09 16:28:36','2017-01-09 16:28:36',1,0,0,'classic','01','mobile','01','',0,'','',0),(21198,21196,20155,'2017-01-09 16:28:36','2017-01-09 16:28:36',0,0,0,'classic','01','mobile','01','',0,'','',0),(21223,21222,20155,'2017-01-09 16:31:39','2017-01-11 13:49:07',1,0,0,'classic','01','mobile','01','',1,'','',0),(21224,21222,20155,'2017-01-09 16:31:39','2017-01-11 13:49:07',0,0,0,'classic','01','mobile','01','',1,'','',0),(21232,21231,20155,'2017-01-09 16:32:38','2017-04-04 12:47:10',1,0,0,'classic','01','mobile','01','',1,'','',0),(21233,21231,20155,'2017-01-09 16:32:38','2017-04-04 12:47:11',0,0,0,'classic','01','mobile','01','',1,'','',0),(21705,21704,20155,'2017-03-28 11:54:13','2017-03-28 11:55:46',1,0,0,'classic','01','mobile','01','',1,'','',0),(21706,21704,20155,'2017-03-28 11:54:14','2017-03-28 11:55:48',0,0,0,'classic','01','mobile','01','',1,'','',0),(22304,22303,20155,'2017-10-17 05:17:19','2017-10-17 05:18:15',1,0,0,'classic','01','mobile','01','',1,'','',0),(22305,22303,20155,'2017-10-17 05:17:19','2017-10-17 05:18:17',0,0,0,'classic','01','mobile','01','',1,'','',0);
/*!40000 ALTER TABLE `layoutset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutsetbranch`
--

DROP TABLE IF EXISTS `layoutsetbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutsetbranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`),
  UNIQUE KEY `IX_5FF18552` (`groupId`,`privateLayout`,`name`),
  KEY `IX_8FF5D6EA` (`groupId`),
  KEY `IX_C4079FD3` (`groupId`,`privateLayout`),
  KEY `IX_CCF0DA29` (`groupId`,`privateLayout`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutsetbranch`
--

LOCK TABLES `layoutsetbranch` WRITE;
/*!40000 ALTER TABLE `layoutsetbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutsetbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutsetprototype`
--

DROP TABLE IF EXISTS `layoutsetprototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutsetprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`),
  KEY `IX_55F63D98` (`companyId`),
  KEY `IX_9178FC71` (`companyId`,`active_`),
  KEY `IX_C5D69B24` (`uuid_`),
  KEY `IX_D9FFCA84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutsetprototype`
--

LOCK TABLES `layoutsetprototype` WRITE;
/*!40000 ALTER TABLE `layoutsetprototype` DISABLE KEYS */;
INSERT INTO `layoutsetprototype` VALUES ('1349ecf8-8652-49d0-add8-13e0ca883a35',20353,20155,20159,'','2017-01-09 16:25:50','2017-03-28 11:55:37','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums and Wiki','layoutsUpdateable=true\n',1),('1f906ec7-c001-44d1-b8cb-b76fb6ba9e81',20379,20155,20159,'','2017-01-09 16:25:52','2017-03-28 11:55:37','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents and News','layoutsUpdateable=true\n',1);
/*!40000 ALTER TABLE `layoutsetprototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listtype`
--

DROP TABLE IF EXISTS `listtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listtype` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`),
  KEY `IX_2932DD37` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listtype`
--

LOCK TABLES `listtype` WRITE;
/*!40000 ALTER TABLE `listtype` DISABLE KEYS */;
INSERT INTO `listtype` VALUES (10000,'billing','com.liferay.portal.model.Account.address'),(10001,'other','com.liferay.portal.model.Account.address'),(10002,'p-o-box','com.liferay.portal.model.Account.address'),(10003,'shipping','com.liferay.portal.model.Account.address'),(10004,'email-address','com.liferay.portal.model.Account.emailAddress'),(10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),(10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),(10007,'fax','com.liferay.portal.model.Account.phone'),(10008,'local','com.liferay.portal.model.Account.phone'),(10009,'other','com.liferay.portal.model.Account.phone'),(10010,'toll-free','com.liferay.portal.model.Account.phone'),(10011,'tty','com.liferay.portal.model.Account.phone'),(10012,'intranet','com.liferay.portal.model.Account.website'),(10013,'public','com.liferay.portal.model.Account.website'),(11000,'business','com.liferay.portal.model.Contact.address'),(11001,'other','com.liferay.portal.model.Contact.address'),(11002,'personal','com.liferay.portal.model.Contact.address'),(11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),(11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),(11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),(11006,'business','com.liferay.portal.model.Contact.phone'),(11007,'business-fax','com.liferay.portal.model.Contact.phone'),(11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),(11009,'other','com.liferay.portal.model.Contact.phone'),(11010,'pager','com.liferay.portal.model.Contact.phone'),(11011,'personal','com.liferay.portal.model.Contact.phone'),(11012,'personal-fax','com.liferay.portal.model.Contact.phone'),(11013,'tty','com.liferay.portal.model.Contact.phone'),(11014,'dr','com.liferay.portal.model.Contact.prefix'),(11015,'mr','com.liferay.portal.model.Contact.prefix'),(11016,'mrs','com.liferay.portal.model.Contact.prefix'),(11017,'ms','com.liferay.portal.model.Contact.prefix'),(11020,'ii','com.liferay.portal.model.Contact.suffix'),(11021,'iii','com.liferay.portal.model.Contact.suffix'),(11022,'iv','com.liferay.portal.model.Contact.suffix'),(11023,'jr','com.liferay.portal.model.Contact.suffix'),(11024,'phd','com.liferay.portal.model.Contact.suffix'),(11025,'sr','com.liferay.portal.model.Contact.suffix'),(11026,'blog','com.liferay.portal.model.Contact.website'),(11027,'business','com.liferay.portal.model.Contact.website'),(11028,'other','com.liferay.portal.model.Contact.website'),(11029,'personal','com.liferay.portal.model.Contact.website'),(12000,'billing','com.liferay.portal.model.Organization.address'),(12001,'other','com.liferay.portal.model.Organization.address'),(12002,'p-o-box','com.liferay.portal.model.Organization.address'),(12003,'shipping','com.liferay.portal.model.Organization.address'),(12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),(12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),(12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),(12007,'fax','com.liferay.portal.model.Organization.phone'),(12008,'local','com.liferay.portal.model.Organization.phone'),(12009,'other','com.liferay.portal.model.Organization.phone'),(12010,'toll-free','com.liferay.portal.model.Organization.phone'),(12011,'tty','com.liferay.portal.model.Organization.phone'),(12012,'administrative','com.liferay.portal.model.Organization.service'),(12013,'contracts','com.liferay.portal.model.Organization.service'),(12014,'donation','com.liferay.portal.model.Organization.service'),(12015,'retail','com.liferay.portal.model.Organization.service'),(12016,'training','com.liferay.portal.model.Organization.service'),(12017,'full-member','com.liferay.portal.model.Organization.status'),(12018,'provisional-member','com.liferay.portal.model.Organization.status'),(12019,'intranet','com.liferay.portal.model.Organization.website'),(12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `listtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lock_`
--

DROP TABLE IF EXISTS `lock_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`),
  UNIQUE KEY `IX_228562AD` (`className`,`key_`),
  KEY `IX_E3F1286B` (`expirationDate`),
  KEY `IX_13C5CD3A` (`uuid_`),
  KEY `IX_2C418EAE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lock_`
--

LOCK TABLES `lock_` WRITE;
/*!40000 ALTER TABLE `lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `lock_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_app`
--

DROP TABLE IF EXISTS `marketplace_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_app` (
  `uuid_` varchar(75) DEFAULT NULL,
  `appId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remoteAppId` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `category` varchar(75) DEFAULT NULL,
  `iconURL` longtext,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `IX_94A7EF25` (`category`),
  KEY `IX_865B7BD5` (`companyId`),
  KEY `IX_20F14D93` (`remoteAppId`),
  KEY `IX_3E667FE1` (`uuid_`),
  KEY `IX_A7807DA7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_app`
--

LOCK TABLES `marketplace_app` WRITE;
/*!40000 ALTER TABLE `marketplace_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_module`
--

DROP TABLE IF EXISTS `marketplace_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_module` (
  `uuid_` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) NOT NULL,
  `appId` bigint(20) DEFAULT NULL,
  `bundleSymbolicName` varchar(500) DEFAULT NULL,
  `bundleVersion` varchar(75) DEFAULT NULL,
  `contextName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `IX_7DC16D26` (`appId`),
  KEY `IX_5848F52D` (`appId`,`bundleSymbolicName`(255),`bundleVersion`),
  KEY `IX_C6938724` (`appId`,`contextName`),
  KEY `IX_DD03D499` (`bundleSymbolicName`(255)),
  KEY `IX_F2F1E964` (`contextName`),
  KEY `IX_A7EFD80E` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_module`
--

LOCK TABLES `marketplace_module` WRITE;
/*!40000 ALTER TABLE `marketplace_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbban`
--

DROP TABLE IF EXISTS `mbban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbban` (
  `uuid_` varchar(75) DEFAULT NULL,
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`),
  UNIQUE KEY `IX_8ABC4E3B` (`groupId`,`banUserId`),
  UNIQUE KEY `IX_2A3B68F6` (`uuid_`,`groupId`),
  KEY `IX_69951A25` (`banUserId`),
  KEY `IX_5C3FF12A` (`groupId`),
  KEY `IX_48814BBA` (`userId`),
  KEY `IX_8A13C634` (`uuid_`),
  KEY `IX_4F841574` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbban`
--

LOCK TABLES `mbban` WRITE;
/*!40000 ALTER TABLE `mbban` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbcategory`
--

DROP TABLE IF EXISTS `mbcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbcategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_F7D28C2F` (`uuid_`,`groupId`),
  KEY `IX_BC735DCF` (`companyId`),
  KEY `IX_E15A5DB5` (`companyId`,`status`),
  KEY `IX_BB870C11` (`groupId`),
  KEY `IX_ED292508` (`groupId`,`parentCategoryId`),
  KEY `IX_C295DBEE` (`groupId`,`parentCategoryId`,`status`),
  KEY `IX_DA84A9F7` (`groupId`,`status`),
  KEY `IX_C2626EDB` (`uuid_`),
  KEY `IX_13DF4E6D` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbcategory`
--

LOCK TABLES `mbcategory` WRITE;
/*!40000 ALTER TABLE `mbcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbdiscussion`
--

DROP TABLE IF EXISTS `mbdiscussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbdiscussion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `discussionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`),
  UNIQUE KEY `IX_33A4DE38` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_B5CA2DC` (`threadId`),
  UNIQUE KEY `IX_F7AAC799` (`uuid_`,`groupId`),
  KEY `IX_79D0120B` (`classNameId`),
  KEY `IX_5477D431` (`uuid_`),
  KEY `IX_7E965757` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbdiscussion`
--

LOCK TABLES `mbdiscussion` WRITE;
/*!40000 ALTER TABLE `mbdiscussion` DISABLE KEYS */;
INSERT INTO `mbdiscussion` VALUES ('b6a471ec-9dd3-47ca-9249-20358d74f69f',20185,0,0,20159,'','2017-01-09 16:25:45','2017-01-09 16:25:45',20002,20180,20183),('a4080f63-d85e-484d-8d20-fbad8a387d7f',20194,0,0,20159,'','2017-01-09 16:25:45','2017-01-09 16:25:45',20002,20189,20192),('0155c0dc-5d4b-40a8-972e-404b0470b5f8',20330,0,0,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48',20002,20324,20327),('67f208d0-7024-41d7-bf39-c3555fac298c',20341,0,0,20159,'','2017-01-09 16:25:49','2017-01-09 16:25:49',20002,20336,20339),('01ed9835-e20a-4ba8-9182-8b386eb46e7e',20351,0,0,20159,'','2017-01-09 16:25:50','2017-01-09 16:25:50',20002,20346,20349),('dcaceb97-9a9d-4dc6-9b32-066260e2016b',20370,0,0,20159,'','2017-01-09 16:25:51','2017-01-09 16:25:51',20002,20365,20368),('87f1c6f4-f599-4d30-871a-5e2f4701b2d1',20378,0,0,20159,'','2017-01-09 16:25:52','2017-01-09 16:25:52',20002,20373,20376),('d5d31fb9-7d82-4b2e-9764-592791f0baa8',20396,0,0,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',20002,20391,20394),('221ac78e-606f-42a7-937e-b3efdc9d957e',20405,0,0,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',20002,20400,20403),('8fce5dca-d72d-47de-98be-f831217e70c6',20413,0,0,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',20002,20408,20411),('dc23761f-4779-415b-b8c1-91f0a8f36b1e',20532,0,0,20159,'','2017-01-09 16:28:04','2017-01-09 16:28:04',20002,20527,20530),('ca3c31a2-0035-4203-ac06-0fd44e9dd1be',20538,0,0,20159,'','2017-01-09 16:28:05','2017-01-09 16:28:05',20002,20533,20536),('086cb65a-0500-4835-a34a-62f1a4902bf4',21204,0,0,20438,'Admin User','2017-01-09 16:28:37','2017-01-09 16:28:37',20002,21199,21202),('e9053f30-9a8f-4421-b4f8-365ab5929ee5',21210,0,0,20438,'Admin User','2017-01-09 16:28:37','2017-01-09 16:28:37',20002,21205,21208),('006f6615-a23e-4c83-8e84-85e7b4c85129',21506,0,0,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',20002,21501,21504),('8e42702e-8411-49c7-a524-2eec1e7877c4',21512,0,0,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',20002,21507,21510),('07d8cf3b-51f0-4730-8e35-d5bc58e1fd88',21717,0,0,21702,'nurse','2017-03-28 11:55:47','2017-03-28 11:55:47',20002,21712,21715),('97c8d684-1f8d-4514-acd8-f4bd8714de5a',21723,0,0,21702,'nurse','2017-03-28 11:55:48','2017-03-28 11:55:48',20002,21718,21721),('9309b365-7312-45e8-acc4-f86779422c74',21906,0,0,21229,'pharmacist','2017-04-04 12:47:10','2017-04-04 12:47:10',20002,21901,21904),('5ec4ae79-0f10-495c-9542-149e1842cda2',21912,0,0,21229,'pharmacist','2017-04-04 12:47:11','2017-04-04 12:47:11',20002,21907,21910),('5dc14f18-1436-4618-ac5d-fff6b8a833ab',22106,0,0,20438,'Admin User','2017-06-08 14:26:31','2017-06-08 14:26:31',20002,22101,22104),('6a6d29e4-ef5e-48c9-ada0-c3a940764dd1',22315,0,0,22301,'testdoctor','2017-10-17 05:18:16','2017-10-17 05:18:16',20002,22310,22313),('017a5d3c-4fd3-40a9-87f8-13687b8f6db5',22321,0,0,22301,'testdoctor','2017-10-17 05:18:17','2017-10-17 05:18:17',20002,22316,22319);
/*!40000 ALTER TABLE `mbdiscussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbmailinglist`
--

DROP TABLE IF EXISTS `mbmailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbmailinglist` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`),
  UNIQUE KEY `IX_76CE9CDD` (`groupId`,`categoryId`),
  UNIQUE KEY `IX_E858F170` (`uuid_`,`groupId`),
  KEY `IX_BFEB984F` (`active_`),
  KEY `IX_4115EC7A` (`uuid_`),
  KEY `IX_FC61676E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbmailinglist`
--

LOCK TABLES `mbmailinglist` WRITE;
/*!40000 ALTER TABLE `mbmailinglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbmailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbmessage`
--

DROP TABLE IF EXISTS `mbmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbmessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  UNIQUE KEY `IX_8D12316E` (`uuid_`,`groupId`),
  KEY `IX_51A8D44D` (`classNameId`,`classPK`),
  KEY `IX_F6687633` (`classNameId`,`classPK`,`status`),
  KEY `IX_B1432D30` (`companyId`),
  KEY `IX_1AD93C16` (`companyId`,`status`),
  KEY `IX_5B153FB2` (`groupId`),
  KEY `IX_1073AB9F` (`groupId`,`categoryId`),
  KEY `IX_4257DB85` (`groupId`,`categoryId`,`status`),
  KEY `IX_B674AB58` (`groupId`,`categoryId`,`threadId`),
  KEY `IX_CBFDBF0A` (`groupId`,`categoryId`,`threadId`,`answer`),
  KEY `IX_385E123E` (`groupId`,`categoryId`,`threadId`,`status`),
  KEY `IX_ED39AC98` (`groupId`,`status`),
  KEY `IX_8EB8C5EC` (`groupId`,`userId`),
  KEY `IX_377858D2` (`groupId`,`userId`,`status`),
  KEY `IX_75B95071` (`threadId`),
  KEY `IX_9D7C3B23` (`threadId`,`answer`),
  KEY `IX_A7038CD7` (`threadId`,`parentMessageId`),
  KEY `IX_9DC8E57` (`threadId`,`status`),
  KEY `IX_7A040C32` (`userId`),
  KEY `IX_59F9CE5C` (`userId`,`classNameId`),
  KEY `IX_ABEB6D07` (`userId`,`classNameId`,`classPK`),
  KEY `IX_4A4BB4ED` (`userId`,`classNameId`,`classPK`,`status`),
  KEY `IX_3321F142` (`userId`,`classNameId`,`status`),
  KEY `IX_C57B16BC` (`uuid_`),
  KEY `IX_57CA9FEC` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbmessage`
--

LOCK TABLES `mbmessage` WRITE;
/*!40000 ALTER TABLE `mbmessage` DISABLE KEYS */;
INSERT INTO `mbmessage` VALUES ('0428efe4-a01d-4fcc-9046-305cf0b767a0',20182,20177,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',20002,20180,-1,20183,20182,0,'20180','20180','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:25:44'),('e1d31836-6ed5-43c0-831e-fe140578a78f',20191,20186,20155,20159,'','2017-01-09 16:25:45','2017-01-09 16:25:45',20002,20189,-1,20192,20191,0,'20189','20189','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:25:45'),('d81184ab-4988-465d-9d57-1c661ed6b7e5',20326,20321,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48',20002,20324,-1,20327,20326,0,'20324','20324','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:25:48'),('b0207c70-cf92-4d13-bf04-5bafbb99cfac',20338,20333,20155,20159,'','2017-01-09 16:25:49','2017-01-09 16:25:49',20002,20336,-1,20339,20338,0,'20336','20336','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:25:49'),('3b3a0b9d-94a0-4519-a8af-3b80fb421c98',20348,20343,20155,20159,'','2017-01-09 16:25:50','2017-01-09 16:25:50',20002,20346,-1,20349,20348,0,'20346','20346','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:25:50'),('2fa9cffb-1338-457a-ae66-54672f4de6d2',20367,20354,20155,20159,'','2017-01-09 16:25:51','2017-01-09 16:25:51',20002,20365,-1,20368,20367,0,'20365','20365','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:25:51'),('1e384f9a-4c19-4c2d-8fe6-b929cab71778',20375,20354,20155,20159,'','2017-01-09 16:25:52','2017-01-09 16:25:52',20002,20373,-1,20376,20375,0,'20373','20373','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:25:52'),('6cd96272-1a09-40d0-bf92-66b85fc47d53',20393,20380,20155,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',20002,20391,-1,20394,20393,0,'20391','20391','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:25:53'),('de4d73e5-6e09-4285-8488-ec0405a02f47',20402,20380,20155,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',20002,20400,-1,20403,20402,0,'20400','20400','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:25:53'),('d9de14d2-a4f4-4478-ace7-5d12613b45d1',20410,20380,20155,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',20002,20408,-1,20411,20410,0,'20408','20408','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:25:54'),('70aa0ad9-3eff-4756-8a69-4f992e450124',20529,20524,20155,20159,'','2017-01-09 16:28:04','2017-01-09 16:28:04',20002,20527,-1,20530,20529,0,'20527','20527','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:28:04'),('2f82552f-3e42-4c7a-914d-d7d839d0e183',20535,20524,20155,20159,'','2017-01-09 16:28:05','2017-01-09 16:28:05',20002,20533,-1,20536,20535,0,'20533','20533','bbcode',1,0,0,0,0,20159,'','2017-01-09 16:28:05'),('0809fa04-dd12-4bfd-b2c7-a5011598d85d',21201,20440,20155,20438,'Admin User','2017-01-09 16:28:36','2017-01-09 16:28:36',20002,21199,-1,21202,21201,0,'21199','21199','bbcode',0,0,0,0,0,20438,'Admin User','2017-01-09 16:28:36'),('69968a83-51bd-4865-8430-c52c236cfabe',21207,20440,20155,20438,'Admin User','2017-01-09 16:28:37','2017-01-09 16:28:37',20002,21205,-1,21208,21207,0,'21205','21205','bbcode',0,0,0,0,0,20438,'Admin User','2017-01-09 16:28:37'),('d3362309-01a9-4134-a757-1052e1e35dfc',21503,21222,20155,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',20002,21501,-1,21504,21503,0,'21501','21501','bbcode',0,0,0,0,0,21220,'doctor','2017-01-11 13:49:07'),('c881cf01-2698-4abd-8039-cb5926095a40',21509,21222,20155,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',20002,21507,-1,21510,21509,0,'21507','21507','bbcode',0,0,0,0,0,21220,'doctor','2017-01-11 13:49:07'),('b4cc7fd9-c6f5-4164-aa35-feab6fe1f5e0',21714,21704,20155,21702,'nurse','2017-03-28 11:55:46','2017-03-28 11:55:46',20002,21712,-1,21715,21714,0,'21712','21712','bbcode',0,0,0,0,0,21702,'nurse','2017-03-28 11:55:46'),('f160c6b3-ebcc-416b-b614-c087e4ff6ef0',21720,21704,20155,21702,'nurse','2017-03-28 11:55:48','2017-03-28 11:55:48',20002,21718,-1,21721,21720,0,'21718','21718','bbcode',0,0,0,0,0,21702,'nurse','2017-03-28 11:55:48'),('845cedc3-43e8-42f8-b5d9-be6beb9d4345',21903,21231,20155,21229,'pharmacist','2017-04-04 12:47:10','2017-04-04 12:47:10',20002,21901,-1,21904,21903,0,'21901','21901','bbcode',0,0,0,0,0,21229,'pharmacist','2017-04-04 12:47:10'),('23c48185-0bd7-4b26-b932-87cb9ea3a0c3',21909,21231,20155,21229,'pharmacist','2017-04-04 12:47:11','2017-04-04 12:47:11',20002,21907,-1,21910,21909,0,'21907','21907','bbcode',0,0,0,0,0,21229,'pharmacist','2017-04-04 12:47:11'),('51d0e7c1-e2ac-46e0-aa86-b6740eeb1dc2',22103,20186,20155,20438,'Admin User','2017-06-08 14:26:31','2017-06-08 14:26:31',20002,22101,-1,22104,22103,0,'22101','22101','bbcode',0,0,0,0,0,20438,'Admin User','2017-06-08 14:26:31'),('9275babb-0a6a-4001-9892-9f883fa03ba1',22312,22303,20155,22301,'testdoctor','2017-10-17 05:18:16','2017-10-17 05:18:16',20002,22310,-1,22313,22312,0,'22310','22310','bbcode',0,0,0,0,0,22301,'testdoctor','2017-10-17 05:18:16'),('302e8a93-fcd8-4df7-bebb-8d252bc46f15',22318,22303,20155,22301,'testdoctor','2017-10-17 05:18:17','2017-10-17 05:18:17',20002,22316,-1,22319,22318,0,'22316','22316','bbcode',0,0,0,0,0,22301,'testdoctor','2017-10-17 05:18:17');
/*!40000 ALTER TABLE `mbmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbstatsuser`
--

DROP TABLE IF EXISTS `mbstatsuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_9168E2C9` (`groupId`,`userId`),
  KEY `IX_A00A898F` (`groupId`),
  KEY `IX_D33A5445` (`groupId`,`userId`,`messageCount`),
  KEY `IX_847F92B5` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbstatsuser`
--

LOCK TABLES `mbstatsuser` WRITE;
/*!40000 ALTER TABLE `mbstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbstatsuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbthread`
--

DROP TABLE IF EXISTS `mbthread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbthread` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`),
  UNIQUE KEY `IX_3A200B7B` (`uuid_`,`groupId`),
  KEY `IX_41F6DC8A` (`categoryId`,`priority`),
  KEY `IX_95C0EA45` (`groupId`),
  KEY `IX_9A2D11B2` (`groupId`,`categoryId`),
  KEY `IX_50F1904A` (`groupId`,`categoryId`,`lastPostDate`),
  KEY `IX_485F7E98` (`groupId`,`categoryId`,`status`),
  KEY `IX_E1E7142B` (`groupId`,`status`),
  KEY `IX_AEDD9CB5` (`lastPostDate`,`priority`),
  KEY `IX_CC993ECB` (`rootMessageId`),
  KEY `IX_7E264A0F` (`uuid_`),
  KEY `IX_F8CA2AB9` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbthread`
--

LOCK TABLES `mbthread` WRITE;
/*!40000 ALTER TABLE `mbthread` DISABLE KEYS */;
INSERT INTO `mbthread` VALUES ('bc2edb25-2faa-4350-bdbd-6f564c01cb96',20183,20177,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',-1,20182,20159,1,0,0,'2017-01-09 16:25:44',0,0,0,20159,'','2017-01-09 16:25:44'),('3d72d4e3-83d8-4eac-8328-c63fcc48961b',20192,20186,20155,20159,'','2017-01-09 16:25:45','2017-01-09 16:25:45',-1,20191,20159,1,0,0,'2017-01-09 16:25:45',0,0,0,20159,'','2017-01-09 16:25:45'),('a620fbce-9c74-4439-b951-1dedbc0b50d6',20327,20321,20155,20159,'','2017-01-09 16:25:48','2017-01-09 16:25:48',-1,20326,20159,1,0,0,'2017-01-09 16:25:48',0,0,0,20159,'','2017-01-09 16:25:48'),('dcdbbeaa-dfb5-4823-b209-0e75f308a3f8',20339,20333,20155,20159,'','2017-01-09 16:25:49','2017-01-09 16:25:49',-1,20338,20159,1,0,0,'2017-01-09 16:25:49',0,0,0,20159,'','2017-01-09 16:25:49'),('0c210df0-0dee-4ac5-8d08-8e6e6e6cd290',20349,20343,20155,20159,'','2017-01-09 16:25:50','2017-01-09 16:25:50',-1,20348,20159,1,0,0,'2017-01-09 16:25:50',0,0,0,20159,'','2017-01-09 16:25:50'),('b257b915-cbea-49b6-9d6e-22eefebef16e',20368,20354,20155,20159,'','2017-01-09 16:25:51','2017-01-09 16:25:51',-1,20367,20159,1,0,0,'2017-01-09 16:25:51',0,0,0,20159,'','2017-01-09 16:25:51'),('10463ae9-21e8-42aa-bba3-25e88faa8744',20376,20354,20155,20159,'','2017-01-09 16:25:52','2017-01-09 16:25:52',-1,20375,20159,1,0,0,'2017-01-09 16:25:52',0,0,0,20159,'','2017-01-09 16:25:52'),('0945e5e1-d035-4644-a052-969a6ea15a32',20394,20380,20155,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',-1,20393,20159,1,0,0,'2017-01-09 16:25:53',0,0,0,20159,'','2017-01-09 16:25:53'),('b8eec3e3-bb3f-4f10-92ac-235c506e6cb8',20403,20380,20155,20159,'','2017-01-09 16:25:53','2017-01-09 16:25:53',-1,20402,20159,1,0,0,'2017-01-09 16:25:53',0,0,0,20159,'','2017-01-09 16:25:53'),('8b085163-9b84-41a2-88cd-4222770ab0b1',20411,20380,20155,20159,'','2017-01-09 16:25:54','2017-01-09 16:25:54',-1,20410,20159,1,0,0,'2017-01-09 16:25:54',0,0,0,20159,'','2017-01-09 16:25:54'),('b992755f-6b36-4cfb-9fb7-1586162cc6c5',20530,20524,20155,20159,'','2017-01-09 16:28:04','2017-01-09 16:28:04',-1,20529,20159,1,0,0,'2017-01-09 16:28:04',0,0,0,20159,'','2017-01-09 16:28:04'),('0f71b9b1-26a4-4338-a3a0-349e435d7fca',20536,20524,20155,20159,'','2017-01-09 16:28:05','2017-01-09 16:28:05',-1,20535,20159,1,0,0,'2017-01-09 16:28:05',0,0,0,20159,'','2017-01-09 16:28:05'),('fb1c746d-5184-491a-b122-98ae7ac1cd38',21202,20440,20155,20438,'Admin User','2017-01-09 16:28:36','2017-01-09 16:28:36',-1,21201,20438,1,0,20438,'2017-01-09 16:28:36',0,0,0,20438,'Admin User','2017-01-09 16:28:36'),('13f4aceb-0fb7-47e4-8719-376724e874c6',21208,20440,20155,20438,'Admin User','2017-01-09 16:28:37','2017-01-09 16:28:37',-1,21207,20438,1,0,20438,'2017-01-09 16:28:37',0,0,0,20438,'Admin User','2017-01-09 16:28:37'),('a2647534-cf2b-421b-898b-3e07597795dd',21504,21222,20155,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',-1,21503,21220,1,0,21220,'2017-01-11 13:49:07',0,0,0,21220,'doctor','2017-01-11 13:49:07'),('41637328-7234-4518-bfec-9a15aa8f1911',21510,21222,20155,21220,'doctor','2017-01-11 13:49:07','2017-01-11 13:49:07',-1,21509,21220,1,0,21220,'2017-01-11 13:49:07',0,0,0,21220,'doctor','2017-01-11 13:49:07'),('e774e4d1-b2a1-409b-80d5-bc1d50e303cd',21715,21704,20155,21702,'nurse','2017-03-28 11:55:46','2017-03-28 11:55:46',-1,21714,21702,1,0,21702,'2017-03-28 11:55:46',0,0,0,21702,'nurse','2017-03-28 11:55:46'),('75ee94c4-b8bf-4718-bec1-7a12a7ac8f70',21721,21704,20155,21702,'nurse','2017-03-28 11:55:48','2017-03-28 11:55:48',-1,21720,21702,1,0,21702,'2017-03-28 11:55:48',0,0,0,21702,'nurse','2017-03-28 11:55:48'),('688cf07f-f8ab-4246-b875-bb18d550d265',21904,21231,20155,21229,'pharmacist','2017-04-04 12:47:10','2017-04-04 12:47:10',-1,21903,21229,1,0,21229,'2017-04-04 12:47:10',0,0,0,21229,'pharmacist','2017-04-04 12:47:10'),('623d2802-34a0-4304-b7ac-1548746b99e2',21910,21231,20155,21229,'pharmacist','2017-04-04 12:47:11','2017-04-04 12:47:11',-1,21909,21229,1,0,21229,'2017-04-04 12:47:11',0,0,0,21229,'pharmacist','2017-04-04 12:47:11'),('4b87ba4e-2be7-4bb2-adc8-233c99aa254b',22104,20186,20155,20438,'Admin User','2017-06-08 14:26:31','2017-06-08 14:26:31',-1,22103,20438,1,0,20438,'2017-06-08 14:26:31',0,0,0,20438,'Admin User','2017-06-08 14:26:31'),('822e1b68-6782-4d1b-a353-6e36605c4709',22313,22303,20155,22301,'testdoctor','2017-10-17 05:18:16','2017-10-17 05:18:16',-1,22312,22301,1,0,22301,'2017-10-17 05:18:16',0,0,0,22301,'testdoctor','2017-10-17 05:18:16'),('705dfeca-21ba-4e68-9381-31b1abad4786',22319,22303,20155,22301,'testdoctor','2017-10-17 05:18:17','2017-10-17 05:18:17',-1,22318,22301,1,0,22301,'2017-10-17 05:18:17',0,0,0,22301,'testdoctor','2017-10-17 05:18:17');
/*!40000 ALTER TABLE `mbthread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbthreadflag`
--

DROP TABLE IF EXISTS `mbthreadflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbthreadflag` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadFlagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`),
  UNIQUE KEY `IX_33781904` (`userId`,`threadId`),
  UNIQUE KEY `IX_FEB0FC87` (`uuid_`,`groupId`),
  KEY `IX_8CB0A24A` (`threadId`),
  KEY `IX_A28004B` (`userId`),
  KEY `IX_F36BBB83` (`uuid_`),
  KEY `IX_DCE308C5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbthreadflag`
--

LOCK TABLES `mbthreadflag` WRITE;
/*!40000 ALTER TABLE `mbthreadflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbthreadflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdraction`
--

DROP TABLE IF EXISTS `mdraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdraction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`),
  UNIQUE KEY `IX_75BE36AD` (`uuid_`,`groupId`),
  KEY `IX_FD90786C` (`ruleGroupInstanceId`),
  KEY `IX_77BB5E9D` (`uuid_`),
  KEY `IX_C58A516B` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdraction`
--

LOCK TABLES `mdraction` WRITE;
/*!40000 ALTER TABLE `mdraction` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrule`
--

DROP TABLE IF EXISTS `mdrrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`),
  UNIQUE KEY `IX_F3EFDCB3` (`uuid_`,`groupId`),
  KEY `IX_4F4293F1` (`ruleGroupId`),
  KEY `IX_EA63B9D7` (`uuid_`),
  KEY `IX_7DEA8DF1` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrule`
--

LOCK TABLES `mdrrule` WRITE;
/*!40000 ALTER TABLE `mdrrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrulegroup`
--

DROP TABLE IF EXISTS `mdrrulegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrulegroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`),
  UNIQUE KEY `IX_46665CC4` (`uuid_`,`groupId`),
  KEY `IX_5849891C` (`groupId`),
  KEY `IX_7F26B2A6` (`uuid_`),
  KEY `IX_CC14DC2` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrulegroup`
--

LOCK TABLES `mdrrulegroup` WRITE;
/*!40000 ALTER TABLE `mdrrulegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrulegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrulegroupinstance`
--

DROP TABLE IF EXISTS `mdrrulegroupinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrulegroupinstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`),
  UNIQUE KEY `IX_808A0036` (`classNameId`,`classPK`,`ruleGroupId`),
  UNIQUE KEY `IX_9CBC6A39` (`uuid_`,`groupId`),
  KEY `IX_C95A08D8` (`classNameId`,`classPK`),
  KEY `IX_AFF28547` (`groupId`),
  KEY `IX_22DAB85C` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_BF3E642B` (`ruleGroupId`),
  KEY `IX_B6A6BD91` (`uuid_`),
  KEY `IX_25C9D1F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrulegroupinstance`
--

LOCK TABLES `mdrrulegroupinstance` WRITE;
/*!40000 ALTER TABLE `mdrrulegroupinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrulegroupinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membershiprequest`
--

DROP TABLE IF EXISTS `membershiprequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membershiprequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`),
  KEY `IX_8A1CC4B` (`groupId`),
  KEY `IX_C28C72EC` (`groupId`,`statusId`),
  KEY `IX_35AA8FA6` (`groupId`,`userId`,`statusId`),
  KEY `IX_66D70879` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membershiprequest`
--

LOCK TABLES `membershiprequest` WRITE;
/*!40000 ALTER TABLE `membershiprequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `membershiprequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_usernotificationevent`
--

DROP TABLE IF EXISTS `notifications_usernotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications_usernotificationevent` (
  `notificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userNotificationEventId` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `actionRequired` tinyint(4) DEFAULT NULL,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`notificationEventId`),
  UNIQUE KEY `IX_DC9FCEDC` (`userNotificationEventId`),
  KEY `IX_93C52776` (`userId`,`actionRequired`),
  KEY `IX_36E5AE4C` (`userId`,`actionRequired`,`archived`),
  KEY `IX_73C065F0` (`userId`,`delivered`,`actionRequired`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_usernotificationevent`
--

LOCK TABLES `notifications_usernotificationevent` WRITE;
/*!40000 ALTER TABLE `notifications_usernotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications_usernotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opensocial_gadget`
--

DROP TABLE IF EXISTS `opensocial_gadget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opensocial_gadget` (
  `uuid_` varchar(75) DEFAULT NULL,
  `gadgetId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `portletCategoryNames` longtext,
  PRIMARY KEY (`gadgetId`),
  KEY `IX_729869EE` (`companyId`),
  KEY `IX_E1F8627A` (`uuid_`),
  KEY `IX_3C79316E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opensocial_gadget`
--

LOCK TABLES `opensocial_gadget` WRITE;
/*!40000 ALTER TABLE `opensocial_gadget` DISABLE KEYS */;
/*!40000 ALTER TABLE `opensocial_gadget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opensocial_oauthconsumer`
--

DROP TABLE IF EXISTS `opensocial_oauthconsumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opensocial_oauthconsumer` (
  `oAuthConsumerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `consumerKey` varchar(75) DEFAULT NULL,
  `consumerSecret` longtext,
  `keyType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`oAuthConsumerId`),
  KEY `IX_47206618` (`gadgetKey`),
  KEY `IX_8E715BF8` (`gadgetKey`,`serviceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opensocial_oauthconsumer`
--

LOCK TABLES `opensocial_oauthconsumer` WRITE;
/*!40000 ALTER TABLE `opensocial_oauthconsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `opensocial_oauthconsumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opensocial_oauthtoken`
--

DROP TABLE IF EXISTS `opensocial_oauthtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opensocial_oauthtoken` (
  `oAuthTokenId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) DEFAULT NULL,
  `accessToken` varchar(75) DEFAULT NULL,
  `tokenName` varchar(75) DEFAULT NULL,
  `tokenSecret` varchar(75) DEFAULT NULL,
  `sessionHandle` varchar(75) DEFAULT NULL,
  `expiration` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oAuthTokenId`),
  KEY `IX_6C8CCC3D` (`gadgetKey`,`serviceName`),
  KEY `IX_CDD35402` (`userId`,`gadgetKey`,`serviceName`,`moduleId`,`tokenName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opensocial_oauthtoken`
--

LOCK TABLES `opensocial_oauthtoken` WRITE;
/*!40000 ALTER TABLE `opensocial_oauthtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `opensocial_oauthtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_`
--

DROP TABLE IF EXISTS `organization_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`),
  UNIQUE KEY `IX_E301BDF5` (`companyId`,`name`),
  KEY `IX_834BCEB6` (`companyId`),
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`),
  KEY `IX_396D6B42` (`uuid_`),
  KEY `IX_A9D85BA6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_`
--

LOCK TABLES `organization_` WRITE;
/*!40000 ALTER TABLE `organization_` DISABLE KEYS */;
INSERT INTO `organization_` VALUES ('b8ebe002-4997-47ed-9d2d-9ff7a06697f1',20523,20155,20159,'','2017-01-09 16:28:04','2017-01-09 16:28:04',0,'/20523/','Liferay, Inc.','regular-organization',1,0,0,12017,''),('f46eaca0-8eaa-4d25-a97e-b2d7b9c88b4d',20539,20155,20159,'','2017-01-09 16:28:05','2017-01-09 16:28:05',20523,'/20523/20539/','Liferay Chicago','location',1,19014,19,12017,''),('37c1adc0-505d-4580-9325-53fe4922d1b8',20603,20155,20159,'','2017-01-09 16:28:09','2017-01-09 16:28:09',20523,'/20523/20603/','Liferay Consulting','regular-organization',1,19005,19,12017,''),('c0603d60-306b-4f3e-9811-8d23a3126a26',20607,20155,20159,'','2017-01-09 16:28:09','2017-01-09 16:28:09',20523,'/20523/20607/','Liferay Dalian','location',1,0,2,12017,''),('19563b30-ee46-4c9b-985f-5cd94fbfa6a2',20671,20155,20159,'','2017-01-09 16:28:12','2017-01-09 16:28:12',20523,'/20523/20671/','Liferay Engineering','regular-organization',1,19005,19,12017,''),('2960d434-492a-4c22-8f89-77163f244304',20675,20155,20159,'','2017-01-09 16:28:12','2017-01-09 16:28:12',20523,'/20523/20675/','Liferay Frankfurt','location',1,0,4,12017,''),('db7d60c1-f3b4-4562-9659-ff76d4f46efc',20739,20155,20159,'','2017-01-09 16:28:15','2017-01-09 16:28:15',20523,'/20523/20739/','Liferay Hong Kong','location',1,0,2,12017,''),('c6757676-49b5-4fc7-bc95-b98b337b8fd6',20803,20155,20159,'','2017-01-09 16:28:18','2017-01-09 16:28:18',20523,'/20523/20803/','Liferay Kuala Lumpur','location',1,0,135,12017,''),('57de5b8a-7785-4323-995f-06d3b3230ebf',20867,20155,20159,'','2017-01-09 16:28:21','2017-01-09 16:28:21',20523,'/20523/20867/','Liferay Los Angeles','location',1,19005,19,12017,''),('faa03b60-027a-4daa-a083-0a9a8d6352d3',20931,20155,20159,'','2017-01-09 16:28:24','2017-01-09 16:28:24',20523,'/20523/20931/','Liferay Madrid','location',1,0,15,12017,''),('28f55674-ddba-449a-a8a4-cb9f5bfe00a1',20995,20155,20159,'','2017-01-09 16:28:27','2017-01-09 16:28:27',20523,'/20523/20995/','Liferay Marketing','regular-organization',1,19005,19,12017,''),('6d33456a-f3ab-419e-853a-a382c0a42cd6',20999,20155,20159,'','2017-01-09 16:28:27','2017-01-09 16:28:27',20523,'/20523/20999/','Liferay New York','location',1,19033,19,12017,''),('eae863d5-1afd-482d-92b3-46ef1ef6265f',21063,20155,20159,'','2017-01-09 16:28:30','2017-01-09 16:28:30',20523,'/20523/21063/','Liferay Saint Paulo','location',1,0,48,12017,''),('cade378d-92e1-4517-a101-9c46e0e62f47',21127,20155,20159,'','2017-01-09 16:28:33','2017-01-09 16:28:33',20523,'/20523/21127/','Liferay Sales','regular-organization',1,19005,19,12017,''),('b7b2675b-829a-4dcb-b64a-c55b2348d0e2',21131,20155,20159,'','2017-01-09 16:28:33','2017-01-09 16:28:33',20523,'/20523/21131/','Liferay San Francisco','location',1,19005,19,12017,''),('82667723-ead3-462c-a444-c190a5507c36',21195,20155,20159,'','2017-01-09 16:28:36','2017-01-09 16:28:36',20523,'/20523/21195/','Liferay Support','regular-organization',1,19005,19,12017,'');
/*!40000 ALTER TABLE `organization_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orggrouprole`
--

DROP TABLE IF EXISTS `orggrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orggrouprole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`),
  KEY `IX_4A527DD3` (`groupId`),
  KEY `IX_AB044D1C` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orggrouprole`
--

LOCK TABLES `orggrouprole` WRITE;
/*!40000 ALTER TABLE `orggrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `orggrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orglabor`
--

DROP TABLE IF EXISTS `orglabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orglabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`),
  KEY `IX_6AF0D434` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orglabor`
--

LOCK TABLES `orglabor` WRITE;
/*!40000 ALTER TABLE `orglabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `orglabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordpolicy`
--

DROP TABLE IF EXISTS `passwordpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordpolicy` (
  `uuid_` varchar(75) DEFAULT NULL,
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `regex` varchar(75) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`),
  UNIQUE KEY `IX_3FBFA9F4` (`companyId`,`name`),
  KEY `IX_8FEE65F5` (`companyId`),
  KEY `IX_2C1142E` (`companyId`,`defaultPolicy`),
  KEY `IX_51437A01` (`uuid_`),
  KEY `IX_E4D7EF87` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordpolicy`
--

LOCK TABLES `passwordpolicy` WRITE;
/*!40000 ALTER TABLE `passwordpolicy` DISABLE KEYS */;
INSERT INTO `passwordpolicy` VALUES ('2bf95c8c-9e99-46b2-a5b5-66aafc996333',20202,20155,20159,'','2017-01-09 16:25:45','2017-01-09 16:25:45',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,'(?=.{4})(?:[a-zA-Z0-9]*)',0,6,0,8640000,86400,0,0,3,0,1,600,86400);
/*!40000 ALTER TABLE `passwordpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordpolicyrel`
--

DROP TABLE IF EXISTS `passwordpolicyrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordpolicyrel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`),
  UNIQUE KEY `IX_C3A17327` (`classNameId`,`classPK`),
  KEY `IX_CD25266E` (`passwordPolicyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordpolicyrel`
--

LOCK TABLES `passwordpolicyrel` WRITE;
/*!40000 ALTER TABLE `passwordpolicyrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwordpolicyrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordtracker`
--

DROP TABLE IF EXISTS `passwordtracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordtracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`),
  KEY `IX_326F75BD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordtracker`
--

LOCK TABLES `passwordtracker` WRITE;
/*!40000 ALTER TABLE `passwordtracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwordtracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone` (
  `uuid_` varchar(75) DEFAULT NULL,
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`),
  KEY `IX_9F704A14` (`companyId`),
  KEY `IX_A2E4AFBA` (`companyId`,`classNameId`),
  KEY `IX_9A53569` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_812CE07A` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F202B9CE` (`userId`),
  KEY `IX_EA6245A0` (`uuid_`),
  KEY `IX_B271FA88` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluginsetting`
--

DROP TABLE IF EXISTS `pluginsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginsetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`),
  UNIQUE KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`),
  KEY `IX_B9746445` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluginsetting`
--

LOCK TABLES `pluginsetting` WRITE;
/*!40000 ALTER TABLE `pluginsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluginsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollschoice`
--

DROP TABLE IF EXISTS `pollschoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollschoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`),
  UNIQUE KEY `IX_D76DD2CF` (`questionId`,`name`),
  UNIQUE KEY `IX_C222BD31` (`uuid_`,`groupId`),
  KEY `IX_EC370F10` (`questionId`),
  KEY `IX_6660B399` (`uuid_`),
  KEY `IX_8AE746EF` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollschoice`
--

LOCK TABLES `pollschoice` WRITE;
/*!40000 ALTER TABLE `pollschoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollschoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsquestion`
--

DROP TABLE IF EXISTS `pollsquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsquestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `IX_F3C9F36` (`uuid_`,`groupId`),
  KEY `IX_9FF342EA` (`groupId`),
  KEY `IX_51F087F4` (`uuid_`),
  KEY `IX_F910BBB4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsquestion`
--

LOCK TABLES `pollsquestion` WRITE;
/*!40000 ALTER TABLE `pollsquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsvote`
--

DROP TABLE IF EXISTS `pollsvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsvote` (
  `uuid_` varchar(75) DEFAULT NULL,
  `voteId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`),
  UNIQUE KEY `IX_1BBFD4D3` (`questionId`,`userId`),
  UNIQUE KEY `IX_A88C673A` (`uuid_`,`groupId`),
  KEY `IX_D5DF7B54` (`choiceId`),
  KEY `IX_12112599` (`questionId`),
  KEY `IX_FD32EB70` (`uuid_`),
  KEY `IX_7D8E92B8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsvote`
--

LOCK TABLES `pollsvote` WRITE;
/*!40000 ALTER TABLE `pollsvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portalpreferences`
--

DROP TABLE IF EXISTS `portalpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portalpreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`),
  KEY `IX_D1F795F1` (`ownerId`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portalpreferences`
--

LOCK TABLES `portalpreferences` WRITE;
/*!40000 ALTER TABLE `portalpreferences` DISABLE KEYS */;
INSERT INTO `portalpreferences` VALUES (20154,0,1,'<portlet-preferences />'),(20161,20155,1,'<portlet-preferences><preference><name>admin.email.verification.subject</name><value>[$PORTAL_URL$]: Email Address Verification</value></preference><preference><name>admin.email.password.reset.subject</name><value>[$PORTAL_URL$]: Reset Your Password</value></preference><preference><name>company.security.strangers.verify</name><value>false</value></preference><preference><name>admin.email.password.sent.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Your new password for [$PORTAL_URL$] is [$USER_PASSWORD$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.email.user.added.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Welcome! You recently created an account at [$PORTAL_URL$]. Your password is [$USER_PASSWORD$]. Enjoy!&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>company.security.strangers</name><value>true</value></preference><preference><name>admin.email.verification.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Please verify your email address for [$PORTAL_URL$] at [$EMAIL_VERIFICATION_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Your verification code is [$EMAIL_VERIFICATION_CODE$] Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.email.password.reset.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]You can reset your password for [$PORTAL_URL$] at [$PASSWORD_RESET_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.default.role.names</name><value>Power User[$NEW_LINE$]User</value></preference><preference><name>admin.analytics.types</name><value>google[$NEW_LINE$]piwik</value></preference><preference><name>company.security.auth.type</name><value>screenName</value></preference><preference><name>admin.email.user.added.subject</name><value>[$PORTAL_URL$]: Your New Account</value></preference><preference><name>admin.email.password.sent.subject</name><value>[$PORTAL_URL$]: Your New Password</value></preference><preference><name>company.security.send.password</name><value>true</value></preference><preference><name>locales</name><value>ca_ES,zh_CN,en_US,fi_FI,fr_FR,de_DE,iw_IL,hu_HU,ja_JP,pt_BR,es_ES</value></preference><preference><name>ldap.server.ids</name><value></value></preference><preference><name>company.security.site.logo</name><value>true</value></preference><preference><name>admin.email.user.added.no.password.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Welcome! You recently created an account at [$PORTAL_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>company.security.auto.login</name><value>true</value></preference><preference><name>company.security.strangers.with.mx</name><value>true</value></preference></portlet-preferences>'),(20437,20159,4,'<portlet-preferences />'),(21211,20438,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory7</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_addpanel_tab</name><value>applications</value></preference><preference><name>com.liferay.portal.util.SessionClicks#p_auth</name><value>Wv4WymcZ</value></preference><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory8</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory0</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory12</name><value>open</value></preference></portlet-preferences>'),(21513,21220,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#liferay_toggle_controls</name><value>visible</value></preference><preference><name>com.liferay.portal.util.SessionClicks#p_auth</name><value>t3TQc9RU</value></preference></portlet-preferences>'),(21724,21702,4,'<portlet-preferences />'),(21913,21229,4,'<portlet-preferences />'),(22322,22301,4,'<portlet-preferences />');
/*!40000 ALTER TABLE `portalpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlet`
--

DROP TABLE IF EXISTS `portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`),
  KEY `IX_80CC9508` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portlet`
--

LOCK TABLES `portlet` WRITE;
/*!40000 ALTER TABLE `portlet` DISABLE KEYS */;
INSERT INTO `portlet` VALUES (20209,20155,'98','',0),(20210,20155,'183','',1),(20211,20155,'66','',1),(20212,20155,'180','',1),(20213,20155,'27','',1),(20214,20155,'152','',1),(20215,20155,'134','',1),(20216,20155,'130','',1),(20217,20155,'122','',1),(20218,20155,'36','',1),(20219,20155,'26','',1),(20220,20155,'175','',1),(20221,20155,'153','',1),(20222,20155,'64','',1),(20223,20155,'129','',1),(20224,20155,'182','',1),(20225,20155,'179','',1),(20226,20155,'173','',0),(20227,20155,'100','',1),(20228,20155,'19','',1),(20229,20155,'157','',1),(20230,20155,'181','',1),(20231,20155,'128','',1),(20232,20155,'154','',1),(20233,20155,'148','',1),(20234,20155,'11','',1),(20235,20155,'29','',1),(20236,20155,'158','',1),(20237,20155,'178','',1),(20238,20155,'58','',1),(20239,20155,'71','',1),(20240,20155,'97','',1),(20241,20155,'39','',1),(20242,20155,'85','',1),(20243,20155,'118','',1),(20244,20155,'107','',1),(20245,20155,'30','',1),(20246,20155,'184','',1),(20247,20155,'147','',1),(20248,20155,'48','',1),(20249,20155,'125','',1),(20250,20155,'161','',1),(20251,20155,'146','',1),(20252,20155,'62','',0),(20253,20155,'162','',1),(20254,20155,'176','',1),(20255,20155,'108','',1),(20256,20155,'187','',1),(20257,20155,'84','',1),(20258,20155,'101','',1),(20259,20155,'121','',1),(20260,20155,'143','',1),(20261,20155,'77','',1),(20262,20155,'167','',1),(20263,20155,'115','',1),(20264,20155,'56','',1),(20265,20155,'16','',1),(20266,20155,'3','',1),(20267,20155,'20','',1),(20268,20155,'23','',1),(20269,20155,'83','',1),(20270,20155,'99','',1),(20271,20155,'186','',1),(20272,20155,'194','',1),(20273,20155,'70','',1),(20274,20155,'164','',1),(20275,20155,'141','',1),(20276,20155,'9','',1),(20277,20155,'28','',1),(20278,20155,'137','',1),(20279,20155,'15','',1),(20280,20155,'47','',1),(20281,20155,'116','',1),(20282,20155,'82','',1),(20283,20155,'151','',1),(20284,20155,'54','',1),(20285,20155,'34','',1),(20286,20155,'132','',1),(20287,20155,'169','',1),(20288,20155,'61','',1),(20289,20155,'73','',1),(20290,20155,'50','',1),(20291,20155,'127','',1),(20292,20155,'193','',1),(20293,20155,'31','',1),(20294,20155,'25','',1),(20295,20155,'166','',1),(20296,20155,'33','',1),(20297,20155,'150','',1),(20298,20155,'114','',1),(20299,20155,'149','',1),(20300,20155,'67','',1),(20301,20155,'110','',1),(20302,20155,'59','',1),(20303,20155,'135','',1),(20304,20155,'188','',1),(20305,20155,'131','',1),(20306,20155,'102','',1),(20456,20155,'1_WAR_calendarportlet','',1),(20504,20155,'1_WAR_webformportlet','',1),(20513,20155,'4_WAR_opensocialportlet','',1),(20514,20155,'2_WAR_opensocialportlet','',1),(20515,20155,'1_WAR_opensocialportlet','',1),(20516,20155,'3_WAR_opensocialportlet','',1),(20522,20155,'1_WAR_notificationsportlet','',1),(21301,20155,'portalb_WAR_epsosportal','',1),(21302,20155,'localncp_WAR_epsosportal','',1),(21303,20155,'pacrep_WAR_epsosportal','',1),(21304,20155,'trillium_WAR_epsosportal','',1),(21305,20155,'pac_WAR_epsosportal','',1),(22001,20155,'tsleditor_WAR_tsleditorportlet','',1);
/*!40000 ALTER TABLE `portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portletitem`
--

DROP TABLE IF EXISTS `portletitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletitem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`),
  KEY `IX_96BDD537` (`groupId`,`classNameId`),
  KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`),
  KEY `IX_2C61314E` (`groupId`,`portletId`),
  KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`),
  KEY `IX_8E71167F` (`groupId`,`portletId`,`classNameId`,`name`),
  KEY `IX_33B8CE8D` (`groupId`,`portletId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portletitem`
--

LOCK TABLES `portletitem` WRITE;
/*!40000 ALTER TABLE `portletitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `portletitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portletpreferences`
--

DROP TABLE IF EXISTS `portletpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletpreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`),
  UNIQUE KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`),
  KEY `IX_E4F13E6E` (`ownerId`,`ownerType`,`plid`),
  KEY `IX_C9A3FCE2` (`ownerId`,`ownerType`,`portletId`),
  KEY `IX_D5EDA3A1` (`ownerType`,`plid`,`portletId`),
  KEY `IX_A3B2A80C` (`ownerType`,`portletId`),
  KEY `IX_F15C1C4F` (`plid`),
  KEY `IX_D340DB76` (`plid`,`portletId`),
  KEY `IX_8E6DA3A1` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portletpreferences`
--

LOCK TABLES `portletpreferences` WRITE;
/*!40000 ALTER TABLE `portletpreferences` DISABLE KEYS */;
INSERT INTO `portletpreferences` VALUES (20331,0,3,20324,'148_INSTANCE_f2ODAXriI8m3','<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>showZeroAssetCount</name><value>false</value></preference><preference><name>classNameId</name><value>20007</value></preference><preference><name>displayStyle</name><value>cloud</value></preference><preference><name>maxAssetTags</name><value>10</value></preference></portlet-preferences>'),(20352,0,3,20346,'141_INSTANCE_qHRV3Lgo9CL3','<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>classNameId</name><value>20016</value></preference></portlet-preferences>'),(20371,0,3,20365,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20372,0,3,20365,'101_INSTANCE_ZEJBGnXOtIPE','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(20397,0,3,20391,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20398,0,3,20391,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(20399,0,3,20391,'101_INSTANCE_FTl0FHHJCJPz','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(20406,0,3,20400,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20407,0,3,20400,'101_INSTANCE_1Zuf1ceA6yae','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(20414,0,3,20408,'39_INSTANCE_OehmWpK3FPln','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),(20415,0,3,20408,'39_INSTANCE_iZmHpw692ilV','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),(21212,0,3,20189,'145','<portlet-preferences />'),(21213,0,3,20189,'2_WAR_notificationsportlet','<portlet-preferences />'),(21215,0,3,20180,'190','<portlet-preferences />'),(21216,0,3,20180,'145','<portlet-preferences />'),(21217,0,3,20180,'2_WAR_notificationsportlet','<portlet-preferences />'),(21218,0,3,20180,'128','<portlet-preferences />'),(21219,0,3,20180,'125','<portlet-preferences />'),(21601,0,3,20189,'portalb_WAR_epsosportal','<portlet-preferences />'),(21701,0,3,20180,'127','<portlet-preferences />'),(21711,0,3,20180,'130','<portlet-preferences />'),(21915,0,3,20180,'2','<portlet-preferences />'),(22107,0,3,22101,'145','<portlet-preferences />'),(22108,0,3,22101,'2_WAR_notificationsportlet','<portlet-preferences />'),(22109,0,3,22101,'tsleditor_WAR_tsleditorportlet','<portlet-preferences />'),(22201,0,3,20180,'160','<portlet-preferences />'),(22202,0,3,20180,'156','<portlet-preferences />'),(22203,0,3,20180,'86','<portlet-preferences />'),(22218,0,3,21507,'145','<portlet-preferences />'),(22219,0,3,21507,'2_WAR_notificationsportlet','<portlet-preferences />'),(22220,0,3,21501,'145','<portlet-preferences />'),(22221,0,3,21501,'2_WAR_notificationsportlet','<portlet-preferences />');
/*!40000 ALTER TABLE `portletpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_blob_triggers`
--

DROP TABLE IF EXISTS `quartz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_blob_triggers`
--

LOCK TABLES `quartz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_calendars`
--

DROP TABLE IF EXISTS `quartz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_calendars`
--

LOCK TABLES `quartz_calendars` WRITE;
/*!40000 ALTER TABLE `quartz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_cron_triggers`
--

DROP TABLE IF EXISTS `quartz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_cron_triggers`
--

LOCK TABLES `quartz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_fired_triggers`
--

DROP TABLE IF EXISTS `quartz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_fired_triggers`
--

LOCK TABLES `quartz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_job_details`
--

DROP TABLE IF EXISTS `quartz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_job_details`
--

LOCK TABLES `quartz_job_details` WRITE;
/*!40000 ALTER TABLE `quartz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_locks`
--

DROP TABLE IF EXISTS `quartz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_locks`
--

LOCK TABLES `quartz_locks` WRITE;
/*!40000 ALTER TABLE `quartz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `quartz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_paused_trigger_grps`
--

LOCK TABLES `quartz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `quartz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_scheduler_state`
--

DROP TABLE IF EXISTS `quartz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_scheduler_state`
--

LOCK TABLES `quartz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `quartz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_simple_triggers`
--

DROP TABLE IF EXISTS `quartz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_simple_triggers`
--

LOCK TABLES `quartz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_simprop_triggers`
--

DROP TABLE IF EXISTS `quartz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_simprop_triggers`
--

LOCK TABLES `quartz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_triggers`
--

DROP TABLE IF EXISTS `quartz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_triggers`
--

LOCK TABLES `quartz_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingsentry`
--

DROP TABLE IF EXISTS `ratingsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratingsentry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B47E3C11` (`userId`,`classNameId`,`classPK`),
  KEY `IX_16184D57` (`classNameId`,`classPK`),
  KEY `IX_A1A8CB8B` (`classNameId`,`classPK`,`score`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingsentry`
--

LOCK TABLES `ratingsentry` WRITE;
/*!40000 ALTER TABLE `ratingsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingsstats`
--

DROP TABLE IF EXISTS `ratingsstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratingsstats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`),
  UNIQUE KEY `IX_A6E99284` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingsstats`
--

LOCK TABLES `ratingsstats` WRITE;
/*!40000 ALTER TABLE `ratingsstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`),
  UNIQUE KEY `IX_A2635F5C` (`countryId`,`regionCode`),
  KEY `IX_2D9A426F` (`active_`),
  KEY `IX_16D87CA7` (`countryId`),
  KEY `IX_11FB3E42` (`countryId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1001,1,'AB','Alberta',1),(1002,1,'BC','British Columbia',1),(1003,1,'MB','Manitoba',1),(1004,1,'NB','New Brunswick',1),(1005,1,'NL','Newfoundland and Labrador',1),(1006,1,'NT','Northwest Territories',1),(1007,1,'NS','Nova Scotia',1),(1008,1,'NU','Nunavut',1),(1009,1,'ON','Ontario',1),(1010,1,'PE','Prince Edward Island',1),(1011,1,'QC','Quebec',1),(1012,1,'SK','Saskatchewan',1),(1013,1,'YT','Yukon',1),(2001,2,'CN-34','Anhui',1),(2002,2,'CN-92','Aomen',1),(2003,2,'CN-11','Beijing',1),(2004,2,'CN-50','Chongqing',1),(2005,2,'CN-35','Fujian',1),(2006,2,'CN-62','Gansu',1),(2007,2,'CN-44','Guangdong',1),(2008,2,'CN-45','Guangxi',1),(2009,2,'CN-52','Guizhou',1),(2010,2,'CN-46','Hainan',1),(2011,2,'CN-13','Hebei',1),(2012,2,'CN-23','Heilongjiang',1),(2013,2,'CN-41','Henan',1),(2014,2,'CN-42','Hubei',1),(2015,2,'CN-43','Hunan',1),(2016,2,'CN-32','Jiangsu',1),(2017,2,'CN-36','Jiangxi',1),(2018,2,'CN-22','Jilin',1),(2019,2,'CN-21','Liaoning',1),(2020,2,'CN-15','Nei Mongol',1),(2021,2,'CN-64','Ningxia',1),(2022,2,'CN-63','Qinghai',1),(2023,2,'CN-61','Shaanxi',1),(2024,2,'CN-37','Shandong',1),(2025,2,'CN-31','Shanghai',1),(2026,2,'CN-14','Shanxi',1),(2027,2,'CN-51','Sichuan',1),(2028,2,'CN-71','Taiwan',1),(2029,2,'CN-12','Tianjin',1),(2030,2,'CN-91','Xianggang',1),(2031,2,'CN-65','Xinjiang',1),(2032,2,'CN-54','Xizang',1),(2033,2,'CN-53','Yunnan',1),(2034,2,'CN-33','Zhejiang',1),(3001,3,'A','Alsace',1),(3002,3,'B','Aquitaine',1),(3003,3,'C','Auvergne',1),(3004,3,'P','Basse-Normandie',1),(3005,3,'D','Bourgogne',1),(3006,3,'E','Bretagne',1),(3007,3,'F','Centre',1),(3008,3,'G','Champagne-Ardenne',1),(3009,3,'H','Corse',1),(3010,3,'GF','Guyane',1),(3011,3,'I','Franche ComtÃ©',1),(3012,3,'GP','Guadeloupe',1),(3013,3,'Q','Haute-Normandie',1),(3014,3,'J','ÃŽle-de-France',1),(3015,3,'K','Languedoc-Roussillon',1),(3016,3,'L','Limousin',1),(3017,3,'M','Lorraine',1),(3018,3,'MQ','Martinique',1),(3019,3,'N','Midi-PyrÃ©nÃ©es',1),(3020,3,'O','Nord Pas de Calais',1),(3021,3,'R','Pays de la Loire',1),(3022,3,'S','Picardie',1),(3023,3,'T','Poitou-Charentes',1),(3024,3,'U','Provence-Alpes-CÃ´te-d\'Azur',1),(3025,3,'RE','RÃ©union',1),(3026,3,'V','RhÃ´ne-Alpes',1),(4001,4,'BW','Baden-WÃ¼rttemberg',1),(4002,4,'BY','Bayern',1),(4003,4,'BE','Berlin',1),(4004,4,'BB','Brandenburg',1),(4005,4,'HB','Bremen',1),(4006,4,'HH','Hamburg',1),(4007,4,'HE','Hessen',1),(4008,4,'MV','Mecklenburg-Vorpommern',1),(4009,4,'NI','Niedersachsen',1),(4010,4,'NW','Nordrhein-Westfalen',1),(4011,4,'RP','Rheinland-Pfalz',1),(4012,4,'SL','Saarland',1),(4013,4,'SN','Sachsen',1),(4014,4,'ST','Sachsen-Anhalt',1),(4015,4,'SH','Schleswig-Holstein',1),(4016,4,'TH','ThÃ¼ringen',1),(8001,8,'AG','Agrigento',1),(8002,8,'AL','Alessandria',1),(8003,8,'AN','Ancona',1),(8004,8,'AO','Aosta',1),(8005,8,'AR','Arezzo',1),(8006,8,'AP','Ascoli Piceno',1),(8007,8,'AT','Asti',1),(8008,8,'AV','Avellino',1),(8009,8,'BA','Bari',1),(8010,8,'BT','Barletta-Andria-Trani',1),(8011,8,'BL','Belluno',1),(8012,8,'BN','Benevento',1),(8013,8,'BG','Bergamo',1),(8014,8,'BI','Biella',1),(8015,8,'BO','Bologna',1),(8016,8,'BZ','Bolzano',1),(8017,8,'BS','Brescia',1),(8018,8,'BR','Brindisi',1),(8019,8,'CA','Cagliari',1),(8020,8,'CL','Caltanissetta',1),(8021,8,'CB','Campobasso',1),(8022,8,'CI','Carbonia-Iglesias',1),(8023,8,'CE','Caserta',1),(8024,8,'CT','Catania',1),(8025,8,'CZ','Catanzaro',1),(8026,8,'CH','Chieti',1),(8027,8,'CO','Como',1),(8028,8,'CS','Cosenza',1),(8029,8,'CR','Cremona',1),(8030,8,'KR','Crotone',1),(8031,8,'CN','Cuneo',1),(8032,8,'EN','Enna',1),(8033,8,'FM','Fermo',1),(8034,8,'FE','Ferrara',1),(8035,8,'FI','Firenze',1),(8036,8,'FG','Foggia',1),(8037,8,'FC','Forli-Cesena',1),(8038,8,'FR','Frosinone',1),(8039,8,'GE','Genova',1),(8040,8,'GO','Gorizia',1),(8041,8,'GR','Grosseto',1),(8042,8,'IM','Imperia',1),(8043,8,'IS','Isernia',1),(8044,8,'AQ','L\'Aquila',1),(8045,8,'SP','La Spezia',1),(8046,8,'LT','Latina',1),(8047,8,'LE','Lecce',1),(8048,8,'LC','Lecco',1),(8049,8,'LI','Livorno',1),(8050,8,'LO','Lodi',1),(8051,8,'LU','Lucca',1),(8052,8,'MC','Macerata',1),(8053,8,'MN','Mantova',1),(8054,8,'MS','Massa-Carrara',1),(8055,8,'MT','Matera',1),(8056,8,'MA','Medio Campidano',1),(8057,8,'ME','Messina',1),(8058,8,'MI','Milano',1),(8059,8,'MO','Modena',1),(8060,8,'MB','Monza e Brianza',1),(8061,8,'NA','Napoli',1),(8062,8,'NO','Novara',1),(8063,8,'NU','Nuoro',1),(8064,8,'OG','Ogliastra',1),(8065,8,'OT','Olbia-Tempio',1),(8066,8,'OR','Oristano',1),(8067,8,'PD','Padova',1),(8068,8,'PA','Palermo',1),(8069,8,'PR','Parma',1),(8070,8,'PV','Pavia',1),(8071,8,'PG','Perugia',1),(8072,8,'PU','Pesaro e Urbino',1),(8073,8,'PE','Pescara',1),(8074,8,'PC','Piacenza',1),(8075,8,'PI','Pisa',1),(8076,8,'PT','Pistoia',1),(8077,8,'PN','Pordenone',1),(8078,8,'PZ','Potenza',1),(8079,8,'PO','Prato',1),(8080,8,'RG','Ragusa',1),(8081,8,'RA','Ravenna',1),(8082,8,'RC','Reggio Calabria',1),(8083,8,'RE','Reggio Emilia',1),(8084,8,'RI','Rieti',1),(8085,8,'RN','Rimini',1),(8086,8,'RM','Roma',1),(8087,8,'RO','Rovigo',1),(8088,8,'SA','Salerno',1),(8089,8,'SS','Sassari',1),(8090,8,'SV','Savona',1),(8091,8,'SI','Siena',1),(8092,8,'SR','Siracusa',1),(8093,8,'SO','Sondrio',1),(8094,8,'TA','Taranto',1),(8095,8,'TE','Teramo',1),(8096,8,'TR','Terni',1),(8097,8,'TO','Torino',1),(8098,8,'TP','Trapani',1),(8099,8,'TN','Trento',1),(8100,8,'TV','Treviso',1),(8101,8,'TS','Trieste',1),(8102,8,'UD','Udine',1),(8103,8,'VA','Varese',1),(8104,8,'VE','Venezia',1),(8105,8,'VB','Verbano-Cusio-Ossola',1),(8106,8,'VC','Vercelli',1),(8107,8,'VR','Verona',1),(8108,8,'VV','Vibo Valentia',1),(8109,8,'VI','Vicenza',1),(8110,8,'VT','Viterbo',1),(11001,11,'DR','Drenthe',1),(11002,11,'FL','Flevoland',1),(11003,11,'FR','Friesland',1),(11004,11,'GE','Gelderland',1),(11005,11,'GR','Groningen',1),(11006,11,'LI','Limburg',1),(11007,11,'NB','Noord-Brabant',1),(11008,11,'NH','Noord-Holland',1),(11009,11,'OV','Overijssel',1),(11010,11,'UT','Utrecht',1),(11011,11,'ZE','Zeeland',1),(11012,11,'ZH','Zuid-Holland',1),(15001,15,'AN','Andalusia',1),(15002,15,'AR','Aragon',1),(15003,15,'AS','Asturias',1),(15004,15,'IB','Balearic Islands',1),(15005,15,'PV','Basque Country',1),(15006,15,'CN','Canary Islands',1),(15007,15,'CB','Cantabria',1),(15008,15,'CL','Castile and Leon',1),(15009,15,'CM','Castile-La Mancha',1),(15010,15,'CT','Catalonia',1),(15011,15,'CE','Ceuta',1),(15012,15,'EX','Extremadura',1),(15013,15,'GA','Galicia',1),(15014,15,'LO','La Rioja',1),(15015,15,'M','Madrid',1),(15016,15,'ML','Melilla',1),(15017,15,'MU','Murcia',1),(15018,15,'NA','Navarra',1),(15019,15,'VC','Valencia',1),(19001,19,'AL','Alabama',1),(19002,19,'AK','Alaska',1),(19003,19,'AZ','Arizona',1),(19004,19,'AR','Arkansas',1),(19005,19,'CA','California',1),(19006,19,'CO','Colorado',1),(19007,19,'CT','Connecticut',1),(19008,19,'DC','District of Columbia',1),(19009,19,'DE','Delaware',1),(19010,19,'FL','Florida',1),(19011,19,'GA','Georgia',1),(19012,19,'HI','Hawaii',1),(19013,19,'ID','Idaho',1),(19014,19,'IL','Illinois',1),(19015,19,'IN','Indiana',1),(19016,19,'IA','Iowa',1),(19017,19,'KS','Kansas',1),(19018,19,'KY','Kentucky ',1),(19019,19,'LA','Louisiana ',1),(19020,19,'ME','Maine',1),(19021,19,'MD','Maryland',1),(19022,19,'MA','Massachusetts',1),(19023,19,'MI','Michigan',1),(19024,19,'MN','Minnesota',1),(19025,19,'MS','Mississippi',1),(19026,19,'MO','Missouri',1),(19027,19,'MT','Montana',1),(19028,19,'NE','Nebraska',1),(19029,19,'NV','Nevada',1),(19030,19,'NH','New Hampshire',1),(19031,19,'NJ','New Jersey',1),(19032,19,'NM','New Mexico',1),(19033,19,'NY','New York',1),(19034,19,'NC','North Carolina',1),(19035,19,'ND','North Dakota',1),(19036,19,'OH','Ohio',1),(19037,19,'OK','Oklahoma ',1),(19038,19,'OR','Oregon',1),(19039,19,'PA','Pennsylvania',1),(19040,19,'PR','Puerto Rico',1),(19041,19,'RI','Rhode Island',1),(19042,19,'SC','South Carolina',1),(19043,19,'SD','South Dakota',1),(19044,19,'TN','Tennessee',1),(19045,19,'TX','Texas',1),(19046,19,'UT','Utah',1),(19047,19,'VT','Vermont',1),(19048,19,'VA','Virginia',1),(19049,19,'WA','Washington',1),(19050,19,'WV','West Virginia',1),(19051,19,'WI','Wisconsin',1),(19052,19,'WY','Wyoming',1),(32001,32,'ACT','Australian Capital Territory',1),(32002,32,'NSW','New South Wales',1),(32003,32,'NT','Northern Territory',1),(32004,32,'QLD','Queensland',1),(32005,32,'SA','South Australia',1),(32006,32,'TAS','Tasmania',1),(32007,32,'VIC','Victoria',1),(32008,32,'WA','Western Australia',1),(144001,144,'MX-AGS','Aguascalientes',1),(144002,144,'MX-BCN','Baja California',1),(144003,144,'MX-BCS','Baja California Sur',1),(144004,144,'MX-CAM','Campeche',1),(144005,144,'MX-CHP','Chiapas',1),(144006,144,'MX-CHI','Chihuahua',1),(144007,144,'MX-COA','Coahuila',1),(144008,144,'MX-COL','Colima',1),(144009,144,'MX-DUR','Durango',1),(144010,144,'MX-GTO','Guanajuato',1),(144011,144,'MX-GRO','Guerrero',1),(144012,144,'MX-HGO','Hidalgo',1),(144013,144,'MX-JAL','Jalisco',1),(144014,144,'MX-MEX','Mexico',1),(144015,144,'MX-MIC','Michoacan',1),(144016,144,'MX-MOR','Morelos',1),(144017,144,'MX-NAY','Nayarit',1),(144018,144,'MX-NLE','Nuevo Leon',1),(144019,144,'MX-OAX','Oaxaca',1),(144020,144,'MX-PUE','Puebla',1),(144021,144,'MX-QRO','Queretaro',1),(144023,144,'MX-ROO','Quintana Roo',1),(144024,144,'MX-SLP','San Luis PotosÃ­',1),(144025,144,'MX-SIN','Sinaloa',1),(144026,144,'MX-SON','Sonora',1),(144027,144,'MX-TAB','Tabasco',1),(144028,144,'MX-TAM','Tamaulipas',1),(144029,144,'MX-TLX','Tlaxcala',1),(144030,144,'MX-VER','Veracruz',1),(144031,144,'MX-YUC','Yucatan',1),(144032,144,'MX-ZAC','Zacatecas',1),(164001,164,'01','Ã˜stfold',1),(164002,164,'02','Akershus',1),(164003,164,'03','Oslo',1),(164004,164,'04','Hedmark',1),(164005,164,'05','Oppland',1),(164006,164,'06','Buskerud',1),(164007,164,'07','Vestfold',1),(164008,164,'08','Telemark',1),(164009,164,'09','Aust-Agder',1),(164010,164,'10','Vest-Agder',1),(164011,164,'11','Rogaland',1),(164012,164,'12','Hordaland',1),(164013,164,'14','Sogn og Fjordane',1),(164014,164,'15','MÃ¸re of Romsdal',1),(164015,164,'16','SÃ¸r-TrÃ¸ndelag',1),(164016,164,'17','Nord-TrÃ¸ndelag',1),(164017,164,'18','Nordland',1),(164018,164,'19','Troms',1),(164019,164,'20','Finnmark',1),(202001,202,'AG','Aargau',1),(202002,202,'AR','Appenzell Ausserrhoden',1),(202003,202,'AI','Appenzell Innerrhoden',1),(202004,202,'BL','Basel-Landschaft',1),(202005,202,'BS','Basel-Stadt',1),(202006,202,'BE','Bern',1),(202007,202,'FR','Fribourg',1),(202008,202,'GE','Geneva',1),(202009,202,'GL','Glarus',1),(202010,202,'GR','GraubÃ¼nden',1),(202011,202,'JU','Jura',1),(202012,202,'LU','Lucerne',1),(202013,202,'NE','NeuchÃ¢tel',1),(202014,202,'NW','Nidwalden',1),(202015,202,'OW','Obwalden',1),(202016,202,'SH','Schaffhausen',1),(202017,202,'SZ','Schwyz',1),(202018,202,'SO','Solothurn',1),(202019,202,'SG','St. Gallen',1),(202020,202,'TG','Thurgau',1),(202021,202,'TI','Ticino',1),(202022,202,'UR','Uri',1),(202023,202,'VS','Valais',1),(202024,202,'VD','Vaud',1),(202025,202,'ZG','Zug',1),(202026,202,'ZH','ZÃ¼rich',1);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_`
--

DROP TABLE IF EXISTS `release_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`),
  UNIQUE KEY `IX_8BD6BCA7` (`servletContextName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release_`
--

LOCK TABLES `release_` WRITE;
/*!40000 ALTER TABLE `release_` DISABLE KEYS */;
INSERT INTO `release_` VALUES (1,'2017-01-09 16:20:42','2018-02-27 10:04:59','portal',6205,'2016-01-06 00:00:00',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),(20447,'2017-01-09 16:27:26','2018-02-27 10:05:27','marketplace-portlet',100,NULL,1,0,''),(20455,'2017-01-09 16:27:33','2018-02-27 10:05:36','calendar-portlet',102,NULL,1,0,''),(20474,'2017-01-09 16:27:53','2018-02-27 10:05:31','kaleo-web',110,NULL,1,0,''),(20508,'2017-01-09 16:27:58','2018-02-27 10:05:31','sync-web',101,NULL,1,0,''),(20521,'2017-01-09 16:28:03','2018-02-27 10:05:39','notifications-portlet',110,NULL,1,0,'');
/*!40000 ALTER TABLE `release_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository`
--

DROP TABLE IF EXISTS `repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(200) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`),
  UNIQUE KEY `IX_60C8634C` (`groupId`,`name`,`portletId`),
  UNIQUE KEY `IX_11641E26` (`uuid_`,`groupId`),
  KEY `IX_5253B1FA` (`groupId`),
  KEY `IX_74C17B04` (`uuid_`),
  KEY `IX_F543EA4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository`
--

LOCK TABLES `repository` WRITE;
/*!40000 ALTER TABLE `repository` DISABLE KEYS */;
INSERT INTO `repository` VALUES ('129f9f43-0b6a-4559-bbe0-255479e1923d',22205,20199,20155,20159,'','2017-06-20 05:42:34','2017-06-20 05:42:34',22204,'20','','20','',22206);
/*!40000 ALTER TABLE `repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositoryentry`
--

DROP TABLE IF EXISTS `repositoryentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositoryentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`),
  UNIQUE KEY `IX_9BDCF489` (`repositoryId`,`mappedId`),
  UNIQUE KEY `IX_354AA664` (`uuid_`,`groupId`),
  KEY `IX_B7034B27` (`repositoryId`),
  KEY `IX_B9B1506` (`uuid_`),
  KEY `IX_D3B9AF62` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositoryentry`
--

LOCK TABLES `repositoryentry` WRITE;
/*!40000 ALTER TABLE `repositoryentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositoryentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceaction`
--

DROP TABLE IF EXISTS `resourceaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceaction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`),
  UNIQUE KEY `IX_EDB9986E` (`name`,`actionId`),
  KEY `IX_81F2DB09` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceaction`
--

LOCK TABLES `resourceaction` WRITE;
/*!40000 ALTER TABLE `resourceaction` DISABLE KEYS */;
INSERT INTO `resourceaction` VALUES (1,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),(2,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),(3,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),(4,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),(5,'com.liferay.portal.model.Team','DELETE',4),(6,'com.liferay.portal.model.Team','PERMISSIONS',8),(7,'com.liferay.portal.model.Team','UPDATE',16),(8,'com.liferay.portal.model.Team','VIEW',1),(9,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),(10,'com.liferay.portal.model.PasswordPolicy','DELETE',4),(11,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),(12,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),(13,'com.liferay.portal.model.PasswordPolicy','VIEW',1),(14,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),(15,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),(16,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),(17,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),(18,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),(19,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),(20,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),(21,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),(22,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),(23,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),(24,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),(25,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),(26,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),(27,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),(28,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),(29,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),(30,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),(31,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),(32,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),(33,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),(34,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),(35,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),(36,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),(37,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),(38,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),(39,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),(40,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),(41,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),(42,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),(43,'com.liferay.portlet.bookmarks','PERMISSIONS',8),(44,'com.liferay.portlet.bookmarks','SUBSCRIBE',16),(45,'com.liferay.portlet.bookmarks','VIEW',1),(46,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),(47,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),(48,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),(49,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),(50,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),(51,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),(52,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),(53,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),(54,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),(55,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),(56,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),(57,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),(58,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),(59,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),(60,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),(61,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),(62,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),(63,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),(64,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),(65,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),(66,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),(67,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),(68,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),(69,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),(70,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),(71,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),(72,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),(73,'com.liferay.portlet.documentlibrary','SUBSCRIBE',256),(74,'com.liferay.portlet.documentlibrary','UPDATE',512),(75,'com.liferay.portlet.documentlibrary','VIEW',1),(76,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),(77,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),(78,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),(79,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),(80,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),(81,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),(82,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),(83,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),(84,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),(85,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),(86,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),(87,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),(88,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),(89,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',2),(90,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',4),(91,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',8),(92,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),(93,'com.liferay.portlet.journal','ADD_ARTICLE',2),(94,'com.liferay.portlet.journal','ADD_FEED',4),(95,'com.liferay.portlet.journal','ADD_FOLDER',8),(96,'com.liferay.portlet.journal','ADD_STRUCTURE',16),(97,'com.liferay.portlet.journal','ADD_TEMPLATE',32),(98,'com.liferay.portlet.journal','SUBSCRIBE',64),(99,'com.liferay.portlet.journal','VIEW',1),(100,'com.liferay.portlet.journal','PERMISSIONS',128),(101,'com.liferay.portlet.calendar','ADD_EVENT',2),(102,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),(103,'com.liferay.portlet.calendar','PERMISSIONS',8),(104,'com.liferay.portal.model.LayoutPrototype','DELETE',2),(105,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),(106,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),(107,'com.liferay.portal.model.LayoutPrototype','VIEW',1),(108,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),(109,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),(110,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),(111,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),(112,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),(113,'com.liferay.portal.model.Organization','ADD_ORGANIZATION',2),(114,'com.liferay.portal.model.Organization','ASSIGN_MEMBERS',4),(115,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',8),(116,'com.liferay.portal.model.Organization','DELETE',16),(117,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',32),(118,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',64),(119,'com.liferay.portal.model.Organization','MANAGE_USERS',128),(120,'com.liferay.portal.model.Organization','PERMISSIONS',256),(121,'com.liferay.portal.model.Organization','UPDATE',512),(122,'com.liferay.portal.model.Organization','VIEW',1),(123,'com.liferay.portal.model.Organization','VIEW_MEMBERS',1024),(124,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),(125,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),(126,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),(127,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),(128,'com.liferay.portlet.journal.model.JournalFolder','ACCESS',2),(129,'com.liferay.portlet.journal.model.JournalFolder','ADD_ARTICLE',4),(130,'com.liferay.portlet.journal.model.JournalFolder','ADD_SUBFOLDER',8),(131,'com.liferay.portlet.journal.model.JournalFolder','DELETE',16),(132,'com.liferay.portlet.journal.model.JournalFolder','PERMISSIONS',32),(133,'com.liferay.portlet.journal.model.JournalFolder','UPDATE',64),(134,'com.liferay.portlet.journal.model.JournalFolder','VIEW',1),(135,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),(136,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),(137,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),(138,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),(139,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),(140,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),(141,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),(142,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),(143,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),(144,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),(145,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),(146,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),(147,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),(148,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),(149,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),(150,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),(151,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),(152,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),(153,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),(154,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),(155,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),(156,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),(157,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),(158,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),(159,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),(160,'com.liferay.portlet.bookmarks.model.BookmarksFolder','SUBSCRIBE',64),(161,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',128),(162,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),(163,'com.liferay.portal.model.Group','ADD_COMMUNITY',2),(164,'com.liferay.portal.model.Group','ADD_LAYOUT',4),(165,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',8),(166,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',16),(167,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',32),(168,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',64),(169,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',128),(170,'com.liferay.portal.model.Group','DELETE',256),(171,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',512),(172,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',1024),(173,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',2048),(174,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',4096),(175,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',8192),(176,'com.liferay.portal.model.Group','MANAGE_STAGING',16384),(177,'com.liferay.portal.model.Group','MANAGE_SUBGROUPS',32768),(178,'com.liferay.portal.model.Group','MANAGE_TEAMS',65536),(179,'com.liferay.portal.model.Group','PERMISSIONS',131072),(180,'com.liferay.portal.model.Group','PREVIEW_IN_DEVICE',262144),(181,'com.liferay.portal.model.Group','PUBLISH_STAGING',524288),(182,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',1048576),(183,'com.liferay.portal.model.Group','UPDATE',2097152),(184,'com.liferay.portal.model.Group','VIEW',1),(185,'com.liferay.portal.model.Group','VIEW_MEMBERS',4194304),(186,'com.liferay.portal.model.Group','VIEW_SITE_ADMINISTRATION',8388608),(187,'com.liferay.portal.model.Group','VIEW_STAGING',16777216),(188,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),(189,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),(190,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),(191,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),(192,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),(193,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),(194,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),(195,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),(196,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),(197,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),(198,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),(199,'com.liferay.portal.model.Layout','CUSTOMIZE',16),(200,'com.liferay.portal.model.Layout','DELETE',32),(201,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),(202,'com.liferay.portal.model.Layout','PERMISSIONS',128),(203,'com.liferay.portal.model.Layout','UPDATE',256),(204,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),(205,'com.liferay.portal.model.Layout','VIEW',1),(206,'com.liferay.portlet.asset','ADD_TAG',2),(207,'com.liferay.portlet.asset','PERMISSIONS',4),(208,'com.liferay.portlet.asset','ADD_CATEGORY',8),(209,'com.liferay.portlet.asset','ADD_VOCABULARY',16),(210,'com.liferay.portal.model.LayoutBranch','DELETE',2),(211,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),(212,'com.liferay.portal.model.LayoutBranch','UPDATE',8),(213,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),(214,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),(215,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),(216,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),(217,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),(218,'com.liferay.portlet.messageboards','ADD_FILE',4),(219,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),(220,'com.liferay.portlet.messageboards','BAN_USER',16),(221,'com.liferay.portlet.messageboards','MOVE_THREAD',32),(222,'com.liferay.portlet.messageboards','LOCK_THREAD',64),(223,'com.liferay.portlet.messageboards','PERMISSIONS',128),(224,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),(225,'com.liferay.portlet.messageboards','SUBSCRIBE',512),(226,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),(227,'com.liferay.portlet.messageboards','VIEW',1),(228,'com.liferay.portlet.polls','ADD_QUESTION',2),(229,'com.liferay.portlet.polls','PERMISSIONS',4),(230,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),(231,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),(232,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),(233,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),(234,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),(235,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),(236,'com.liferay.portlet.bookmarks.model.BookmarksEntry','SUBSCRIBE',8),(237,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',16),(238,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),(239,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),(240,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),(241,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),(242,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),(243,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),(244,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),(245,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),(246,'com.liferay.portal.model.User','DELETE',2),(247,'com.liferay.portal.model.User','IMPERSONATE',4),(248,'com.liferay.portal.model.User','PERMISSIONS',8),(249,'com.liferay.portal.model.User','UPDATE',16),(250,'com.liferay.portal.model.User','VIEW',1),(251,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),(252,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),(253,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),(254,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),(255,'com.liferay.portlet.shopping','ADD_CATEGORY',2),(256,'com.liferay.portlet.shopping','ADD_ITEM',4),(257,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),(258,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),(259,'com.liferay.portlet.shopping','PERMISSIONS',32),(260,'com.liferay.portlet.shopping','VIEW',1),(261,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),(262,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),(263,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),(264,'com.liferay.portlet.wiki','ADD_NODE',2),(265,'com.liferay.portlet.wiki','PERMISSIONS',4),(266,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),(267,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),(268,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),(269,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),(270,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),(271,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),(272,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),(273,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),(274,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),(275,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),(276,'com.liferay.portal.model.UserGroup','DELETE',4),(277,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),(278,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),(279,'com.liferay.portal.model.UserGroup','UPDATE',32),(280,'com.liferay.portal.model.UserGroup','VIEW',1),(281,'com.liferay.portal.model.UserGroup','VIEW_MEMBERS',64),(282,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),(283,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),(284,'com.liferay.portal.model.Role','DELETE',8),(285,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),(286,'com.liferay.portal.model.Role','PERMISSIONS',32),(287,'com.liferay.portal.model.Role','UPDATE',64),(288,'com.liferay.portal.model.Role','VIEW',1),(289,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),(290,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),(291,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),(292,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),(293,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),(294,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),(295,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),(296,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),(297,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),(298,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),(299,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),(300,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),(301,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),(302,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),(303,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),(304,'com.liferay.portlet.mobiledevicerules','VIEW',1),(305,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),(306,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),(307,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),(308,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),(309,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),(310,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),(311,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),(312,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),(313,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),(314,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),(315,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),(316,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),(317,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),(318,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),(319,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),(320,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),(321,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),(322,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),(323,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),(324,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),(325,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),(326,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),(327,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),(328,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),(329,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),(330,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),(331,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),(332,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),(333,'com.liferay.portlet.messageboards.model.MBThread','VIEW',1),(334,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),(335,'com.liferay.portlet.blogs','ADD_ENTRY',2),(336,'com.liferay.portlet.blogs','PERMISSIONS',4),(337,'com.liferay.portlet.blogs','SUBSCRIBE',8),(338,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),(339,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),(340,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),(341,'com.liferay.portlet.documentlibrary.model.DLFileEntry','OVERRIDE_CHECKOUT',16),(342,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',32),(343,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',64),(344,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',128),(345,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),(346,'134','ACCESS_IN_CONTROL_PANEL',2),(347,'134','CONFIGURATION',4),(348,'134','VIEW',1),(349,'134','PERMISSIONS',8),(350,'134','PREFERENCES',16),(351,'59','ADD_TO_PAGE',2),(352,'59','CONFIGURATION',4),(353,'59','PERMISSIONS',8),(354,'59','PREFERENCES',16),(355,'59','VIEW',1),(356,'139','ACCESS_IN_CONTROL_PANEL',2),(357,'139','ADD_EXPANDO',4),(358,'139','CONFIGURATION',8),(359,'139','VIEW',1),(360,'139','PERMISSIONS',16),(361,'139','PREFERENCES',32),(362,'19','ADD_TO_PAGE',2),(363,'19','CONFIGURATION',4),(364,'19','VIEW',1),(365,'19','PERMISSIONS',8),(366,'19','PREFERENCES',16),(367,'110','ADD_TO_PAGE',2),(368,'110','CONFIGURATION',4),(369,'110','PERMISSIONS',8),(370,'110','PREFERENCES',16),(371,'110','VIEW',1),(372,'36','ADD_PORTLET_DISPLAY_TEMPLATE',2),(373,'36','ADD_TO_PAGE',4),(374,'36','CONFIGURATION',8),(375,'36','VIEW',1),(376,'36','PERMISSIONS',16),(377,'36','PREFERENCES',32),(378,'178','CONFIGURATION',2),(379,'178','VIEW',1),(380,'178','ADD_TO_PAGE',4),(381,'178','PERMISSIONS',8),(382,'178','PREFERENCES',16),(383,'15','ACCESS_IN_CONTROL_PANEL',2),(384,'15','ADD_TO_PAGE',4),(385,'15','CONFIGURATION',8),(386,'15','VIEW',1),(387,'15','PERMISSIONS',16),(388,'15','PREFERENCES',32),(389,'33','ADD_PORTLET_DISPLAY_TEMPLATE',2),(390,'33','ADD_TO_PAGE',4),(391,'33','CONFIGURATION',8),(392,'33','VIEW',1),(393,'33','PERMISSIONS',16),(394,'33','PREFERENCES',32),(395,'34','ADD_TO_PAGE',2),(396,'34','CONFIGURATION',4),(397,'34','VIEW',1),(398,'34','PERMISSIONS',8),(399,'34','PREFERENCES',16),(400,'156','ADD_TO_PAGE',2),(401,'156','CONFIGURATION',4),(402,'156','PERMISSIONS',8),(403,'156','PREFERENCES',16),(404,'156','VIEW',1),(405,'154','ACCESS_IN_CONTROL_PANEL',2),(406,'154','CONFIGURATION',4),(407,'154','VIEW',1),(408,'154','PERMISSIONS',8),(409,'154','PREFERENCES',16),(410,'20','ACCESS_IN_CONTROL_PANEL',2),(411,'20','ADD_PORTLET_DISPLAY_TEMPLATE',4),(412,'20','ADD_TO_PAGE',8),(413,'20','CONFIGURATION',16),(414,'20','VIEW',1),(415,'20','PERMISSIONS',32),(416,'20','PREFERENCES',64),(417,'174','ADD_TO_PAGE',2),(418,'174','CONFIGURATION',4),(419,'174','PERMISSIONS',8),(420,'174','PREFERENCES',16),(421,'174','VIEW',1),(422,'83','ADD_ENTRY',2),(423,'83','ADD_TO_PAGE',4),(424,'83','CONFIGURATION',8),(425,'83','VIEW',1),(426,'83','PERMISSIONS',16),(427,'83','PREFERENCES',32),(428,'99','ACCESS_IN_CONTROL_PANEL',2),(429,'99','CONFIGURATION',4),(430,'99','VIEW',1),(431,'99','PERMISSIONS',8),(432,'99','PREFERENCES',16),(433,'84','ADD_ENTRY',2),(434,'84','ADD_TO_PAGE',4),(435,'84','CONFIGURATION',8),(436,'84','VIEW',1),(437,'84','PERMISSIONS',16),(438,'84','PREFERENCES',32),(439,'98','ACCESS_IN_CONTROL_PANEL',2),(440,'98','ADD_TO_PAGE',4),(441,'98','CONFIGURATION',8),(442,'98','VIEW',1),(443,'98','PERMISSIONS',16),(444,'98','PREFERENCES',32),(445,'125','ACCESS_IN_CONTROL_PANEL',2),(446,'125','CONFIGURATION',4),(447,'125','EXPORT_USER',8),(448,'125','VIEW',1),(449,'125','PERMISSIONS',16),(450,'125','PREFERENCES',32),(451,'127','ADD_TO_PAGE',2),(452,'127','CONFIGURATION',4),(453,'127','PERMISSIONS',8),(454,'127','PREFERENCES',16),(455,'127','VIEW',1),(456,'128','ACCESS_IN_CONTROL_PANEL',2),(457,'128','CONFIGURATION',4),(458,'128','VIEW',1),(459,'128','PERMISSIONS',8),(460,'128','PREFERENCES',16),(461,'146','ACCESS_IN_CONTROL_PANEL',2),(462,'146','CONFIGURATION',4),(463,'146','VIEW',1),(464,'146','PERMISSIONS',8),(465,'146','PREFERENCES',16),(466,'147','ACCESS_IN_CONTROL_PANEL',2),(467,'147','CONFIGURATION',4),(468,'147','VIEW',1),(469,'147','PERMISSIONS',8),(470,'147','PREFERENCES',16),(471,'149','ACCESS_IN_CONTROL_PANEL',2),(472,'149','CONFIGURATION',4),(473,'149','VIEW',1),(474,'149','PERMISSIONS',8),(475,'149','PREFERENCES',16),(476,'169','ADD_TO_PAGE',2),(477,'169','CONFIGURATION',4),(478,'169','PERMISSIONS',8),(479,'169','PREFERENCES',16),(480,'169','VIEW',1),(481,'25','ACCESS_IN_CONTROL_PANEL',2),(482,'25','CONFIGURATION',4),(483,'25','VIEW',1),(484,'25','PERMISSIONS',8),(485,'25','PREFERENCES',16),(486,'129','ACCESS_IN_CONTROL_PANEL',2),(487,'129','CONFIGURATION',4),(488,'129','VIEW',1),(489,'129','PERMISSIONS',8),(490,'129','PREFERENCES',16),(491,'166','ACCESS_IN_CONTROL_PANEL',2),(492,'166','ADD_TO_PAGE',4),(493,'166','CONFIGURATION',8),(494,'166','VIEW',1),(495,'166','PERMISSIONS',16),(496,'166','PREFERENCES',32),(497,'165','ADD_TO_PAGE',2),(498,'165','CONFIGURATION',4),(499,'165','PERMISSIONS',8),(500,'165','PREFERENCES',16),(501,'165','VIEW',1),(502,'28','ACCESS_IN_CONTROL_PANEL',2),(503,'28','ADD_TO_PAGE',4),(504,'28','CONFIGURATION',8),(505,'28','VIEW',1),(506,'28','PERMISSIONS',16),(507,'28','PREFERENCES',32),(508,'167','ACCESS_IN_CONTROL_PANEL',2),(509,'167','ADD_TO_PAGE',4),(510,'167','CONFIGURATION',8),(511,'167','VIEW',1),(512,'167','PERMISSIONS',16),(513,'167','PREFERENCES',32),(514,'161','ACCESS_IN_CONTROL_PANEL',2),(515,'161','CONFIGURATION',4),(516,'161','VIEW',1),(517,'161','PERMISSIONS',8),(518,'161','PREFERENCES',16),(519,'162','ACCESS_IN_CONTROL_PANEL',2),(520,'162','CONFIGURATION',4),(521,'162','VIEW',1),(522,'162','PERMISSIONS',8),(523,'162','PREFERENCES',16),(524,'31','ADD_TO_PAGE',2),(525,'31','CONFIGURATION',4),(526,'31','PERMISSIONS',8),(527,'31','PREFERENCES',16),(528,'31','VIEW',1),(529,'8','ACCESS_IN_CONTROL_PANEL',2),(530,'8','ADD_TO_PAGE',4),(531,'8','CONFIGURATION',8),(532,'8','VIEW',1),(533,'8','PERMISSIONS',16),(534,'8','PREFERENCES',32),(535,'183','VIEW',1),(536,'183','ADD_TO_PAGE',2),(537,'183','CONFIGURATION',4),(538,'183','PERMISSIONS',8),(539,'183','PREFERENCES',16),(540,'183','ACCESS_IN_CONTROL_PANEL',32),(541,'66','VIEW',1),(542,'66','ADD_TO_PAGE',2),(543,'66','CONFIGURATION',4),(544,'66','PERMISSIONS',8),(545,'66','PREFERENCES',16),(546,'66','ACCESS_IN_CONTROL_PANEL',32),(547,'156','ACCESS_IN_CONTROL_PANEL',32),(548,'180','VIEW',1),(549,'180','ADD_TO_PAGE',2),(550,'180','CONFIGURATION',4),(551,'180','PERMISSIONS',8),(552,'180','PREFERENCES',16),(553,'180','ACCESS_IN_CONTROL_PANEL',32),(554,'152','ACCESS_IN_CONTROL_PANEL',2),(555,'152','CONFIGURATION',4),(556,'152','VIEW',1),(557,'152','PERMISSIONS',8),(558,'152','PREFERENCES',16),(559,'27','VIEW',1),(560,'27','ADD_TO_PAGE',2),(561,'27','CONFIGURATION',4),(562,'27','PERMISSIONS',8),(563,'27','PREFERENCES',16),(564,'27','ACCESS_IN_CONTROL_PANEL',32),(565,'88','VIEW',1),(566,'88','ADD_TO_PAGE',2),(567,'88','CONFIGURATION',4),(568,'88','PERMISSIONS',8),(569,'88','PREFERENCES',16),(570,'88','ACCESS_IN_CONTROL_PANEL',32),(571,'130','ACCESS_IN_CONTROL_PANEL',2),(572,'130','CONFIGURATION',4),(573,'130','VIEW',1),(574,'130','PERMISSIONS',8),(575,'130','PREFERENCES',16),(576,'122','ADD_PORTLET_DISPLAY_TEMPLATE',2),(577,'122','CONFIGURATION',4),(578,'122','VIEW',1),(579,'122','ADD_TO_PAGE',8),(580,'122','PERMISSIONS',16),(581,'122','PREFERENCES',32),(582,'122','ACCESS_IN_CONTROL_PANEL',64),(583,'36','ACCESS_IN_CONTROL_PANEL',64),(584,'26','VIEW',1),(585,'26','ADD_TO_PAGE',2),(586,'26','CONFIGURATION',4),(587,'26','PERMISSIONS',8),(588,'26','PREFERENCES',16),(589,'26','ACCESS_IN_CONTROL_PANEL',32),(590,'190','VIEW',1),(591,'190','ADD_TO_PAGE',2),(592,'190','CONFIGURATION',4),(593,'190','PERMISSIONS',8),(594,'190','PREFERENCES',16),(595,'190','ACCESS_IN_CONTROL_PANEL',32),(596,'175','VIEW',1),(597,'175','ADD_TO_PAGE',2),(598,'175','CONFIGURATION',4),(599,'175','PERMISSIONS',8),(600,'175','PREFERENCES',16),(601,'175','ACCESS_IN_CONTROL_PANEL',32),(602,'64','VIEW',1),(603,'64','ADD_TO_PAGE',2),(604,'64','CONFIGURATION',4),(605,'64','PERMISSIONS',8),(606,'64','PREFERENCES',16),(607,'64','ACCESS_IN_CONTROL_PANEL',32),(608,'153','ACCESS_IN_CONTROL_PANEL',2),(609,'153','ADD_TO_PAGE',4),(610,'153','CONFIGURATION',8),(611,'153','VIEW',1),(612,'153','PERMISSIONS',16),(613,'153','PREFERENCES',32),(614,'182','VIEW',1),(615,'182','ADD_TO_PAGE',2),(616,'182','CONFIGURATION',4),(617,'182','PERMISSIONS',8),(618,'182','PREFERENCES',16),(619,'182','ACCESS_IN_CONTROL_PANEL',32),(620,'179','ACCESS_IN_CONTROL_PANEL',2),(621,'179','CONFIGURATION',4),(622,'179','VIEW',1),(623,'179','PERMISSIONS',8),(624,'179','PREFERENCES',16),(625,'173','VIEW',1),(626,'173','ADD_TO_PAGE',2),(627,'173','CONFIGURATION',4),(628,'173','PERMISSIONS',8),(629,'173','PREFERENCES',16),(630,'173','ACCESS_IN_CONTROL_PANEL',32),(631,'100','VIEW',1),(632,'100','ADD_TO_PAGE',2),(633,'100','CONFIGURATION',4),(634,'100','PERMISSIONS',8),(635,'100','PREFERENCES',16),(636,'100','ACCESS_IN_CONTROL_PANEL',32),(637,'157','ACCESS_IN_CONTROL_PANEL',2),(638,'157','CONFIGURATION',4),(639,'157','VIEW',1),(640,'157','PERMISSIONS',8),(641,'157','PREFERENCES',16),(642,'19','ACCESS_IN_CONTROL_PANEL',32),(643,'160','VIEW',1),(644,'160','ADD_TO_PAGE',2),(645,'160','CONFIGURATION',4),(646,'160','PERMISSIONS',8),(647,'160','PREFERENCES',16),(648,'160','ACCESS_IN_CONTROL_PANEL',32),(649,'181','VIEW',1),(650,'181','ADD_TO_PAGE',2),(651,'181','CONFIGURATION',4),(652,'181','PERMISSIONS',8),(653,'181','PREFERENCES',16),(654,'181','ACCESS_IN_CONTROL_PANEL',32),(655,'86','VIEW',1),(656,'86','ADD_TO_PAGE',2),(657,'86','CONFIGURATION',4),(658,'86','PERMISSIONS',8),(659,'86','PREFERENCES',16),(660,'86','ACCESS_IN_CONTROL_PANEL',32),(661,'148','VIEW',1),(662,'148','ADD_TO_PAGE',2),(663,'148','CONFIGURATION',4),(664,'148','PERMISSIONS',8),(665,'148','PREFERENCES',16),(666,'148','ACCESS_IN_CONTROL_PANEL',32),(667,'11','ADD_TO_PAGE',2),(668,'11','CONFIGURATION',4),(669,'11','VIEW',1),(670,'11','PERMISSIONS',8),(671,'11','PREFERENCES',16),(672,'11','ACCESS_IN_CONTROL_PANEL',32),(673,'29','ADD_TO_PAGE',2),(674,'29','CONFIGURATION',4),(675,'29','VIEW',1),(676,'29','PERMISSIONS',8),(677,'29','PREFERENCES',16),(678,'29','ACCESS_IN_CONTROL_PANEL',32),(679,'174','ACCESS_IN_CONTROL_PANEL',32),(680,'158','ACCESS_IN_CONTROL_PANEL',2),(681,'158','ADD_TO_PAGE',4),(682,'158','CONFIGURATION',8),(683,'158','VIEW',1),(684,'158','PERMISSIONS',16),(685,'158','PREFERENCES',32),(686,'178','ACCESS_IN_CONTROL_PANEL',32),(687,'124','VIEW',1),(688,'124','ADD_TO_PAGE',2),(689,'124','CONFIGURATION',4),(690,'124','PERMISSIONS',8),(691,'124','PREFERENCES',16),(692,'124','ACCESS_IN_CONTROL_PANEL',32),(693,'58','ADD_TO_PAGE',2),(694,'58','CONFIGURATION',4),(695,'58','VIEW',1),(696,'58','PERMISSIONS',8),(697,'58','PREFERENCES',16),(698,'58','ACCESS_IN_CONTROL_PANEL',32),(699,'97','VIEW',1),(700,'97','ADD_TO_PAGE',2),(701,'97','CONFIGURATION',4),(702,'97','PERMISSIONS',8),(703,'97','PREFERENCES',16),(704,'97','ACCESS_IN_CONTROL_PANEL',32),(705,'71','ADD_TO_PAGE',2),(706,'71','CONFIGURATION',4),(707,'71','VIEW',1),(708,'71','PERMISSIONS',8),(709,'71','PREFERENCES',16),(710,'71','ACCESS_IN_CONTROL_PANEL',32),(711,'39','VIEW',1),(712,'39','ADD_TO_PAGE',2),(713,'39','CONFIGURATION',4),(714,'39','PERMISSIONS',8),(715,'39','PREFERENCES',16),(716,'39','ACCESS_IN_CONTROL_PANEL',32),(717,'185','VIEW',1),(718,'185','ADD_TO_PAGE',2),(719,'185','CONFIGURATION',4),(720,'185','PERMISSIONS',8),(721,'185','PREFERENCES',16),(722,'185','ACCESS_IN_CONTROL_PANEL',32),(723,'170','VIEW',1),(724,'170','ADD_TO_PAGE',2),(725,'170','CONFIGURATION',4),(726,'170','PERMISSIONS',8),(727,'170','PREFERENCES',16),(728,'170','ACCESS_IN_CONTROL_PANEL',32),(729,'85','ADD_TO_PAGE',2),(730,'85','CONFIGURATION',4),(731,'85','VIEW',1),(732,'85','PERMISSIONS',8),(733,'85','PREFERENCES',16),(734,'85','ADD_PORTLET_DISPLAY_TEMPLATE',32),(735,'85','ACCESS_IN_CONTROL_PANEL',64),(736,'118','VIEW',1),(737,'118','ADD_TO_PAGE',2),(738,'118','CONFIGURATION',4),(739,'118','PERMISSIONS',8),(740,'118','PREFERENCES',16),(741,'118','ACCESS_IN_CONTROL_PANEL',32),(742,'107','VIEW',1),(743,'107','ADD_TO_PAGE',2),(744,'107','CONFIGURATION',4),(745,'107','PERMISSIONS',8),(746,'107','PREFERENCES',16),(747,'107','ACCESS_IN_CONTROL_PANEL',32),(748,'30','VIEW',1),(749,'30','ADD_TO_PAGE',2),(750,'30','CONFIGURATION',4),(751,'30','PERMISSIONS',8),(752,'30','PREFERENCES',16),(753,'30','ACCESS_IN_CONTROL_PANEL',32),(754,'184','ADD_TO_PAGE',2),(755,'184','CONFIGURATION',4),(756,'184','VIEW',1),(757,'184','PERMISSIONS',8),(758,'184','PREFERENCES',16),(759,'184','ACCESS_IN_CONTROL_PANEL',32),(760,'48','VIEW',1),(761,'48','ADD_TO_PAGE',2),(762,'48','CONFIGURATION',4),(763,'48','PERMISSIONS',8),(764,'48','PREFERENCES',16),(765,'48','ACCESS_IN_CONTROL_PANEL',32),(766,'62','VIEW',1),(767,'62','ADD_TO_PAGE',2),(768,'62','CONFIGURATION',4),(769,'62','PERMISSIONS',8),(770,'62','PREFERENCES',16),(771,'62','ACCESS_IN_CONTROL_PANEL',32),(772,'176','VIEW',1),(773,'176','ADD_TO_PAGE',2),(774,'176','CONFIGURATION',4),(775,'176','PERMISSIONS',8),(776,'176','PREFERENCES',16),(777,'176','ACCESS_IN_CONTROL_PANEL',32),(778,'172','VIEW',1),(779,'172','ADD_TO_PAGE',2),(780,'172','CONFIGURATION',4),(781,'172','PERMISSIONS',8),(782,'172','PREFERENCES',16),(783,'172','ACCESS_IN_CONTROL_PANEL',32),(784,'187','ADD_TO_PAGE',2),(785,'187','CONFIGURATION',4),(786,'187','VIEW',1),(787,'187','PERMISSIONS',8),(788,'187','PREFERENCES',16),(789,'187','ACCESS_IN_CONTROL_PANEL',32),(790,'108','VIEW',1),(791,'108','ADD_TO_PAGE',2),(792,'108','CONFIGURATION',4),(793,'108','PERMISSIONS',8),(794,'108','PREFERENCES',16),(795,'108','ACCESS_IN_CONTROL_PANEL',32),(796,'84','ACCESS_IN_CONTROL_PANEL',64),(797,'101','ADD_PORTLET_DISPLAY_TEMPLATE',2),(798,'101','ADD_TO_PAGE',4),(799,'101','CONFIGURATION',8),(800,'101','SUBSCRIBE',16),(801,'101','VIEW',1),(802,'101','PERMISSIONS',32),(803,'101','PREFERENCES',64),(804,'101','ACCESS_IN_CONTROL_PANEL',128),(805,'121','VIEW',1),(806,'121','ADD_TO_PAGE',2),(807,'121','CONFIGURATION',4),(808,'121','PERMISSIONS',8),(809,'121','PREFERENCES',16),(810,'121','ACCESS_IN_CONTROL_PANEL',32),(811,'49','VIEW',1),(812,'49','ADD_TO_PAGE',2),(813,'49','CONFIGURATION',4),(814,'49','PERMISSIONS',8),(815,'49','PREFERENCES',16),(816,'49','ACCESS_IN_CONTROL_PANEL',32),(817,'143','VIEW',1),(818,'143','ADD_TO_PAGE',2),(819,'143','CONFIGURATION',4),(820,'143','PERMISSIONS',8),(821,'143','PREFERENCES',16),(822,'143','ACCESS_IN_CONTROL_PANEL',32),(823,'77','VIEW',1),(824,'77','ADD_TO_PAGE',2),(825,'77','CONFIGURATION',4),(826,'77','PERMISSIONS',8),(827,'77','PREFERENCES',16),(828,'77','ACCESS_IN_CONTROL_PANEL',32),(829,'115','VIEW',1),(830,'115','ADD_TO_PAGE',2),(831,'115','CONFIGURATION',4),(832,'115','PERMISSIONS',8),(833,'115','PREFERENCES',16),(834,'115','ACCESS_IN_CONTROL_PANEL',32),(835,'56','ADD_TO_PAGE',2),(836,'56','CONFIGURATION',4),(837,'56','VIEW',1),(838,'56','PERMISSIONS',8),(839,'56','PREFERENCES',16),(840,'56','ACCESS_IN_CONTROL_PANEL',32),(841,'142','VIEW',1),(842,'142','ADD_TO_PAGE',2),(843,'142','CONFIGURATION',4),(844,'142','PERMISSIONS',8),(845,'142','PREFERENCES',16),(846,'142','ACCESS_IN_CONTROL_PANEL',32),(847,'16','PREFERENCES',2),(848,'16','GUEST_PREFERENCES',4),(849,'16','VIEW',1),(850,'16','ADD_TO_PAGE',8),(851,'16','CONFIGURATION',16),(852,'16','PERMISSIONS',32),(853,'16','ACCESS_IN_CONTROL_PANEL',64),(854,'3','VIEW',1),(855,'3','ADD_TO_PAGE',2),(856,'3','CONFIGURATION',4),(857,'3','PERMISSIONS',8),(858,'3','PREFERENCES',16),(859,'3','ACCESS_IN_CONTROL_PANEL',32),(860,'23','VIEW',1),(861,'23','ADD_TO_PAGE',2),(862,'23','CONFIGURATION',4),(863,'23','PERMISSIONS',8),(864,'23','PREFERENCES',16),(865,'23','ACCESS_IN_CONTROL_PANEL',32),(866,'145','VIEW',1),(867,'145','ADD_TO_PAGE',2),(868,'145','CONFIGURATION',4),(869,'145','PERMISSIONS',8),(870,'145','PREFERENCES',16),(871,'145','ACCESS_IN_CONTROL_PANEL',32),(872,'83','ACCESS_IN_CONTROL_PANEL',64),(873,'194','VIEW',1),(874,'194','ADD_TO_PAGE',2),(875,'194','CONFIGURATION',4),(876,'194','PERMISSIONS',8),(877,'194','PREFERENCES',16),(878,'194','ACCESS_IN_CONTROL_PANEL',32),(879,'186','ADD_TO_PAGE',2),(880,'186','CONFIGURATION',4),(881,'186','VIEW',1),(882,'186','PERMISSIONS',8),(883,'186','PREFERENCES',16),(884,'186','ACCESS_IN_CONTROL_PANEL',32),(885,'164','VIEW',1),(886,'164','ADD_TO_PAGE',2),(887,'164','CONFIGURATION',4),(888,'164','PERMISSIONS',8),(889,'164','PREFERENCES',16),(890,'164','ACCESS_IN_CONTROL_PANEL',32),(891,'70','VIEW',1),(892,'70','ADD_TO_PAGE',2),(893,'70','CONFIGURATION',4),(894,'70','PERMISSIONS',8),(895,'70','PREFERENCES',16),(896,'70','ACCESS_IN_CONTROL_PANEL',32),(897,'141','ADD_PORTLET_DISPLAY_TEMPLATE',2),(898,'141','CONFIGURATION',4),(899,'141','VIEW',1),(900,'141','ADD_TO_PAGE',8),(901,'141','PERMISSIONS',16),(902,'141','PREFERENCES',32),(903,'141','ACCESS_IN_CONTROL_PANEL',64),(904,'9','VIEW',1),(905,'9','ADD_TO_PAGE',2),(906,'9','CONFIGURATION',4),(907,'9','PERMISSIONS',8),(908,'9','PREFERENCES',16),(909,'9','ACCESS_IN_CONTROL_PANEL',32),(910,'137','ACCESS_IN_CONTROL_PANEL',2),(911,'137','CONFIGURATION',4),(912,'137','VIEW',1),(913,'137','PERMISSIONS',8),(914,'137','PREFERENCES',16),(915,'133','VIEW',1),(916,'133','ADD_TO_PAGE',2),(917,'133','CONFIGURATION',4),(918,'133','PERMISSIONS',8),(919,'133','PREFERENCES',16),(920,'133','ACCESS_IN_CONTROL_PANEL',32),(921,'116','VIEW',1),(922,'116','ADD_TO_PAGE',2),(923,'116','CONFIGURATION',4),(924,'116','PERMISSIONS',8),(925,'116','PREFERENCES',16),(926,'116','ACCESS_IN_CONTROL_PANEL',32),(927,'47','VIEW',1),(928,'47','ADD_TO_PAGE',2),(929,'47','CONFIGURATION',4),(930,'47','PERMISSIONS',8),(931,'47','PREFERENCES',16),(932,'47','ACCESS_IN_CONTROL_PANEL',32),(933,'82','VIEW',1),(934,'82','ADD_TO_PAGE',2),(935,'82','CONFIGURATION',4),(936,'82','PERMISSIONS',8),(937,'82','PREFERENCES',16),(938,'82','ACCESS_IN_CONTROL_PANEL',32),(939,'103','VIEW',1),(940,'103','ADD_TO_PAGE',2),(941,'103','CONFIGURATION',4),(942,'103','PERMISSIONS',8),(943,'103','PREFERENCES',16),(944,'103','ACCESS_IN_CONTROL_PANEL',32),(945,'151','ACCESS_IN_CONTROL_PANEL',2),(946,'151','CONFIGURATION',4),(947,'151','VIEW',1),(948,'151','PERMISSIONS',8),(949,'151','PREFERENCES',16),(950,'140','ACCESS_IN_CONTROL_PANEL',2),(951,'140','CONFIGURATION',4),(952,'140','VIEW',1),(953,'140','PERMISSIONS',8),(954,'140','PREFERENCES',16),(955,'54','VIEW',1),(956,'54','ADD_TO_PAGE',2),(957,'54','CONFIGURATION',4),(958,'54','PERMISSIONS',8),(959,'54','PREFERENCES',16),(960,'54','ACCESS_IN_CONTROL_PANEL',32),(961,'169','ACCESS_IN_CONTROL_PANEL',32),(962,'132','ACCESS_IN_CONTROL_PANEL',2),(963,'132','CONFIGURATION',4),(964,'132','VIEW',1),(965,'132','PERMISSIONS',8),(966,'132','PREFERENCES',16),(967,'34','ACCESS_IN_CONTROL_PANEL',32),(968,'61','VIEW',1),(969,'61','ADD_TO_PAGE',2),(970,'61','CONFIGURATION',4),(971,'61','PERMISSIONS',8),(972,'61','PREFERENCES',16),(973,'61','ACCESS_IN_CONTROL_PANEL',32),(974,'73','ADD_TO_PAGE',2),(975,'73','CONFIGURATION',4),(976,'73','VIEW',1),(977,'73','PERMISSIONS',8),(978,'73','PREFERENCES',16),(979,'73','ACCESS_IN_CONTROL_PANEL',32),(980,'193','VIEW',1),(981,'193','ADD_TO_PAGE',2),(982,'193','CONFIGURATION',4),(983,'193','PERMISSIONS',8),(984,'193','PREFERENCES',16),(985,'193','ACCESS_IN_CONTROL_PANEL',32),(986,'127','ACCESS_IN_CONTROL_PANEL',32),(987,'50','VIEW',1),(988,'50','ADD_TO_PAGE',2),(989,'50','CONFIGURATION',4),(990,'50','PERMISSIONS',8),(991,'50','PREFERENCES',16),(992,'50','ACCESS_IN_CONTROL_PANEL',32),(993,'31','ACCESS_IN_CONTROL_PANEL',32),(994,'165','ACCESS_IN_CONTROL_PANEL',32),(995,'192','VIEW',1),(996,'192','ADD_TO_PAGE',2),(997,'192','CONFIGURATION',4),(998,'192','PERMISSIONS',8),(999,'192','PREFERENCES',16),(1000,'192','ACCESS_IN_CONTROL_PANEL',32),(1001,'90','ADD_COMMUNITY',2),(1002,'90','ADD_GENERAL_ANNOUNCEMENTS',4),(1003,'90','ADD_LAYOUT_PROTOTYPE',8),(1004,'90','ADD_LAYOUT_SET_PROTOTYPE',16),(1005,'90','ADD_LICENSE',32),(1006,'90','ADD_ORGANIZATION',64),(1007,'90','ADD_PASSWORD_POLICY',128),(1008,'90','ADD_ROLE',256),(1009,'90','ADD_USER',512),(1010,'90','ADD_USER_GROUP',1024),(1011,'90','CONFIGURATION',2048),(1012,'90','EXPORT_USER',4096),(1013,'90','IMPERSONATE',8192),(1014,'90','UNLINK_LAYOUT_SET_PROTOTYPE',16384),(1015,'90','VIEW_CONTROL_PANEL',32768),(1016,'90','ADD_TO_PAGE',65536),(1017,'90','PERMISSIONS',131072),(1018,'90','PREFERENCES',262144),(1019,'90','VIEW',1),(1020,'90','ACCESS_IN_CONTROL_PANEL',524288),(1021,'150','ACCESS_IN_CONTROL_PANEL',2),(1022,'150','CONFIGURATION',4),(1023,'150','VIEW',1),(1024,'150','PERMISSIONS',8),(1025,'150','PREFERENCES',16),(1026,'113','VIEW',1),(1027,'113','ADD_TO_PAGE',2),(1028,'113','CONFIGURATION',4),(1029,'113','PERMISSIONS',8),(1030,'113','PREFERENCES',16),(1031,'113','ACCESS_IN_CONTROL_PANEL',32),(1032,'33','ACCESS_IN_CONTROL_PANEL',64),(1033,'2','ACCESS_IN_CONTROL_PANEL',2),(1034,'2','CONFIGURATION',4),(1035,'2','VIEW',1),(1036,'2','PERMISSIONS',8),(1037,'2','PREFERENCES',16),(1038,'191','VIEW',1),(1039,'191','ADD_TO_PAGE',2),(1040,'191','CONFIGURATION',4),(1041,'191','PERMISSIONS',8),(1042,'191','PREFERENCES',16),(1043,'191','ACCESS_IN_CONTROL_PANEL',32),(1044,'119','VIEW',1),(1045,'119','ADD_TO_PAGE',2),(1046,'119','CONFIGURATION',4),(1047,'119','PERMISSIONS',8),(1048,'119','PREFERENCES',16),(1049,'119','ACCESS_IN_CONTROL_PANEL',32),(1050,'114','VIEW',1),(1051,'114','ADD_TO_PAGE',2),(1052,'114','CONFIGURATION',4),(1053,'114','PERMISSIONS',8),(1054,'114','PREFERENCES',16),(1055,'114','ACCESS_IN_CONTROL_PANEL',32),(1056,'67','VIEW',1),(1057,'67','ADD_TO_PAGE',2),(1058,'67','CONFIGURATION',4),(1059,'67','PERMISSIONS',8),(1060,'67','PREFERENCES',16),(1061,'67','ACCESS_IN_CONTROL_PANEL',32),(1062,'110','ACCESS_IN_CONTROL_PANEL',32),(1063,'135','ACCESS_IN_CONTROL_PANEL',2),(1064,'135','CONFIGURATION',4),(1065,'135','VIEW',1),(1066,'135','PERMISSIONS',8),(1067,'135','PREFERENCES',16),(1068,'59','ACCESS_IN_CONTROL_PANEL',32),(1069,'188','ADD_TO_PAGE',2),(1070,'188','CONFIGURATION',4),(1071,'188','VIEW',1),(1072,'188','PERMISSIONS',8),(1073,'188','PREFERENCES',16),(1074,'188','ACCESS_IN_CONTROL_PANEL',32),(1075,'131','ACCESS_IN_CONTROL_PANEL',2),(1076,'131','CONFIGURATION',4),(1077,'131','VIEW',1),(1078,'131','PERMISSIONS',8),(1079,'131','PREFERENCES',16),(1080,'102','VIEW',1),(1081,'102','ADD_TO_PAGE',2),(1082,'102','CONFIGURATION',4),(1083,'102','PERMISSIONS',8),(1084,'102','PREFERENCES',16),(1085,'102','ACCESS_IN_CONTROL_PANEL',32),(1086,'1_WAR_marketplaceportlet','VIEW',1),(1087,'1_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1088,'1_WAR_marketplaceportlet','CONFIGURATION',4),(1089,'1_WAR_marketplaceportlet','PERMISSIONS',8),(1090,'1_WAR_marketplaceportlet','PREFERENCES',16),(1091,'1_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1092,'2_WAR_marketplaceportlet','VIEW',1),(1093,'2_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1094,'2_WAR_marketplaceportlet','CONFIGURATION',4),(1095,'2_WAR_marketplaceportlet','PERMISSIONS',8),(1096,'2_WAR_marketplaceportlet','PREFERENCES',16),(1097,'2_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1098,'3_WAR_marketplaceportlet','VIEW',1),(1099,'3_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1100,'3_WAR_marketplaceportlet','CONFIGURATION',4),(1101,'3_WAR_marketplaceportlet','PERMISSIONS',8),(1102,'3_WAR_marketplaceportlet','PREFERENCES',16),(1103,'3_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1104,'1_WAR_calendarportlet','ACCESS_IN_CONTROL_PANEL',2),(1105,'1_WAR_calendarportlet','ADD_TO_PAGE',4),(1106,'1_WAR_calendarportlet','CONFIGURATION',8),(1107,'1_WAR_calendarportlet','VIEW',1),(1108,'1_WAR_calendarportlet','PERMISSIONS',16),(1109,'1_WAR_calendarportlet','PREFERENCES',32),(1110,'com.liferay.calendar.model.CalendarResource','ADD_CALENDAR',2),(1111,'com.liferay.calendar.model.CalendarResource','DELETE',4),(1112,'com.liferay.calendar.model.CalendarResource','UPDATE',8),(1113,'com.liferay.calendar.model.CalendarResource','VIEW',1),(1114,'com.liferay.calendar.model.CalendarResource','PERMISSIONS',16),(1115,'com.liferay.calendar.model.Calendar','DELETE',2),(1116,'com.liferay.calendar.model.Calendar','MANAGE_BOOKINGS',4),(1117,'com.liferay.calendar.model.Calendar','PERMISSIONS',8),(1118,'com.liferay.calendar.model.Calendar','UPDATE',16),(1119,'com.liferay.calendar.model.Calendar','VIEW',1),(1120,'com.liferay.calendar.model.Calendar','VIEW_BOOKING_DETAILS',32),(1121,'com.liferay.calendar','ADD_RESOURCE',2),(1122,'com.liferay.calendar','PERMISSIONS',4),(1123,'com.liferay.calendar.model.CalendarBooking','ADD_DISCUSSION',2),(1124,'com.liferay.calendar.model.CalendarBooking','DELETE_DISCUSSION',4),(1125,'com.liferay.calendar.model.CalendarBooking','PERMISSIONS',8),(1126,'com.liferay.calendar.model.CalendarBooking','UPDATE_DISCUSSION',16),(1127,'1_WAR_webformportlet','VIEW',1),(1128,'1_WAR_webformportlet','ADD_TO_PAGE',2),(1129,'1_WAR_webformportlet','CONFIGURATION',4),(1130,'1_WAR_webformportlet','PERMISSIONS',8),(1131,'1_WAR_webformportlet','PREFERENCES',16),(1132,'1_WAR_webformportlet','ACCESS_IN_CONTROL_PANEL',32),(1133,'4_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),(1134,'4_WAR_opensocialportlet','CONFIGURATION',4),(1135,'4_WAR_opensocialportlet','VIEW',1),(1136,'4_WAR_opensocialportlet','PERMISSIONS',8),(1137,'4_WAR_opensocialportlet','PREFERENCES',16),(1138,'2_WAR_opensocialportlet','ADD_TO_PAGE',2),(1139,'2_WAR_opensocialportlet','CONFIGURATION',4),(1140,'2_WAR_opensocialportlet','VIEW',1),(1141,'2_WAR_opensocialportlet','PERMISSIONS',8),(1142,'2_WAR_opensocialportlet','PREFERENCES',16),(1143,'2_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',32),(1144,'1_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),(1145,'1_WAR_opensocialportlet','CONFIGURATION',4),(1146,'1_WAR_opensocialportlet','VIEW',1),(1147,'1_WAR_opensocialportlet','PERMISSIONS',8),(1148,'1_WAR_opensocialportlet','PREFERENCES',16),(1149,'com.liferay.opensocial.model.Gadget','DELETE',2),(1150,'com.liferay.opensocial.model.Gadget','PERMISSIONS',4),(1151,'com.liferay.opensocial.model.Gadget','UPDATE',8),(1152,'com.liferay.opensocial.model.Gadget','VIEW',1),(1153,'com.liferay.opensocial','PERMISSIONS',2),(1154,'com.liferay.opensocial','PUBLISH_GADGET',4),(1155,'3_WAR_opensocialportlet','ADD_TO_PAGE',2),(1156,'3_WAR_opensocialportlet','CONFIGURATION',4),(1157,'3_WAR_opensocialportlet','VIEW',1),(1158,'3_WAR_opensocialportlet','PERMISSIONS',8),(1159,'3_WAR_opensocialportlet','PREFERENCES',16),(1160,'3_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',32),(1161,'2_WAR_notificationsportlet','VIEW',1),(1162,'2_WAR_notificationsportlet','ADD_TO_PAGE',2),(1163,'2_WAR_notificationsportlet','CONFIGURATION',4),(1164,'2_WAR_notificationsportlet','PERMISSIONS',8),(1165,'2_WAR_notificationsportlet','PREFERENCES',16),(1166,'2_WAR_notificationsportlet','ACCESS_IN_CONTROL_PANEL',32),(1167,'1_WAR_notificationsportlet','VIEW',1),(1168,'1_WAR_notificationsportlet','ADD_TO_PAGE',2),(1169,'1_WAR_notificationsportlet','CONFIGURATION',4),(1170,'1_WAR_notificationsportlet','PERMISSIONS',8),(1171,'1_WAR_notificationsportlet','PREFERENCES',16),(1172,'1_WAR_notificationsportlet','ACCESS_IN_CONTROL_PANEL',32),(1201,'portalb_WAR_epsosportal','VIEW',1),(1202,'portalb_WAR_epsosportal','ADD_TO_PAGE',2),(1203,'portalb_WAR_epsosportal','CONFIGURATION',4),(1204,'portalb_WAR_epsosportal','PERMISSIONS',8),(1205,'portalb_WAR_epsosportal','PREFERENCES',16),(1206,'portalb_WAR_epsosportal','ACCESS_IN_CONTROL_PANEL',32),(1207,'localncp_WAR_epsosportal','VIEW',1),(1208,'localncp_WAR_epsosportal','ADD_TO_PAGE',2),(1209,'localncp_WAR_epsosportal','CONFIGURATION',4),(1210,'localncp_WAR_epsosportal','PERMISSIONS',8),(1211,'localncp_WAR_epsosportal','PREFERENCES',16),(1212,'localncp_WAR_epsosportal','ACCESS_IN_CONTROL_PANEL',32),(1213,'pacrep_WAR_epsosportal','VIEW',1),(1214,'pacrep_WAR_epsosportal','ADD_TO_PAGE',2),(1215,'pacrep_WAR_epsosportal','CONFIGURATION',4),(1216,'pacrep_WAR_epsosportal','PERMISSIONS',8),(1217,'pacrep_WAR_epsosportal','PREFERENCES',16),(1218,'pacrep_WAR_epsosportal','ACCESS_IN_CONTROL_PANEL',32),(1219,'trillium_WAR_epsosportal','VIEW',1),(1220,'trillium_WAR_epsosportal','ADD_TO_PAGE',2),(1221,'trillium_WAR_epsosportal','CONFIGURATION',4),(1222,'trillium_WAR_epsosportal','PERMISSIONS',8),(1223,'trillium_WAR_epsosportal','PREFERENCES',16),(1224,'trillium_WAR_epsosportal','ACCESS_IN_CONTROL_PANEL',32),(1225,'pac_WAR_epsosportal','VIEW',1),(1226,'pac_WAR_epsosportal','ADD_TO_PAGE',2),(1227,'pac_WAR_epsosportal','CONFIGURATION',4),(1228,'pac_WAR_epsosportal','PERMISSIONS',8),(1229,'pac_WAR_epsosportal','PREFERENCES',16),(1230,'pac_WAR_epsosportal','ACCESS_IN_CONTROL_PANEL',32),(1301,'tsleditor_WAR_tsleditorportlet','DEMO',2),(1302,'tsleditor_WAR_tsleditorportlet','ADD',4),(1303,'tsleditor_WAR_tsleditorportlet','EDIT',8),(1304,'tsleditor_WAR_tsleditorportlet','CONFIGURATION',16),(1305,'tsleditor_WAR_tsleditorportlet','IMPORT',32),(1306,'tsleditor_WAR_tsleditorportlet','VIEW',1),(1307,'tsleditor_WAR_tsleditorportlet','DELETE',64),(1308,'tsleditor_WAR_tsleditorportlet','AUDIT',128),(1309,'tsleditor_WAR_tsleditorportlet','ADD_TO_PAGE',256),(1310,'tsleditor_WAR_tsleditorportlet','PERMISSIONS',512),(1311,'tsleditor_WAR_tsleditorportlet','PREFERENCES',1024),(1312,'tsleditor_WAR_tsleditorportlet','ACCESS_IN_CONTROL_PANEL',2048);
/*!40000 ALTER TABLE `resourceaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceblock`
--

DROP TABLE IF EXISTS `resourceblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceblock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`),
  UNIQUE KEY `IX_AEEA209C` (`companyId`,`groupId`,`name`,`permissionsHash`),
  KEY `IX_DA30B086` (`companyId`,`groupId`,`name`),
  KEY `IX_2D4CC782` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceblock`
--

LOCK TABLES `resourceblock` WRITE;
/*!40000 ALTER TABLE `resourceblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceblockpermission`
--

DROP TABLE IF EXISTS `resourceblockpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceblockpermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`),
  UNIQUE KEY `IX_D63D20BB` (`resourceBlockId`,`roleId`),
  KEY `IX_4AB3756` (`resourceBlockId`),
  KEY `IX_20A2E3D9` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceblockpermission`
--

LOCK TABLES `resourceblockpermission` WRITE;
/*!40000 ALTER TABLE `resourceblockpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceblockpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcepermission`
--

DROP TABLE IF EXISTS `resourcepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcepermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`),
  UNIQUE KEY `IX_8D83D0CE` (`companyId`,`name`,`scope`,`primKey`,`roleId`),
  KEY `IX_60B99860` (`companyId`,`name`,`scope`),
  KEY `IX_2200AA69` (`companyId`,`name`,`scope`,`primKey`),
  KEY `IX_26284944` (`companyId`,`primKey`),
  KEY `IX_A37A0588` (`roleId`),
  KEY `IX_F4555981` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcepermission`
--

LOCK TABLES `resourcepermission` WRITE;
/*!40000 ALTER TABLE `resourcepermission` DISABLE KEYS */;
INSERT INTO `resourcepermission` VALUES (1,20155,'2',1,'20155',20166,0,2),(2,20155,'140',1,'20155',20166,0,2),(3,20155,'158',1,'20155',20166,0,6),(4,20155,'153',1,'20155',20166,0,6),(5,20155,'com.liferay.portal.model.Role',4,'20162',20166,0,1),(6,20155,'com.liferay.portal.model.Role',4,'20163',20166,0,1),(7,20155,'com.liferay.portal.model.Role',4,'20164',20166,0,1),(8,20155,'com.liferay.portal.model.Role',4,'20165',20166,0,1),(9,20155,'com.liferay.portal.model.Role',4,'20166',20166,0,1),(10,20155,'com.liferay.portal.model.Role',4,'20167',20166,0,1),(11,20155,'com.liferay.portal.model.Role',4,'20168',20166,0,1),(12,20155,'com.liferay.portal.model.Role',4,'20169',20166,0,1),(13,20155,'com.liferay.portal.model.Role',4,'20170',20166,0,1),(14,20155,'com.liferay.portal.model.Role',4,'20171',20166,0,1),(15,20155,'com.liferay.portal.model.Role',4,'20172',20166,0,1),(16,20155,'com.liferay.portal.model.Role',4,'20173',20166,0,1),(17,20155,'com.liferay.portal.model.Role',4,'20174',20166,0,1),(18,20155,'com.liferay.portal.model.Role',4,'20175',20166,0,1),(19,20155,'com.liferay.portal.model.Role',4,'20176',20166,0,1),(20,20155,'com.liferay.portal.model.Layout',4,'20180',20164,20159,1023),(21,20155,'com.liferay.portal.model.Layout',4,'20180',20175,0,19),(22,20155,'com.liferay.portal.model.Layout',4,'20180',20163,0,1),(23,20155,'com.liferay.portal.model.Layout',4,'20189',20164,20159,1023),(24,20155,'com.liferay.portal.model.Layout',4,'20189',20175,0,19),(25,20155,'com.liferay.portal.model.Layout',4,'20189',20163,0,1),(26,20155,'com.liferay.portal.model.Layout',2,'20196',20166,0,1),(27,20155,'com.liferay.portlet.blogs',2,'20196',20166,0,14),(28,20155,'98',2,'20196',20165,0,2),(29,20155,'183',2,'20196',20165,0,32),(30,20155,'152',2,'20196',20165,0,2),(31,20155,'182',2,'20196',20165,0,32),(32,20155,'179',2,'20196',20165,0,2),(33,20155,'173',2,'20196',20165,0,32),(34,20155,'154',2,'20196',20165,0,2),(35,20155,'178',2,'20196',20165,0,32),(36,20155,'147',2,'20196',20165,0,2),(37,20155,'161',2,'20196',20165,0,2),(38,20155,'162',2,'20196',20165,0,2),(39,20155,'167',2,'20196',20165,0,2),(40,20155,'20',2,'20196',20165,0,2),(41,20155,'99',2,'20196',20165,0,2),(42,20155,'28',2,'20196',20165,0,2),(43,20155,'15',2,'20196',20165,0,2),(44,20155,'25',2,'20196',20165,0,2),(45,20155,'com.liferay.portal.model.Group',2,'20196',20165,0,8396800),(46,20155,'com.liferay.portlet.asset',2,'20196',20165,0,30),(47,20155,'com.liferay.portlet.blogs',2,'20196',20165,0,14),(48,20155,'com.liferay.portlet.bookmarks',2,'20196',20165,0,31),(49,20155,'com.liferay.portlet.documentlibrary',2,'20196',20165,0,1023),(50,20155,'com.liferay.portlet.journal',2,'20196',20165,0,255),(51,20155,'com.liferay.portlet.messageboards',2,'20196',20165,0,2047),(52,20155,'com.liferay.portlet.polls',2,'20196',20165,0,6),(53,20155,'com.liferay.portlet.wiki',2,'20196',20165,0,6),(54,20155,'com.liferay.portal.model.User',4,'20203',20164,20203,31),(55,20155,'98',1,'20155',20165,0,4),(56,20155,'98',1,'20155',20166,0,4),(57,20155,'183',1,'20155',20162,0,2),(58,20155,'66',1,'20155',20165,0,2),(59,20155,'66',1,'20155',20166,0,2),(60,20155,'180',1,'20155',20163,0,2),(61,20155,'180',1,'20155',20165,0,2),(62,20155,'180',1,'20155',20166,0,2),(63,20155,'27',1,'20155',20165,0,2),(64,20155,'27',1,'20155',20166,0,2),(65,20155,'122',1,'20155',20163,0,8),(66,20155,'122',1,'20155',20165,0,8),(67,20155,'122',1,'20155',20166,0,8),(68,20155,'36',1,'20155',20165,0,4),(69,20155,'36',1,'20155',20166,0,4),(70,20155,'26',1,'20155',20165,0,2),(71,20155,'26',1,'20155',20166,0,2),(72,20155,'175',1,'20155',20163,0,2),(73,20155,'175',1,'20155',20165,0,2),(74,20155,'175',1,'20155',20166,0,2),(75,20155,'153',1,'20155',20165,0,4),(76,20155,'64',1,'20155',20163,0,2),(77,20155,'64',1,'20155',20165,0,2),(78,20155,'64',1,'20155',20166,0,2),(79,20155,'182',1,'20155',20165,0,2),(80,20155,'182',1,'20155',20166,0,2),(81,20155,'173',1,'20155',20163,0,2),(82,20155,'173',1,'20155',20165,0,2),(83,20155,'173',1,'20155',20166,0,2),(84,20155,'100',1,'20155',20165,0,2),(85,20155,'100',1,'20155',20166,0,2),(86,20155,'19',1,'20155',20165,0,2),(87,20155,'19',1,'20155',20166,0,2),(88,20155,'181',1,'20155',20163,0,2),(89,20155,'181',1,'20155',20165,0,2),(90,20155,'181',1,'20155',20166,0,2),(91,20155,'148',1,'20155',20163,0,2),(92,20155,'148',1,'20155',20165,0,2),(93,20155,'148',1,'20155',20166,0,2),(94,20155,'11',1,'20155',20165,0,2),(95,20155,'11',1,'20155',20166,0,2),(96,20155,'29',1,'20155',20165,0,2),(97,20155,'29',1,'20155',20166,0,2),(98,20155,'158',1,'20155',20165,0,4),(99,20155,'178',1,'20155',20165,0,4),(100,20155,'178',1,'20155',20166,0,4),(101,20155,'58',1,'20155',20163,0,2),(102,20155,'58',1,'20155',20165,0,2),(103,20155,'58',1,'20155',20166,0,2),(104,20155,'71',1,'20155',20163,0,2),(105,20155,'71',1,'20155',20165,0,2),(106,20155,'71',1,'20155',20166,0,2),(107,20155,'97',1,'20155',20165,0,2),(108,20155,'97',1,'20155',20166,0,2),(109,20155,'39',1,'20155',20165,0,2),(110,20155,'39',1,'20155',20166,0,2),(111,20155,'85',1,'20155',20163,0,2),(112,20155,'85',1,'20155',20165,0,2),(113,20155,'85',1,'20155',20166,0,2),(114,20155,'118',1,'20155',20163,0,2),(115,20155,'118',1,'20155',20165,0,2),(116,20155,'118',1,'20155',20166,0,2),(117,20155,'107',1,'20155',20165,0,2),(118,20155,'107',1,'20155',20166,0,2),(119,20155,'30',1,'20155',20165,0,2),(120,20155,'30',1,'20155',20166,0,2),(121,20155,'184',1,'20155',20163,0,2),(122,20155,'184',1,'20155',20165,0,2),(123,20155,'184',1,'20155',20166,0,2),(124,20155,'48',1,'20155',20165,0,2),(125,20155,'48',1,'20155',20166,0,2),(126,20155,'62',1,'20155',20165,0,2),(127,20155,'62',1,'20155',20166,0,2),(128,20155,'176',1,'20155',20162,0,2),(129,20155,'108',1,'20155',20165,0,2),(130,20155,'108',1,'20155',20166,0,2),(131,20155,'187',1,'20155',20165,0,2),(132,20155,'187',1,'20155',20166,0,2),(133,20155,'84',1,'20155',20165,0,4),(134,20155,'84',1,'20155',20166,0,4),(135,20155,'101',1,'20155',20163,0,4),(136,20155,'101',1,'20155',20165,0,4),(137,20155,'101',1,'20155',20166,0,4),(138,20155,'121',1,'20155',20163,0,2),(139,20155,'121',1,'20155',20165,0,2),(140,20155,'121',1,'20155',20166,0,2),(141,20155,'143',1,'20155',20163,0,2),(142,20155,'143',1,'20155',20165,0,2),(143,20155,'143',1,'20155',20166,0,2),(144,20155,'77',1,'20155',20163,0,2),(145,20155,'77',1,'20155',20165,0,2),(146,20155,'77',1,'20155',20166,0,2),(147,20155,'167',1,'20155',20165,0,4),(148,20155,'167',1,'20155',20166,0,4),(149,20155,'115',1,'20155',20163,0,2),(150,20155,'115',1,'20155',20165,0,2),(151,20155,'115',1,'20155',20166,0,2),(152,20155,'56',1,'20155',20163,0,2),(153,20155,'56',1,'20155',20165,0,2),(154,20155,'56',1,'20155',20166,0,2),(155,20155,'16',1,'20155',20165,0,8),(156,20155,'16',1,'20155',20166,0,8),(157,20155,'3',1,'20155',20163,0,2),(158,20155,'3',1,'20155',20165,0,2),(159,20155,'3',1,'20155',20166,0,2),(160,20155,'20',1,'20155',20163,0,8),(161,20155,'20',1,'20155',20165,0,8),(162,20155,'20',1,'20155',20166,0,8),(163,20155,'23',1,'20155',20165,0,2),(164,20155,'23',1,'20155',20166,0,2),(165,20155,'83',1,'20155',20165,0,4),(166,20155,'83',1,'20155',20166,0,4),(167,20155,'186',1,'20155',20165,0,2),(168,20155,'186',1,'20155',20166,0,2),(169,20155,'194',1,'20155',20163,0,2),(170,20155,'194',1,'20155',20165,0,2),(171,20155,'194',1,'20155',20166,0,2),(172,20155,'70',1,'20155',20165,0,2),(173,20155,'70',1,'20155',20166,0,2),(174,20155,'164',1,'20155',20163,0,2),(175,20155,'164',1,'20155',20165,0,2),(176,20155,'164',1,'20155',20166,0,2),(177,20155,'141',1,'20155',20163,0,8),(178,20155,'141',1,'20155',20165,0,8),(179,20155,'141',1,'20155',20166,0,8),(180,20155,'9',1,'20155',20162,0,2),(181,20155,'28',1,'20155',20165,0,4),(182,20155,'28',1,'20155',20166,0,4),(183,20155,'15',1,'20155',20165,0,4),(184,20155,'15',1,'20155',20166,0,4),(185,20155,'47',1,'20155',20163,0,2),(186,20155,'47',1,'20155',20165,0,2),(187,20155,'47',1,'20155',20166,0,2),(188,20155,'116',1,'20155',20163,0,2),(189,20155,'116',1,'20155',20165,0,2),(190,20155,'116',1,'20155',20166,0,2),(191,20155,'82',1,'20155',20163,0,2),(192,20155,'82',1,'20155',20165,0,2),(193,20155,'82',1,'20155',20166,0,2),(194,20155,'54',1,'20155',20165,0,2),(195,20155,'54',1,'20155',20166,0,2),(196,20155,'34',1,'20155',20165,0,2),(197,20155,'34',1,'20155',20166,0,2),(198,20155,'169',1,'20155',20165,0,2),(199,20155,'169',1,'20155',20166,0,2),(200,20155,'61',1,'20155',20165,0,2),(201,20155,'61',1,'20155',20166,0,2),(202,20155,'73',1,'20155',20163,0,2),(203,20155,'73',1,'20155',20165,0,2),(204,20155,'73',1,'20155',20166,0,2),(205,20155,'50',1,'20155',20163,0,2),(206,20155,'50',1,'20155',20165,0,2),(207,20155,'50',1,'20155',20166,0,2),(208,20155,'127',1,'20155',20162,0,2),(209,20155,'193',1,'20155',20163,0,2),(210,20155,'193',1,'20155',20165,0,2),(211,20155,'193',1,'20155',20166,0,2),(212,20155,'31',1,'20155',20163,0,2),(213,20155,'31',1,'20155',20165,0,2),(214,20155,'31',1,'20155',20166,0,2),(215,20155,'166',1,'20155',20165,0,4),(216,20155,'166',1,'20155',20166,0,4),(217,20155,'33',1,'20155',20163,0,4),(218,20155,'33',1,'20155',20165,0,4),(219,20155,'33',1,'20155',20166,0,4),(220,20155,'114',1,'20155',20163,0,2),(221,20155,'114',1,'20155',20165,0,2),(222,20155,'114',1,'20155',20166,0,2),(223,20155,'67',1,'20155',20165,0,2),(224,20155,'67',1,'20155',20166,0,2),(225,20155,'110',1,'20155',20165,0,2),(226,20155,'110',1,'20155',20166,0,2),(227,20155,'59',1,'20155',20165,0,2),(228,20155,'59',1,'20155',20166,0,2),(229,20155,'188',1,'20155',20165,0,2),(230,20155,'188',1,'20155',20166,0,2),(231,20155,'102',1,'20155',20162,0,2),(232,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20164,20159,15),(233,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20166,0,1),(234,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20163,0,1),(235,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20308',20164,20159,15),(236,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20308',20166,0,1),(237,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20308',20163,0,1),(238,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20164,20159,15),(239,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20166,0,1),(240,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20163,0,1),(241,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20164,20159,15),(242,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20166,0,1),(243,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20163,0,1),(244,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20164,20159,15),(245,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20166,0,1),(246,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20163,0,1),(247,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20164,20159,15),(248,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20166,0,1),(249,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20163,0,1),(250,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20164,20159,15),(251,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20166,0,1),(252,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20163,0,1),(253,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20164,20159,15),(254,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20166,0,1),(255,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20163,0,1),(256,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20314',20164,20159,15),(257,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20314',20166,0,1),(258,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20314',20163,0,1),(259,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20317',20164,20159,15),(260,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20317',20166,0,1),(261,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20317',20163,0,1),(262,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20316',20164,20159,15),(263,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20316',20166,0,1),(264,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20316',20163,0,1),(265,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20319',20164,20159,15),(266,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20319',20166,0,1),(267,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20319',20163,0,1),(268,20155,'com.liferay.portal.model.LayoutPrototype',4,'20320',20164,20159,15),(269,20155,'com.liferay.portal.model.Layout',4,'20324',20164,20159,1023),(270,20155,'com.liferay.portal.model.Layout',4,'20324',20175,0,19),(271,20155,'com.liferay.portlet.asset.model.AssetVocabulary',4,'20328',20164,20159,15),(272,20155,'33',4,'20324_LAYOUT_33',20164,0,127),(273,20155,'33',4,'20324_LAYOUT_33',20175,0,1),(274,20155,'33',4,'20324_LAYOUT_33',20163,0,1),(275,20155,'com.liferay.portlet.blogs',4,'20321',20164,0,14),(276,20155,'148',4,'20324_LAYOUT_148_INSTANCE_f2ODAXriI8m3',20164,0,63),(277,20155,'148',4,'20324_LAYOUT_148_INSTANCE_f2ODAXriI8m3',20175,0,1),(278,20155,'148',4,'20324_LAYOUT_148_INSTANCE_f2ODAXriI8m3',20163,0,1),(279,20155,'114',4,'20324_LAYOUT_114',20164,0,63),(280,20155,'114',4,'20324_LAYOUT_114',20175,0,1),(281,20155,'114',4,'20324_LAYOUT_114',20163,0,1),(282,20155,'com.liferay.portal.model.LayoutPrototype',4,'20332',20164,20159,15),(283,20155,'com.liferay.portal.model.Layout',4,'20336',20164,20159,1023),(284,20155,'com.liferay.portal.model.Layout',4,'20336',20175,0,19),(285,20155,'141',4,'20336_LAYOUT_141_INSTANCE_mgRruZ01MCJg',20164,0,127),(286,20155,'141',4,'20336_LAYOUT_141_INSTANCE_mgRruZ01MCJg',20175,0,1),(287,20155,'141',4,'20336_LAYOUT_141_INSTANCE_mgRruZ01MCJg',20163,0,1),(288,20155,'122',4,'20336_LAYOUT_122_INSTANCE_mZrh6jW4DIzA',20164,0,127),(289,20155,'122',4,'20336_LAYOUT_122_INSTANCE_mZrh6jW4DIzA',20175,0,1),(290,20155,'122',4,'20336_LAYOUT_122_INSTANCE_mZrh6jW4DIzA',20163,0,1),(291,20155,'3',4,'20336_LAYOUT_3',20164,0,63),(292,20155,'3',4,'20336_LAYOUT_3',20175,0,1),(293,20155,'3',4,'20336_LAYOUT_3',20163,0,1),(294,20155,'101',4,'20336_LAYOUT_101_INSTANCE_amyFHUGVtBte',20164,0,255),(295,20155,'101',4,'20336_LAYOUT_101_INSTANCE_amyFHUGVtBte',20175,0,17),(296,20155,'101',4,'20336_LAYOUT_101_INSTANCE_amyFHUGVtBte',20163,0,1),(297,20155,'com.liferay.portal.model.LayoutPrototype',4,'20342',20164,20159,15),(298,20155,'com.liferay.portal.model.Layout',4,'20346',20164,20159,1023),(299,20155,'com.liferay.portal.model.Layout',4,'20346',20175,0,19),(300,20155,'36',4,'20346_LAYOUT_36',20164,0,127),(301,20155,'36',4,'20346_LAYOUT_36',20175,0,1),(302,20155,'36',4,'20346_LAYOUT_36',20163,0,1),(303,20155,'com.liferay.portlet.wiki',4,'20343',20164,0,6),(304,20155,'122',4,'20346_LAYOUT_122_INSTANCE_kBd1uVwSqSQg',20164,0,127),(305,20155,'122',4,'20346_LAYOUT_122_INSTANCE_kBd1uVwSqSQg',20175,0,1),(306,20155,'122',4,'20346_LAYOUT_122_INSTANCE_kBd1uVwSqSQg',20163,0,1),(307,20155,'141',4,'20346_LAYOUT_141_INSTANCE_qHRV3Lgo9CL3',20164,0,127),(308,20155,'141',4,'20346_LAYOUT_141_INSTANCE_qHRV3Lgo9CL3',20175,0,1),(309,20155,'141',4,'20346_LAYOUT_141_INSTANCE_qHRV3Lgo9CL3',20163,0,1),(310,20155,'com.liferay.portal.model.LayoutSetPrototype',4,'20353',20164,20159,15),(314,20155,'com.liferay.portal.model.Layout',4,'20365',20164,20159,1023),(315,20155,'com.liferay.portal.model.Layout',4,'20365',20175,0,19),(316,20155,'com.liferay.portal.model.Layout',4,'20365',20163,0,1),(317,20155,'19',4,'20365_LAYOUT_19',20164,0,63),(318,20155,'19',4,'20365_LAYOUT_19',20175,0,1),(319,20155,'19',4,'20365_LAYOUT_19',20163,0,1),(320,20155,'com.liferay.portlet.messageboards',4,'20354',20164,0,2047),(321,20155,'com.liferay.portlet.messageboards',4,'20354',20175,0,781),(322,20155,'com.liferay.portlet.messageboards',4,'20354',20163,0,1),(323,20155,'3',4,'20365_LAYOUT_3',20164,0,63),(324,20155,'3',4,'20365_LAYOUT_3',20175,0,1),(325,20155,'3',4,'20365_LAYOUT_3',20163,0,1),(326,20155,'59',4,'20365_LAYOUT_59_INSTANCE_RWHtefpXhFX1',20164,0,63),(327,20155,'59',4,'20365_LAYOUT_59_INSTANCE_RWHtefpXhFX1',20175,0,1),(328,20155,'59',4,'20365_LAYOUT_59_INSTANCE_RWHtefpXhFX1',20163,0,1),(329,20155,'com.liferay.portlet.polls',4,'20354',20164,0,6),(330,20155,'180',4,'20365_LAYOUT_180',20164,0,63),(331,20155,'180',4,'20365_LAYOUT_180',20175,0,1),(332,20155,'180',4,'20365_LAYOUT_180',20163,0,1),(333,20155,'101',4,'20365_LAYOUT_101_INSTANCE_ZEJBGnXOtIPE',20164,0,255),(334,20155,'101',4,'20365_LAYOUT_101_INSTANCE_ZEJBGnXOtIPE',20175,0,17),(335,20155,'101',4,'20365_LAYOUT_101_INSTANCE_ZEJBGnXOtIPE',20163,0,1),(336,20155,'com.liferay.portal.model.Layout',4,'20373',20164,20159,1023),(337,20155,'com.liferay.portal.model.Layout',4,'20373',20175,0,19),(338,20155,'com.liferay.portal.model.Layout',4,'20373',20163,0,1),(339,20155,'36',4,'20373_LAYOUT_36',20164,0,127),(340,20155,'36',4,'20373_LAYOUT_36',20175,0,1),(341,20155,'36',4,'20373_LAYOUT_36',20163,0,1),(342,20155,'com.liferay.portlet.wiki',4,'20354',20164,0,6),(343,20155,'122',4,'20373_LAYOUT_122_INSTANCE_G3koGLa8gsG7',20164,0,127),(344,20155,'122',4,'20373_LAYOUT_122_INSTANCE_G3koGLa8gsG7',20175,0,1),(345,20155,'122',4,'20373_LAYOUT_122_INSTANCE_G3koGLa8gsG7',20163,0,1),(346,20155,'148',4,'20373_LAYOUT_148_INSTANCE_n8ki3RLF7MPU',20164,0,63),(347,20155,'148',4,'20373_LAYOUT_148_INSTANCE_n8ki3RLF7MPU',20175,0,1),(348,20155,'148',4,'20373_LAYOUT_148_INSTANCE_n8ki3RLF7MPU',20163,0,1),(349,20155,'com.liferay.portal.model.LayoutSetPrototype',4,'20379',20164,20159,15),(353,20155,'com.liferay.portal.model.Layout',4,'20391',20164,20159,1023),(354,20155,'com.liferay.portal.model.Layout',4,'20391',20175,0,19),(355,20155,'com.liferay.portal.model.Layout',4,'20391',20163,0,1),(356,20155,'116',4,'20391_LAYOUT_116',20164,0,63),(357,20155,'116',4,'20391_LAYOUT_116',20175,0,1),(358,20155,'116',4,'20391_LAYOUT_116',20163,0,1),(359,20155,'3',4,'20391_LAYOUT_3',20164,0,63),(360,20155,'3',4,'20391_LAYOUT_3',20175,0,1),(361,20155,'3',4,'20391_LAYOUT_3',20163,0,1),(362,20155,'82',4,'20391_LAYOUT_82',20164,0,63),(363,20155,'82',4,'20391_LAYOUT_82',20175,0,1),(364,20155,'82',4,'20391_LAYOUT_82',20163,0,1),(365,20155,'101',4,'20391_LAYOUT_101_INSTANCE_FTl0FHHJCJPz',20164,0,255),(366,20155,'101',4,'20391_LAYOUT_101_INSTANCE_FTl0FHHJCJPz',20175,0,17),(367,20155,'101',4,'20391_LAYOUT_101_INSTANCE_FTl0FHHJCJPz',20163,0,1),(368,20155,'com.liferay.portal.model.Layout',4,'20400',20164,20159,1023),(369,20155,'com.liferay.portal.model.Layout',4,'20400',20175,0,19),(370,20155,'com.liferay.portal.model.Layout',4,'20400',20163,0,1),(371,20155,'20',4,'20400_LAYOUT_20',20164,0,127),(372,20155,'20',4,'20400_LAYOUT_20',20175,0,1),(373,20155,'20',4,'20400_LAYOUT_20',20163,0,1),(374,20155,'com.liferay.portlet.documentlibrary',4,'20380',20164,0,1023),(375,20155,'com.liferay.portlet.documentlibrary',4,'20380',20175,0,331),(376,20155,'com.liferay.portlet.documentlibrary',4,'20380',20163,0,1),(377,20155,'101',4,'20400_LAYOUT_101_INSTANCE_1Zuf1ceA6yae',20164,0,255),(378,20155,'101',4,'20400_LAYOUT_101_INSTANCE_1Zuf1ceA6yae',20175,0,17),(379,20155,'101',4,'20400_LAYOUT_101_INSTANCE_1Zuf1ceA6yae',20163,0,1),(380,20155,'com.liferay.portal.model.Layout',4,'20408',20164,20159,1023),(381,20155,'com.liferay.portal.model.Layout',4,'20408',20175,0,19),(382,20155,'com.liferay.portal.model.Layout',4,'20408',20163,0,1),(383,20155,'39',4,'20408_LAYOUT_39_INSTANCE_OehmWpK3FPln',20164,0,63),(384,20155,'39',4,'20408_LAYOUT_39_INSTANCE_OehmWpK3FPln',20175,0,1),(385,20155,'39',4,'20408_LAYOUT_39_INSTANCE_OehmWpK3FPln',20163,0,1),(386,20155,'39',4,'20408_LAYOUT_39_INSTANCE_iZmHpw692ilV',20164,0,63),(387,20155,'39',4,'20408_LAYOUT_39_INSTANCE_iZmHpw692ilV',20175,0,1),(388,20155,'39',4,'20408_LAYOUT_39_INSTANCE_iZmHpw692ilV',20163,0,1),(389,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20416',20164,20159,15),(390,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20417',20164,20159,15),(391,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20418',20164,20159,15),(392,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20419',20164,20159,15),(393,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20420',20164,20159,15),(394,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20421',20164,20159,15),(395,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20422',20164,20159,15),(396,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20424',20164,20159,15),(397,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20427',20164,20159,15),(398,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20429',20164,20159,15),(399,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20431',20164,20159,15),(400,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20433',20164,20159,15),(401,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20435',20164,20159,15),(402,20155,'com.liferay.portal.model.User',4,'20438',20164,20438,31),(403,20155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'20449',20164,0,15),(404,20155,'1_WAR_calendarportlet',1,'20155',20162,0,4),(405,20155,'1_WAR_calendarportlet',1,'20155',20163,0,4),(406,20155,'1_WAR_calendarportlet',1,'20155',20165,0,4),(407,20155,'1_WAR_calendarportlet',1,'20155',20166,0,4),(408,20155,'1_WAR_webformportlet',1,'20155',20162,0,2),(409,20155,'1_WAR_webformportlet',1,'20155',20163,0,2),(410,20155,'1_WAR_webformportlet',1,'20155',20165,0,2),(411,20155,'1_WAR_webformportlet',1,'20155',20166,0,2),(412,20155,'2_WAR_opensocialportlet',1,'20155',20162,0,2),(413,20155,'2_WAR_opensocialportlet',1,'20155',20163,0,2),(414,20155,'2_WAR_opensocialportlet',1,'20155',20165,0,2),(415,20155,'2_WAR_opensocialportlet',1,'20155',20166,0,2),(416,20155,'3_WAR_opensocialportlet',1,'20155',20162,0,2),(417,20155,'3_WAR_opensocialportlet',1,'20155',20163,0,2),(418,20155,'3_WAR_opensocialportlet',1,'20155',20165,0,2),(419,20155,'3_WAR_opensocialportlet',1,'20155',20166,0,2),(420,20155,'1_WAR_notificationsportlet',1,'20155',20162,0,2),(421,20155,'1_WAR_notificationsportlet',1,'20155',20163,0,2),(422,20155,'1_WAR_notificationsportlet',1,'20155',20165,0,2),(423,20155,'1_WAR_notificationsportlet',1,'20155',20166,0,2),(424,20155,'com.liferay.portal.model.Organization',4,'20523',20164,20159,2047),(425,20155,'com.liferay.portal.model.Layout',4,'20527',20164,20159,1023),(426,20155,'com.liferay.portal.model.Layout',4,'20527',20175,0,19),(427,20155,'com.liferay.portal.model.Layout',4,'20527',20163,0,1),(428,20155,'com.liferay.portal.model.Layout',4,'20533',20164,20159,1023),(429,20155,'com.liferay.portal.model.Layout',4,'20533',20175,0,19),(430,20155,'com.liferay.portal.model.Organization',4,'20539',20164,20159,2047),(431,20155,'com.liferay.portal.model.User',4,'20543',20164,20543,31),(432,20155,'com.liferay.portal.model.User',4,'20549',20164,20549,31),(433,20155,'com.liferay.portal.model.User',4,'20555',20164,20555,31),(434,20155,'com.liferay.portal.model.User',4,'20561',20164,20561,31),(435,20155,'com.liferay.portal.model.User',4,'20567',20164,20567,31),(436,20155,'com.liferay.portal.model.User',4,'20573',20164,20573,31),(437,20155,'com.liferay.portal.model.User',4,'20579',20164,20579,31),(438,20155,'com.liferay.portal.model.User',4,'20585',20164,20585,31),(439,20155,'com.liferay.portal.model.User',4,'20591',20164,20591,31),(440,20155,'com.liferay.portal.model.User',4,'20597',20164,20597,31),(441,20155,'com.liferay.portal.model.Organization',4,'20603',20164,20159,2047),(442,20155,'com.liferay.portal.model.Organization',4,'20607',20164,20159,2047),(443,20155,'com.liferay.portal.model.User',4,'20611',20164,20611,31),(444,20155,'com.liferay.portal.model.User',4,'20617',20164,20617,31),(445,20155,'com.liferay.portal.model.User',4,'20623',20164,20623,31),(446,20155,'com.liferay.portal.model.User',4,'20629',20164,20629,31),(447,20155,'com.liferay.portal.model.User',4,'20635',20164,20635,31),(448,20155,'com.liferay.portal.model.User',4,'20641',20164,20641,31),(449,20155,'com.liferay.portal.model.User',4,'20647',20164,20647,31),(450,20155,'com.liferay.portal.model.User',4,'20653',20164,20653,31),(451,20155,'com.liferay.portal.model.User',4,'20659',20164,20659,31),(452,20155,'com.liferay.portal.model.User',4,'20665',20164,20665,31),(453,20155,'com.liferay.portal.model.Organization',4,'20671',20164,20159,2047),(454,20155,'com.liferay.portal.model.Organization',4,'20675',20164,20159,2047),(455,20155,'com.liferay.portal.model.User',4,'20679',20164,20679,31),(456,20155,'com.liferay.portal.model.User',4,'20685',20164,20685,31),(457,20155,'com.liferay.portal.model.User',4,'20691',20164,20691,31),(458,20155,'com.liferay.portal.model.User',4,'20697',20164,20697,31),(459,20155,'com.liferay.portal.model.User',4,'20703',20164,20703,31),(460,20155,'com.liferay.portal.model.User',4,'20709',20164,20709,31),(461,20155,'com.liferay.portal.model.User',4,'20715',20164,20715,31),(462,20155,'com.liferay.portal.model.User',4,'20721',20164,20721,31),(463,20155,'com.liferay.portal.model.User',4,'20727',20164,20727,31),(464,20155,'com.liferay.portal.model.User',4,'20733',20164,20733,31),(465,20155,'com.liferay.portal.model.Organization',4,'20739',20164,20159,2047),(466,20155,'com.liferay.portal.model.User',4,'20743',20164,20743,31),(467,20155,'com.liferay.portal.model.User',4,'20749',20164,20749,31),(468,20155,'com.liferay.portal.model.User',4,'20755',20164,20755,31),(469,20155,'com.liferay.portal.model.User',4,'20761',20164,20761,31),(470,20155,'com.liferay.portal.model.User',4,'20767',20164,20767,31),(471,20155,'com.liferay.portal.model.User',4,'20773',20164,20773,31),(472,20155,'com.liferay.portal.model.User',4,'20779',20164,20779,31),(473,20155,'com.liferay.portal.model.User',4,'20785',20164,20785,31),(474,20155,'com.liferay.portal.model.User',4,'20791',20164,20791,31),(475,20155,'com.liferay.portal.model.User',4,'20797',20164,20797,31),(476,20155,'com.liferay.portal.model.Organization',4,'20803',20164,20159,2047),(477,20155,'com.liferay.portal.model.User',4,'20807',20164,20807,31),(478,20155,'com.liferay.portal.model.User',4,'20813',20164,20813,31),(479,20155,'com.liferay.portal.model.User',4,'20819',20164,20819,31),(480,20155,'com.liferay.portal.model.User',4,'20825',20164,20825,31),(481,20155,'com.liferay.portal.model.User',4,'20831',20164,20831,31),(482,20155,'com.liferay.portal.model.User',4,'20837',20164,20837,31),(483,20155,'com.liferay.portal.model.User',4,'20843',20164,20843,31),(484,20155,'com.liferay.portal.model.User',4,'20849',20164,20849,31),(485,20155,'com.liferay.portal.model.User',4,'20855',20164,20855,31),(486,20155,'com.liferay.portal.model.User',4,'20861',20164,20861,31),(487,20155,'com.liferay.portal.model.Organization',4,'20867',20164,20159,2047),(488,20155,'com.liferay.portal.model.User',4,'20871',20164,20871,31),(489,20155,'com.liferay.portal.model.User',4,'20877',20164,20877,31),(490,20155,'com.liferay.portal.model.User',4,'20883',20164,20883,31),(491,20155,'com.liferay.portal.model.User',4,'20889',20164,20889,31),(492,20155,'com.liferay.portal.model.User',4,'20895',20164,20895,31),(493,20155,'com.liferay.portal.model.User',4,'20901',20164,20901,31),(494,20155,'com.liferay.portal.model.User',4,'20907',20164,20907,31),(495,20155,'com.liferay.portal.model.User',4,'20913',20164,20913,31),(496,20155,'com.liferay.portal.model.User',4,'20919',20164,20919,31),(497,20155,'com.liferay.portal.model.User',4,'20925',20164,20925,31),(498,20155,'com.liferay.portal.model.Organization',4,'20931',20164,20159,2047),(499,20155,'com.liferay.portal.model.User',4,'20935',20164,20935,31),(500,20155,'com.liferay.portal.model.User',4,'20941',20164,20941,31),(501,20155,'com.liferay.portal.model.User',4,'20947',20164,20947,31),(502,20155,'com.liferay.portal.model.User',4,'20953',20164,20953,31),(503,20155,'com.liferay.portal.model.User',4,'20959',20164,20959,31),(504,20155,'com.liferay.portal.model.User',4,'20965',20164,20965,31),(505,20155,'com.liferay.portal.model.User',4,'20971',20164,20971,31),(506,20155,'com.liferay.portal.model.User',4,'20977',20164,20977,31),(507,20155,'com.liferay.portal.model.User',4,'20983',20164,20983,31),(508,20155,'com.liferay.portal.model.User',4,'20989',20164,20989,31),(509,20155,'com.liferay.portal.model.Organization',4,'20995',20164,20159,2047),(510,20155,'com.liferay.portal.model.Organization',4,'20999',20164,20159,2047),(511,20155,'com.liferay.portal.model.User',4,'21003',20164,21003,31),(512,20155,'com.liferay.portal.model.User',4,'21009',20164,21009,31),(513,20155,'com.liferay.portal.model.User',4,'21015',20164,21015,31),(514,20155,'com.liferay.portal.model.User',4,'21021',20164,21021,31),(515,20155,'com.liferay.portal.model.User',4,'21027',20164,21027,31),(516,20155,'com.liferay.portal.model.User',4,'21033',20164,21033,31),(517,20155,'com.liferay.portal.model.User',4,'21039',20164,21039,31),(518,20155,'com.liferay.portal.model.User',4,'21045',20164,21045,31),(519,20155,'com.liferay.portal.model.User',4,'21051',20164,21051,31),(520,20155,'com.liferay.portal.model.User',4,'21057',20164,21057,31),(521,20155,'com.liferay.portal.model.Organization',4,'21063',20164,20159,2047),(522,20155,'com.liferay.portal.model.User',4,'21067',20164,21067,31),(523,20155,'com.liferay.portal.model.User',4,'21073',20164,21073,31),(524,20155,'com.liferay.portal.model.User',4,'21079',20164,21079,31),(525,20155,'com.liferay.portal.model.User',4,'21085',20164,21085,31),(526,20155,'com.liferay.portal.model.User',4,'21091',20164,21091,31),(527,20155,'com.liferay.portal.model.User',4,'21097',20164,21097,31),(528,20155,'com.liferay.portal.model.User',4,'21103',20164,21103,31),(529,20155,'com.liferay.portal.model.User',4,'21109',20164,21109,31),(530,20155,'com.liferay.portal.model.User',4,'21115',20164,21115,31),(531,20155,'com.liferay.portal.model.User',4,'21121',20164,21121,31),(532,20155,'com.liferay.portal.model.Organization',4,'21127',20164,20159,2047),(533,20155,'com.liferay.portal.model.Organization',4,'21131',20164,20159,2047),(534,20155,'com.liferay.portal.model.User',4,'21135',20164,21135,31),(535,20155,'com.liferay.portal.model.User',4,'21141',20164,21141,31),(536,20155,'com.liferay.portal.model.User',4,'21147',20164,21147,31),(537,20155,'com.liferay.portal.model.User',4,'21153',20164,21153,31),(538,20155,'com.liferay.portal.model.User',4,'21159',20164,21159,31),(539,20155,'com.liferay.portal.model.User',4,'21165',20164,21165,31),(540,20155,'com.liferay.portal.model.User',4,'21171',20164,21171,31),(541,20155,'com.liferay.portal.model.User',4,'21177',20164,21177,31),(542,20155,'com.liferay.portal.model.User',4,'21183',20164,21183,31),(543,20155,'com.liferay.portal.model.User',4,'21189',20164,21189,31),(544,20155,'com.liferay.portal.model.Organization',4,'21195',20164,20159,2047),(545,20155,'com.liferay.portal.model.Layout',4,'21199',20164,20438,1023),(546,20155,'com.liferay.portal.model.Layout',4,'21205',20164,20438,1023),(547,20155,'com.liferay.portal.model.Layout',4,'21205',20166,0,19),(548,20155,'com.liferay.portal.model.Layout',4,'21205',20163,0,1),(549,20155,'145',4,'20189_LAYOUT_145',20164,0,63),(550,20155,'145',4,'20189_LAYOUT_145',20175,0,1),(551,20155,'145',4,'20189_LAYOUT_145',20163,0,1),(552,20155,'58',4,'20189_LAYOUT_58',20164,0,63),(553,20155,'58',4,'20189_LAYOUT_58',20175,0,1),(554,20155,'58',4,'20189_LAYOUT_58',20163,0,1),(555,20155,'47',4,'20189_LAYOUT_47',20164,0,63),(556,20155,'47',4,'20189_LAYOUT_47',20175,0,1),(557,20155,'47',4,'20189_LAYOUT_47',20163,0,1),(558,20155,'2_WAR_notificationsportlet',4,'20189_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(559,20155,'2_WAR_notificationsportlet',4,'20189_LAYOUT_2_WAR_notificationsportlet',20175,0,1),(560,20155,'2_WAR_notificationsportlet',4,'20189_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(561,20155,'com.liferay.portal.model.User',4,'21220',20164,20438,31),(562,20155,'com.liferay.portal.model.User',4,'21229',20164,20438,31),(601,20155,'portalb_WAR_epsosportal',1,'20155',20162,0,2),(602,20155,'portalb_WAR_epsosportal',1,'20155',20163,0,2),(603,20155,'portalb_WAR_epsosportal',1,'20155',20165,0,2),(604,20155,'portalb_WAR_epsosportal',1,'20155',20166,0,2),(605,20155,'localncp_WAR_epsosportal',1,'20155',20162,0,2),(606,20155,'localncp_WAR_epsosportal',1,'20155',20163,0,2),(607,20155,'localncp_WAR_epsosportal',1,'20155',20165,0,2),(608,20155,'localncp_WAR_epsosportal',1,'20155',20166,0,2),(609,20155,'pacrep_WAR_epsosportal',1,'20155',20162,0,2),(610,20155,'pacrep_WAR_epsosportal',1,'20155',20163,0,2),(611,20155,'pacrep_WAR_epsosportal',1,'20155',20165,0,2),(612,20155,'pacrep_WAR_epsosportal',1,'20155',20166,0,2),(613,20155,'trillium_WAR_epsosportal',1,'20155',20162,0,2),(614,20155,'trillium_WAR_epsosportal',1,'20155',20163,0,2),(615,20155,'trillium_WAR_epsosportal',1,'20155',20165,0,2),(616,20155,'trillium_WAR_epsosportal',1,'20155',20166,0,2),(617,20155,'pac_WAR_epsosportal',1,'20155',20162,0,2),(618,20155,'pac_WAR_epsosportal',1,'20155',20163,0,2),(619,20155,'pac_WAR_epsosportal',1,'20155',20165,0,2),(620,20155,'pac_WAR_epsosportal',1,'20155',20166,0,2),(621,20155,'com.liferay.portlet.journal',4,'20186',20164,0,255),(622,20155,'com.liferay.portlet.journal',4,'20186',20175,0,1),(623,20155,'com.liferay.portlet.journal',4,'20186',20163,0,1),(624,20155,'com.liferay.portlet.documentlibrary',4,'20186',20164,0,1023),(625,20155,'com.liferay.portlet.documentlibrary',4,'20186',20175,0,331),(626,20155,'com.liferay.portlet.documentlibrary',4,'20186',20163,0,1),(801,20155,'com.liferay.portal.model.Layout',4,'21501',20164,21220,1023),(802,20155,'com.liferay.portal.model.Layout',4,'21507',20164,21220,1023),(803,20155,'com.liferay.portal.model.Layout',4,'21507',20166,0,19),(804,20155,'com.liferay.portal.model.Layout',4,'21507',20163,0,1),(901,20155,'portalb_WAR_epsosportal',4,'20189_LAYOUT_portalb_WAR_epsosportal',20164,0,63),(902,20155,'portalb_WAR_epsosportal',4,'20189_LAYOUT_portalb_WAR_epsosportal',20175,0,1),(903,20155,'portalb_WAR_epsosportal',4,'20189_LAYOUT_portalb_WAR_epsosportal',20163,0,0),(1001,20155,'49',4,'20189_LAYOUT_49',20164,0,63),(1002,20155,'49',4,'20189_LAYOUT_49',20175,0,1),(1003,20155,'49',4,'20189_LAYOUT_49',20163,0,1),(1101,20155,'com.liferay.portal.model.User',4,'21702',20164,20438,31),(1102,20155,'com.liferay.portal.model.Layout',4,'21712',20164,21702,1023),(1103,20155,'com.liferay.portal.model.Layout',4,'21718',20164,21702,1023),(1104,20155,'com.liferay.portal.model.Layout',4,'21718',20166,0,19),(1105,20155,'com.liferay.portal.model.Layout',4,'21718',20163,0,1),(1201,20155,'com.liferay.portal.model.Layout',4,'21901',20164,21229,1023),(1202,20155,'com.liferay.portal.model.Layout',4,'21907',20164,21229,1023),(1203,20155,'com.liferay.portal.model.Layout',4,'21907',20166,0,19),(1204,20155,'com.liferay.portal.model.Layout',4,'21907',20163,0,1),(1301,20155,'tsleditor_WAR_tsleditorportlet',1,'20155',20162,0,256),(1302,20155,'tsleditor_WAR_tsleditorportlet',1,'20155',20163,0,256),(1303,20155,'tsleditor_WAR_tsleditorportlet',1,'20155',20165,0,256),(1304,20155,'tsleditor_WAR_tsleditorportlet',1,'20155',20166,0,256),(1401,20155,'com.liferay.portal.model.Layout',4,'22101',20164,20438,1023),(1402,20155,'com.liferay.portal.model.Layout',4,'22101',20175,0,19),(1403,20155,'com.liferay.portal.model.Layout',4,'22101',20163,0,0),(1404,20155,'145',4,'22101_LAYOUT_145',20164,0,63),(1405,20155,'145',4,'22101_LAYOUT_145',20175,0,1),(1406,20155,'145',4,'22101_LAYOUT_145',20163,0,1),(1407,20155,'2_WAR_notificationsportlet',4,'22101_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(1408,20155,'2_WAR_notificationsportlet',4,'22101_LAYOUT_2_WAR_notificationsportlet',20175,0,1),(1409,20155,'2_WAR_notificationsportlet',4,'22101_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(1410,20155,'tsleditor_WAR_tsleditorportlet',4,'22101_LAYOUT_tsleditor_WAR_tsleditorportlet',20164,0,4095),(1411,20155,'tsleditor_WAR_tsleditorportlet',4,'22101_LAYOUT_tsleditor_WAR_tsleditorportlet',20175,0,1),(1412,20155,'tsleditor_WAR_tsleditorportlet',4,'22101_LAYOUT_tsleditor_WAR_tsleditorportlet',20163,0,2),(1501,20155,'86',4,'20189_LAYOUT_86',20164,0,63),(1502,20155,'86',4,'20189_LAYOUT_86',20175,0,1),(1503,20155,'86',4,'20189_LAYOUT_86',20163,0,1),(1504,20155,'portalb_WAR_epsosportal',4,'20189_LAYOUT_portalb_WAR_epsosportal',20167,0,1),(1505,20155,'portalb_WAR_epsosportal',4,'20189_LAYOUT_portalb_WAR_epsosportal',20168,0,1),(1506,20155,'portalb_WAR_epsosportal',4,'20189_LAYOUT_portalb_WAR_epsosportal',20170,0,1),(1507,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22206',20164,20159,255),(1508,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22206',20166,0,29),(1509,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22206',20163,0,1),(1510,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22207',20164,20438,255),(1511,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22207',20166,0,29),(1512,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22207',20163,0,1),(1513,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22208',20164,20438,255),(1514,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22208',20166,0,29),(1515,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'22208',20163,0,1),(1522,20155,'82',4,'21507_LAYOUT_82',20164,0,63),(1523,20155,'33',4,'21507_LAYOUT_33',20164,0,127),(1524,20155,'82',4,'21507_LAYOUT_82',20166,0,1),(1525,20155,'33',4,'21507_LAYOUT_33',20166,0,1),(1526,20155,'82',4,'21507_LAYOUT_82',20163,0,1),(1527,20155,'33',4,'21507_LAYOUT_33',20163,0,1),(1528,20155,'com.liferay.portlet.blogs',4,'21222',20164,0,14),(1529,20155,'3',4,'21507_LAYOUT_3',20164,0,63),(1530,20155,'3',4,'21507_LAYOUT_3',20166,0,1),(1531,20155,'3',4,'21507_LAYOUT_3',20163,0,1),(1532,20155,'145',4,'21507_LAYOUT_145',20164,0,63),(1533,20155,'145',4,'21507_LAYOUT_145',20166,0,1),(1534,20155,'145',4,'21507_LAYOUT_145',20163,0,1),(1535,20155,'2_WAR_notificationsportlet',4,'21507_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(1536,20155,'2_WAR_notificationsportlet',4,'21507_LAYOUT_2_WAR_notificationsportlet',20166,0,1),(1537,20155,'2_WAR_notificationsportlet',4,'21507_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(1538,20155,'49',4,'21507_LAYOUT_49',20164,0,63),(1539,20155,'49',4,'21507_LAYOUT_49',20166,0,1),(1540,20155,'49',4,'21507_LAYOUT_49',20163,0,1),(1541,20155,'82',4,'21501_LAYOUT_82',20164,0,63),(1542,20155,'82',4,'21501_LAYOUT_82',20166,0,1),(1543,20155,'23',4,'21501_LAYOUT_23',20164,0,63),(1544,20155,'23',4,'21501_LAYOUT_23',20166,0,1),(1545,20155,'11',4,'21501_LAYOUT_11',20164,0,63),(1546,20155,'29',4,'21501_LAYOUT_29',20164,0,63),(1547,20155,'29',4,'21501_LAYOUT_29',20166,0,1),(1548,20155,'145',4,'21501_LAYOUT_145',20164,0,63),(1549,20155,'145',4,'21501_LAYOUT_145',20166,0,1),(1550,20155,'2_WAR_notificationsportlet',4,'21501_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(1551,20155,'2_WAR_notificationsportlet',4,'21501_LAYOUT_2_WAR_notificationsportlet',20166,0,1),(1601,20155,'com.liferay.portal.model.User',4,'22301',20164,20438,31),(1602,20155,'com.liferay.portal.model.Layout',4,'22310',20164,22301,1023),(1603,20155,'com.liferay.portal.model.Layout',4,'22316',20164,22301,1023),(1604,20155,'com.liferay.portal.model.Layout',4,'22316',20166,0,19),(1605,20155,'com.liferay.portal.model.Layout',4,'22316',20163,0,1);
/*!40000 ALTER TABLE `resourcepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcetypepermission`
--

DROP TABLE IF EXISTS `resourcetypepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcetypepermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`),
  UNIQUE KEY `IX_BA497163` (`companyId`,`groupId`,`name`,`roleId`),
  KEY `IX_7D81F66F` (`companyId`,`name`,`roleId`),
  KEY `IX_A82690E2` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcetypepermission`
--

LOCK TABLES `resourcetypepermission` WRITE;
/*!40000 ALTER TABLE `resourcetypepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourcetypepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_`
--

DROP TABLE IF EXISTS `role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_EBC931B8` (`companyId`,`name`),
  KEY `IX_449A10B9` (`companyId`),
  KEY `IX_F3E1C6FC` (`companyId`,`type_`),
  KEY `IX_F436EC8E` (`name`),
  KEY `IX_5EB4E2FB` (`subtype`),
  KEY `IX_F92B66E6` (`type_`),
  KEY `IX_CBE204` (`type_`,`subtype`),
  KEY `IX_26DB26C5` (`uuid_`),
  KEY `IX_B9FF6043` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_`
--

LOCK TABLES `role_` WRITE;
/*!40000 ALTER TABLE `role_` DISABLE KEYS */;
INSERT INTO `role_` VALUES ('e569f8aa-3882-4df7-8521-aece19fbc576',20162,20155,20159,'','2017-01-09 16:25:43','2017-01-09 16:25:43',20004,20162,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),('3942a487-dbea-4fb1-a6dc-8d17b999efdc',20163,20155,20159,'','2017-01-09 16:25:43','2017-01-09 16:25:43',20004,20163,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),('ddb23813-7a33-4787-81a6-0995306ac2cf',20164,20155,20159,'','2017-01-09 16:25:43','2017-01-09 16:25:43',20004,20164,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),('7414a810-00c8-4286-8b59-0865a1a9ef38',20165,20155,20159,'','2017-01-09 16:25:43','2017-01-09 16:25:43',20004,20165,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),('c1b6a906-e69a-4f84-a2ba-3667965ec959',20166,20155,20159,'','2017-01-09 16:25:43','2017-01-09 16:25:43',20004,20166,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),('484b7b3c-df49-413d-829f-80cd9f7eb44d',20167,20155,20159,'','2017-01-09 16:25:43','2017-01-09 16:25:43',20004,20167,'Doctor','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Doctor Role</Description></root>',1,''),('e693e13e-a4c5-49a9-a0ac-f2c973744054',20168,20155,20159,'','2017-01-09 16:25:43','2017-01-09 16:25:43',20004,20168,'Pharmacist','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Pharmacist Role</Description></root>',1,''),('329f6c36-f632-40e3-b36e-a026b45d52c3',20169,20155,20159,'','2017-01-09 16:25:43','2017-01-09 16:25:43',20004,20169,'Patient','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Patient Role</Description></root>',1,''),('33b22a94-fd9b-41be-9dfe-682cd8b52f35',20170,20155,20159,'','2017-01-09 16:25:43','2017-01-09 16:25:43',20004,20170,'Nurse','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Nurse role</Description></root>',1,''),('c2bd7119-f789-4d5c-a378-a1f728b17527',20171,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',20004,20171,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),('15091aec-e540-4316-a074-8ee00238faee',20172,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',20004,20172,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),('294785ba-c085-41ee-ba7b-0874349db5e5',20173,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',20004,20173,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),('0699474d-ce46-488c-9d3e-6ae28b256415',20174,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',20004,20174,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),('8ee5a1cb-ae7b-4113-8112-b2eaeb6a90ca',20175,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',20004,20175,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),('e020cd09-231b-4925-bc7b-bd0530cabfd7',20176,20155,20159,'','2017-01-09 16:25:44','2017-01-09 16:25:44',20004,20176,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,''),('87f0dc21-4a30-4927-bd74-a0442767f4c2',20491,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54',20004,20491,'Organization Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',3,''),('17a7f6d0-3224-432b-b144-86cd0d494e55',20493,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54',20004,20493,'Site Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',2,''),('16a94c15-5811-47f0-9b09-be05bafc8691',20495,20155,20159,'','2017-01-09 16:27:54','2017-01-09 16:27:54',20004,20495,'Portal Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',1,'');
/*!40000 ALTER TABLE `role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scframeworkversi_scproductvers`
--

DROP TABLE IF EXISTS `scframeworkversi_scproductvers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scframeworkversi_scproductvers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`),
  KEY `IX_3BB93ECA` (`frameworkVersionId`),
  KEY `IX_E8D33FF9` (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scframeworkversi_scproductvers`
--

LOCK TABLES `scframeworkversi_scproductvers` WRITE;
/*!40000 ALTER TABLE `scframeworkversi_scproductvers` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversi_scproductvers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scframeworkversion`
--

DROP TABLE IF EXISTS `scframeworkversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scframeworkversion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`),
  KEY `IX_C98C0D78` (`companyId`),
  KEY `IX_272991FA` (`groupId`),
  KEY `IX_6E1764F` (`groupId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scframeworkversion`
--

LOCK TABLES `scframeworkversion` WRITE;
/*!40000 ALTER TABLE `scframeworkversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sclicense`
--

DROP TABLE IF EXISTS `sclicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sclicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`),
  KEY `IX_1C841592` (`active_`),
  KEY `IX_5327BB79` (`active_`,`recommended`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sclicense`
--

LOCK TABLES `sclicense` WRITE;
/*!40000 ALTER TABLE `sclicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sclicenses_scproductentries`
--

DROP TABLE IF EXISTS `sclicenses_scproductentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sclicenses_scproductentries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`),
  KEY `IX_27006638` (`licenseId`),
  KEY `IX_D7710A66` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sclicenses_scproductentries`
--

LOCK TABLES `sclicenses_scproductentries` WRITE;
/*!40000 ALTER TABLE `sclicenses_scproductentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicenses_scproductentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductentry`
--

DROP TABLE IF EXISTS `scproductentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductentry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`),
  KEY `IX_5D25244F` (`companyId`),
  KEY `IX_72F87291` (`groupId`),
  KEY `IX_98E6A9CB` (`groupId`,`userId`),
  KEY `IX_7311E812` (`repoGroupId`,`repoArtifactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductentry`
--

LOCK TABLES `scproductentry` WRITE;
/*!40000 ALTER TABLE `scproductentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductscreenshot`
--

DROP TABLE IF EXISTS `scproductscreenshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductscreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`),
  KEY `IX_AE8224CC` (`fullImageId`),
  KEY `IX_467956FD` (`productEntryId`),
  KEY `IX_DA913A55` (`productEntryId`,`priority`),
  KEY `IX_6C572DAC` (`thumbnailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductscreenshot`
--

LOCK TABLES `scproductscreenshot` WRITE;
/*!40000 ALTER TABLE `scproductscreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductscreenshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductversion`
--

DROP TABLE IF EXISTS `scproductversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductversion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`),
  KEY `IX_8377A211` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductversion`
--

LOCK TABLES `scproductversion` WRITE;
/*!40000 ALTER TABLE `scproductversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicecomponent`
--

DROP TABLE IF EXISTS `servicecomponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicecomponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`),
  UNIQUE KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`),
  KEY `IX_7338606F` (`buildNamespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecomponent`
--

LOCK TABLES `servicecomponent` WRITE;
/*!40000 ALTER TABLE `servicecomponent` DISABLE KEYS */;
INSERT INTO `servicecomponent` VALUES (20446,'Marketplace',4,1410828214125,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	title VARCHAR(75) null,\n	description STRING null,\n	category VARCHAR(75) null,\n	iconURL STRING null,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	bundleSymbolicName VARCHAR(500) null,\n	bundleVersion VARCHAR(75) null,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_94A7EF25 on Marketplace_App (category);\ncreate index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\ncreate index IX_A7807DA7 on Marketplace_App (uuid_, companyId);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_5848F52D on Marketplace_Module (appId, bundleSymbolicName, bundleVersion);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_DD03D499 on Marketplace_Module (bundleSymbolicName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>'),(20454,'Calendar',4,1424703239325,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Calendar (\n	uuid_ VARCHAR(75) null,\n	calendarId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarResourceId LONG,\n	name STRING null,\n	description STRING null,\n	timeZoneId VARCHAR(75) null,\n	color INTEGER,\n	defaultCalendar BOOLEAN,\n	enableComments BOOLEAN,\n	enableRatings BOOLEAN\n);\n\ncreate table CalendarBooking (\n	uuid_ VARCHAR(75) null,\n	calendarBookingId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarId LONG,\n	calendarResourceId LONG,\n	parentCalendarBookingId LONG,\n	vEventUid VARCHAR(255) null,\n	title STRING null,\n	description TEXT null,\n	location STRING null,\n	startTime LONG,\n	endTime LONG,\n	allDay BOOLEAN,\n	recurrence STRING null,\n	firstReminder LONG,\n	firstReminderType VARCHAR(75) null,\n	secondReminder LONG,\n	secondReminderType VARCHAR(75) null,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null\n);\n\ncreate table CalendarNotificationTemplate (\n	uuid_ VARCHAR(75) null,\n	calendarNotificationTemplateId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	calendarId LONG,\n	notificationType VARCHAR(75) null,\n	notificationTypeSettings VARCHAR(75) null,\n	notificationTemplateType VARCHAR(75) null,\n	subject VARCHAR(75) null,\n	body TEXT null\n);\n\ncreate table CalendarResource (\n	uuid_ VARCHAR(75) null,\n	calendarResourceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	classNameId LONG,\n	classPK LONG,\n	classUuid VARCHAR(75) null,\n	code_ VARCHAR(75) null,\n	name STRING null,\n	description STRING null,\n	active_ BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_B53EB0E1 on Calendar (groupId, calendarResourceId);\ncreate index IX_97FC174E on Calendar (groupId, calendarResourceId, defaultCalendar);\ncreate index IX_F0FAF226 on Calendar (resourceBlockId);\ncreate index IX_96C8590 on Calendar (uuid_);\ncreate index IX_97656498 on Calendar (uuid_, companyId);\ncreate unique index IX_3AE311A on Calendar (uuid_, groupId);\n\ncreate index IX_D300DFCE on CalendarBooking (calendarId);\ncreate unique index IX_113A264E on CalendarBooking (calendarId, parentCalendarBookingId);\ncreate index IX_470170B4 on CalendarBooking (calendarId, status);\ncreate unique index IX_8B23DA0E on CalendarBooking (calendarId, vEventUid);\ncreate index IX_B198FFC on CalendarBooking (calendarResourceId);\ncreate index IX_57EBF55B on CalendarBooking (parentCalendarBookingId);\ncreate index IX_F7B8A941 on CalendarBooking (parentCalendarBookingId, status);\ncreate index IX_22DFDB49 on CalendarBooking (resourceBlockId);\ncreate index IX_F6E8EE73 on CalendarBooking (uuid_);\ncreate index IX_A21D9FD5 on CalendarBooking (uuid_, companyId);\ncreate unique index IX_F4C61797 on CalendarBooking (uuid_, groupId);\n\ncreate index IX_A412E5B6 on CalendarNotificationTemplate (calendarId);\ncreate index IX_7727A482 on CalendarNotificationTemplate (calendarId, notificationType, notificationTemplateType);\ncreate index IX_A2D4D78B on CalendarNotificationTemplate (uuid_);\ncreate index IX_4D7D97BD on CalendarNotificationTemplate (uuid_, companyId);\ncreate unique index IX_4012E97F on CalendarNotificationTemplate (uuid_, groupId);\n\ncreate index IX_76DDD0F7 on CalendarResource (active_);\ncreate unique index IX_16A12327 on CalendarResource (classNameId, classPK);\ncreate index IX_4470A59D on CalendarResource (companyId, code_, active_);\ncreate index IX_1243D698 on CalendarResource (groupId);\ncreate index IX_40678371 on CalendarResource (groupId, active_);\ncreate index IX_55C2F8AA on CalendarResource (groupId, code_);\ncreate index IX_8BCB4D38 on CalendarResource (resourceBlockId);\ncreate index IX_150E2F22 on CalendarResource (uuid_);\ncreate index IX_56A06BC6 on CalendarResource (uuid_, companyId);\ncreate unique index IX_4ABD2BC8 on CalendarResource (uuid_, groupId);]]></indexes-sql>\n</data>'),(20473,'Kaleo',8,1425595080483,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table KaleoAction (\n	kaleoActionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	scriptRequiredContexts STRING null,\n	priority INTEGER\n);\n\ncreate table KaleoCondition (\n	kaleoConditionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	scriptRequiredContexts STRING null\n);\n\ncreate table KaleoDefinition (\n	kaleoDefinitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(200) null,\n	title STRING null,\n	description STRING null,\n	content TEXT null,\n	version INTEGER,\n	active_ BOOLEAN,\n	startKaleoNodeId LONG\n);\n\ncreate table KaleoInstance (\n	kaleoInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoDefinitionName VARCHAR(200) null,\n	kaleoDefinitionVersion INTEGER,\n	rootKaleoInstanceTokenId LONG,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoInstanceToken (\n	kaleoInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	parentKaleoInstanceTokenId LONG,\n	currentKaleoNodeId LONG,\n	currentKaleoNodeName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoLog (\n	kaleoLogId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	terminalKaleoNode BOOLEAN,\n	kaleoActionId LONG,\n	kaleoActionName VARCHAR(200) null,\n	kaleoActionDescription STRING null,\n	previousKaleoNodeId LONG,\n	previousKaleoNodeName VARCHAR(200) null,\n	previousAssigneeClassName VARCHAR(200) null,\n	previousAssigneeClassPK LONG,\n	currentAssigneeClassName VARCHAR(200) null,\n	currentAssigneeClassPK LONG,\n	type_ VARCHAR(50) null,\n	comment_ TEXT null,\n	startDate DATE null,\n	endDate DATE null,\n	duration LONG,\n	workflowContext TEXT null\n);\n\ncreate table KaleoNode (\n	kaleoNodeId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	name VARCHAR(200) null,\n	metadata STRING null,\n	description STRING null,\n	type_ VARCHAR(20) null,\n	initial_ BOOLEAN,\n	terminal BOOLEAN\n);\n\ncreate table KaleoNotification (\n	kaleoNotificationId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	template TEXT null,\n	templateLanguage VARCHAR(75) null,\n	notificationTypes VARCHAR(25) null\n);\n\ncreate table KaleoNotificationRecipient (\n	kaleoNotificationRecipientId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNotificationId LONG,\n	recipientClassName VARCHAR(200) null,\n	recipientClassPK LONG,\n	recipientRoleType INTEGER,\n	address VARCHAR(255) null\n);\n\ncreate table KaleoTask (\n	kaleoTaskId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null\n);\n\ncreate table KaleoTaskAssignment (\n	kaleoTaskAssignmentId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	assigneeActionId VARCHAR(75) null,\n	assigneeScript TEXT null,\n	assigneeScriptLanguage VARCHAR(75) null,\n	assigneeScriptRequiredContexts STRING null\n);\n\ncreate table KaleoTaskAssignmentInstance (\n	kaleoTaskAssignmentInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoTaskInstanceToken (\n	kaleoTaskInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	dueDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTimer (\n	kaleoTimerId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	name VARCHAR(75) null,\n	blocking BOOLEAN,\n	description STRING null,\n	duration DOUBLE,\n	scale VARCHAR(75) null,\n	recurrenceDuration DOUBLE,\n	recurrenceScale VARCHAR(75) null\n);\n\ncreate table KaleoTimerInstanceToken (\n	kaleoTimerInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTimerId LONG,\n	kaleoTimerName VARCHAR(200) null,\n	blocking BOOLEAN,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTransition (\n	kaleoTransitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null,\n	sourceKaleoNodeId LONG,\n	sourceKaleoNodeName VARCHAR(200) null,\n	targetKaleoNodeId LONG,\n	targetKaleoNodeName VARCHAR(200) null,\n	defaultTransition BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_50E9112C on KaleoAction (companyId);\ncreate index IX_170EFD7A on KaleoAction (kaleoClassName, kaleoClassPK);\ncreate index IX_4B2545E8 on KaleoAction (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_F95A622 on KaleoAction (kaleoDefinitionId);\n\ncreate index IX_FEE46067 on KaleoCondition (companyId);\ncreate index IX_DC978A5D on KaleoCondition (kaleoDefinitionId);\ncreate index IX_86CBD4C on KaleoCondition (kaleoNodeId);\n\ncreate index IX_40B9112F on KaleoDefinition (companyId);\ncreate index IX_408542BA on KaleoDefinition (companyId, active_);\ncreate index IX_76C781AE on KaleoDefinition (companyId, name);\ncreate index IX_4C23F11B on KaleoDefinition (companyId, name, active_);\ncreate index IX_EC14F81A on KaleoDefinition (companyId, name, version);\n\ncreate index IX_58D85ECB on KaleoInstance (className, classPK);\ncreate index IX_5F2FCD2D on KaleoInstance (companyId);\ncreate index IX_BF5839F8 on KaleoInstance (companyId, kaleoDefinitionName, kaleoDefinitionVersion, completionDate);\ncreate index IX_C6D7A867 on KaleoInstance (companyId, userId);\ncreate index IX_4DA4D123 on KaleoInstance (kaleoDefinitionId);\ncreate index IX_ACF16238 on KaleoInstance (kaleoDefinitionId, completed);\n\ncreate index IX_153721BE on KaleoInstanceToken (companyId);\ncreate index IX_4A86923B on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId);\ncreate index IX_360D34D9 on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId, completionDate);\ncreate index IX_7BDB04B4 on KaleoInstanceToken (kaleoDefinitionId);\ncreate index IX_F42AAFF6 on KaleoInstanceToken (kaleoInstanceId);\n\ncreate index IX_73B5F4DE on KaleoLog (companyId);\ncreate index IX_E66A153A on KaleoLog (kaleoClassName, kaleoClassPK, kaleoInstanceTokenId, type_);\ncreate index IX_6C64B7D4 on KaleoLog (kaleoDefinitionId);\ncreate index IX_5BC6AB16 on KaleoLog (kaleoInstanceId);\ncreate index IX_470B9FF8 on KaleoLog (kaleoInstanceTokenId, type_);\ncreate index IX_B0CDCA38 on KaleoLog (kaleoTaskInstanceTokenId);\n\ncreate index IX_C4E9ACE0 on KaleoNode (companyId);\ncreate index IX_F28C443E on KaleoNode (companyId, kaleoDefinitionId);\ncreate index IX_32E94DD6 on KaleoNode (kaleoDefinitionId);\n\ncreate index IX_38829497 on KaleoNotification (companyId);\ncreate index IX_902D342F on KaleoNotification (kaleoClassName, kaleoClassPK);\ncreate index IX_F3362E93 on KaleoNotification (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_4B968E8D on KaleoNotification (kaleoDefinitionId);\n\ncreate index IX_2C8C4AF4 on KaleoNotificationRecipient (companyId);\ncreate index IX_AA6697EA on KaleoNotificationRecipient (kaleoDefinitionId);\ncreate index IX_7F4FED02 on KaleoNotificationRecipient (kaleoNotificationId);\n\ncreate index IX_E1F8B23D on KaleoTask (companyId);\ncreate index IX_3FFA633 on KaleoTask (kaleoDefinitionId);\ncreate index IX_77B3F1A2 on KaleoTask (kaleoNodeId);\n\ncreate index IX_611732B0 on KaleoTaskAssignment (companyId);\ncreate index IX_D835C576 on KaleoTaskAssignment (kaleoClassName, kaleoClassPK);\ncreate index IX_1087068E on KaleoTaskAssignment (kaleoClassName, kaleoClassPK, assigneeClassName);\ncreate index IX_575C03A6 on KaleoTaskAssignment (kaleoDefinitionId);\n\ncreate index IX_945F4EB7 on KaleoTaskAssignmentInstance (assigneeClassName);\ncreate index IX_3BD436FD on KaleoTaskAssignmentInstance (assigneeClassName, assigneeClassPK);\ncreate index IX_6E3CDA1B on KaleoTaskAssignmentInstance (companyId);\ncreate index IX_38A47B17 on KaleoTaskAssignmentInstance (groupId, assigneeClassPK);\ncreate index IX_C851011 on KaleoTaskAssignmentInstance (kaleoDefinitionId);\ncreate index IX_67A9EE93 on KaleoTaskAssignmentInstance (kaleoInstanceId);\ncreate index IX_D4C2235B on KaleoTaskAssignmentInstance (kaleoTaskInstanceTokenId);\n\ncreate index IX_A3271995 on KaleoTaskInstanceToken (className, classPK);\ncreate index IX_997FE723 on KaleoTaskInstanceToken (companyId);\ncreate index IX_608E9519 on KaleoTaskInstanceToken (kaleoDefinitionId);\ncreate index IX_2CE1159B on KaleoTaskInstanceToken (kaleoInstanceId);\ncreate index IX_B857A115 on KaleoTaskInstanceToken (kaleoInstanceId, kaleoTaskId);\n\ncreate index IX_4DE6A889 on KaleoTimer (kaleoClassName, kaleoClassPK);\ncreate index IX_1A479F32 on KaleoTimer (kaleoClassName, kaleoClassPK, blocking);\n\ncreate index IX_DB96C55B on KaleoTimerInstanceToken (kaleoInstanceId);\ncreate index IX_DB279423 on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed);\ncreate index IX_9932524C on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed, blocking);\ncreate index IX_13A5BA2C on KaleoTimerInstanceToken (kaleoInstanceTokenId, kaleoTimerId);\n\ncreate index IX_41D6C6D on KaleoTransition (companyId);\ncreate index IX_479F3063 on KaleoTransition (kaleoDefinitionId);\ncreate index IX_A392DFD2 on KaleoTransition (kaleoNodeId);\ncreate index IX_A38E2194 on KaleoTransition (kaleoNodeId, defaultTransition);\ncreate index IX_85268A11 on KaleoTransition (kaleoNodeId, name);]]></indexes-sql>\n</data>'),(20507,'Sync',6,1445034861916,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table SyncDLFileVersionDiff (\n	syncDLFileVersionDiffId LONG not null primary key,\n	fileEntryId LONG,\n	sourceFileVersionId LONG,\n	targetFileVersionId LONG,\n	dataFileEntryId LONG,\n	size_ LONG,\n	expirationDate DATE null\n);\n\ncreate table SyncDLObject (\n	syncDLObjectId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createTime LONG,\n	modifiedTime LONG,\n	repositoryId LONG,\n	parentFolderId LONG,\n	treePath STRING null,\n	name VARCHAR(255) null,\n	extension VARCHAR(75) null,\n	mimeType VARCHAR(75) null,\n	description STRING null,\n	changeLog VARCHAR(75) null,\n	extraSettings TEXT null,\n	version VARCHAR(75) null,\n	versionId LONG,\n	size_ LONG,\n	checksum VARCHAR(75) null,\n	event VARCHAR(75) null,\n	lastPermissionChangeDate DATE null,\n	lockExpirationDate DATE null,\n	lockUserId LONG,\n	lockUserName VARCHAR(75) null,\n	type_ VARCHAR(75) null,\n	typePK LONG,\n	typeUuid VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_A9B43C55 on SyncDLFileVersionDiff (expirationDate);\ncreate index IX_F832A75D on SyncDLFileVersionDiff (fileEntryId);\ncreate unique index IX_AC4C7667 on SyncDLFileVersionDiff (fileEntryId, sourceFileVersionId, targetFileVersionId);\n\ncreate index IX_980323CB on SyncDLObject (modifiedTime, repositoryId);\ncreate index IX_8D4FDC9F on SyncDLObject (modifiedTime, repositoryId, event);\ncreate index IX_A3ACE372 on SyncDLObject (modifiedTime, repositoryId, parentFolderId);\ncreate index IX_F174AD48 on SyncDLObject (repositoryId, parentFolderId);\ncreate index IX_3BE7BB8D on SyncDLObject (repositoryId, parentFolderId, type_);\ncreate index IX_57F62914 on SyncDLObject (repositoryId, type_);\ncreate unique index IX_E3F57BD6 on SyncDLObject (type_, typePK);\ncreate index IX_28CD54BB on SyncDLObject (type_, version);\ncreate index IX_1CCA3B5 on SyncDLObject (version, type_);]]></indexes-sql>\n</data>'),(20512,'OpenSocial',4,1343264401607,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table OpenSocial_Gadget (\n	uuid_ VARCHAR(75) null,\n	gadgetId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	url STRING null,\n	portletCategoryNames STRING null\n);\n\ncreate table OpenSocial_OAuthConsumer (\n	oAuthConsumerId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	consumerKey VARCHAR(75) null,\n	consumerSecret TEXT null,\n	keyType VARCHAR(75) null\n);\n\ncreate table OpenSocial_OAuthToken (\n	oAuthTokenId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	moduleId LONG,\n	accessToken VARCHAR(75) null,\n	tokenName VARCHAR(75) null,\n	tokenSecret VARCHAR(75) null,\n	sessionHandle VARCHAR(75) null,\n	expiration LONG\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_729869EE on OpenSocial_Gadget (companyId);\ncreate unique index IX_A6A89EB1 on OpenSocial_Gadget (companyId, url);\ncreate index IX_E1F8627A on OpenSocial_Gadget (uuid_);\ncreate index IX_3C79316E on OpenSocial_Gadget (uuid_, companyId);\n\ncreate index IX_47206618 on OpenSocial_OAuthConsumer (gadgetKey);\ncreate index IX_8E715BF8 on OpenSocial_OAuthConsumer (gadgetKey, serviceName);\n\ncreate index IX_6C8CCC3D on OpenSocial_OAuthToken (gadgetKey, serviceName);\ncreate index IX_CDD35402 on OpenSocial_OAuthToken (userId, gadgetKey, serviceName, moduleId, tokenName);]]></indexes-sql>\n</data>'),(20520,'Notification',1,1409250476826,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Notifications_UserNotificationEvent (\n	notificationEventId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userNotificationEventId LONG,\n	timestamp LONG,\n	delivered BOOLEAN,\n	actionRequired BOOLEAN,\n	archived BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_93C52776 on Notifications_UserNotificationEvent (userId, actionRequired);\ncreate index IX_36E5AE4C on Notifications_UserNotificationEvent (userId, actionRequired, archived);\ncreate index IX_73C065F0 on Notifications_UserNotificationEvent (userId, delivered, actionRequired);\ncreate unique index IX_DC9FCEDC on Notifications_UserNotificationEvent (userNotificationEventId);]]></indexes-sql>\n</data>');
/*!40000 ALTER TABLE `servicecomponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shard`
--

DROP TABLE IF EXISTS `shard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`),
  KEY `IX_DA5F4359` (`classNameId`,`classPK`),
  KEY `IX_941BA8C3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shard`
--

LOCK TABLES `shard` WRITE;
/*!40000 ALTER TABLE `shard` DISABLE KEYS */;
INSERT INTO `shard` VALUES (20156,20025,20155,'default');
/*!40000 ALTER TABLE `shard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  UNIQUE KEY `IX_FC46FE16` (`groupId`,`userId`),
  KEY `IX_C28B41DC` (`groupId`),
  KEY `IX_54101CC8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcategory`
--

DROP TABLE IF EXISTS `shoppingcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`),
  KEY `IX_5F615D3E` (`groupId`),
  KEY `IX_6A84467D` (`groupId`,`name`),
  KEY `IX_1E6464F5` (`groupId`,`parentCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcategory`
--

LOCK TABLES `shoppingcategory` WRITE;
/*!40000 ALTER TABLE `shoppingcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcoupon`
--

DROP TABLE IF EXISTS `shoppingcoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`),
  UNIQUE KEY `IX_DC60CFAE` (`code_`),
  KEY `IX_3251AF16` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcoupon`
--

LOCK TABLES `shoppingcoupon` WRITE;
/*!40000 ALTER TABLE `shoppingcoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitem`
--

DROP TABLE IF EXISTS `shoppingitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `IX_1C717CA6` (`companyId`,`sku`),
  KEY `IX_FEFE7D76` (`groupId`,`categoryId`),
  KEY `IX_903DC750` (`largeImageId`),
  KEY `IX_D217AB30` (`mediumImageId`),
  KEY `IX_FF203304` (`smallImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitem`
--

LOCK TABLES `shoppingitem` WRITE;
/*!40000 ALTER TABLE `shoppingitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitemfield`
--

DROP TABLE IF EXISTS `shoppingitemfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitemfield` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`),
  KEY `IX_6D5F9B87` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitemfield`
--

LOCK TABLES `shoppingitemfield` WRITE;
/*!40000 ALTER TABLE `shoppingitemfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitemprice`
--

DROP TABLE IF EXISTS `shoppingitemprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitemprice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`),
  KEY `IX_EA6FD516` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitemprice`
--

LOCK TABLES `shoppingitemprice` WRITE;
/*!40000 ALTER TABLE `shoppingitemprice` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingorder`
--

DROP TABLE IF EXISTS `shoppingorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingorder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE KEY `IX_D7D6E87A` (`number_`),
  KEY `IX_1D15553E` (`groupId`),
  KEY `IX_119B5630` (`groupId`,`userId`,`ppPaymentStatus`),
  KEY `IX_F474FD89` (`ppTxnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingorder`
--

LOCK TABLES `shoppingorder` WRITE;
/*!40000 ALTER TABLE `shoppingorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingorderitem`
--

DROP TABLE IF EXISTS `shoppingorderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingorderitem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `IX_B5F82C7A` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingorderitem`
--

LOCK TABLES `shoppingorderitem` WRITE;
/*!40000 ALTER TABLE `shoppingorderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivity`
--

DROP TABLE IF EXISTS `socialactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `activitySetId` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentClassNameId` bigint(20) DEFAULT NULL,
  `parentClassPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`),
  UNIQUE KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_F542E9BC` (`activitySetId`),
  KEY `IX_82E39A0C` (`classNameId`),
  KEY `IX_A853C757` (`classNameId`,`classPK`),
  KEY `IX_D0E9029E` (`classNameId`,`classPK`,`type_`),
  KEY `IX_64B1BC66` (`companyId`),
  KEY `IX_2A2468` (`groupId`),
  KEY `IX_FB604DC7` (`groupId`,`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_1271F25F` (`mirrorActivityId`),
  KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`),
  KEY `IX_121CA3CB` (`receiverUserId`),
  KEY `IX_3504B8BC` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivity`
--

LOCK TABLES `socialactivity` WRITE;
/*!40000 ALTER TABLE `socialactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivityachievement`
--

DROP TABLE IF EXISTS `socialactivityachievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivityachievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`),
  UNIQUE KEY `IX_D4390CAA` (`groupId`,`userId`,`name`),
  KEY `IX_E14B1F1` (`groupId`),
  KEY `IX_83E16F2F` (`groupId`,`firstInGroup`),
  KEY `IX_8F6408F0` (`groupId`,`name`),
  KEY `IX_C8FD892B` (`groupId`,`userId`),
  KEY `IX_AABC18E9` (`groupId`,`userId`,`firstInGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivityachievement`
--

LOCK TABLES `socialactivityachievement` WRITE;
/*!40000 ALTER TABLE `socialactivityachievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivityachievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitycounter`
--

DROP TABLE IF EXISTS `socialactivitycounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitycounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`),
  UNIQUE KEY `IX_1B7E3B67` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`endPeriod`),
  UNIQUE KEY `IX_374B35AE` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`startPeriod`),
  KEY `IX_A4B9A23B` (`classNameId`,`classPK`),
  KEY `IX_D6666704` (`groupId`),
  KEY `IX_926CDD04` (`groupId`,`classNameId`,`classPK`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitycounter`
--

LOCK TABLES `socialactivitycounter` WRITE;
/*!40000 ALTER TABLE `socialactivitycounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitycounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitylimit`
--

DROP TABLE IF EXISTS `socialactivitylimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitylimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`),
  UNIQUE KEY `IX_F1C1A617` (`groupId`,`userId`,`classNameId`,`classPK`,`activityType`,`activityCounterName`),
  KEY `IX_B15863FA` (`classNameId`,`classPK`),
  KEY `IX_18D4BAE5` (`groupId`),
  KEY `IX_6F9EDE9F` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitylimit`
--

LOCK TABLES `socialactivitylimit` WRITE;
/*!40000 ALTER TABLE `socialactivitylimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitylimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivityset`
--

DROP TABLE IF EXISTS `socialactivityset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivityset` (
  `activitySetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `activityCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`activitySetId`),
  KEY `IX_4460FA14` (`classNameId`,`classPK`,`type_`),
  KEY `IX_9E13F2DE` (`groupId`),
  KEY `IX_9BE30DDF` (`groupId`,`userId`,`classNameId`,`type_`),
  KEY `IX_F71071BD` (`groupId`,`userId`,`type_`),
  KEY `IX_F80C4386` (`userId`),
  KEY `IX_62AC101A` (`userId`,`classNameId`,`classPK`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivityset`
--

LOCK TABLES `socialactivityset` WRITE;
/*!40000 ALTER TABLE `socialactivityset` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivityset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitysetting`
--

DROP TABLE IF EXISTS `socialactivitysetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitysetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`),
  KEY `IX_8BE5F230` (`groupId`),
  KEY `IX_384788CD` (`groupId`,`activityType`),
  KEY `IX_9D22151E` (`groupId`,`classNameId`),
  KEY `IX_1E9CF33B` (`groupId`,`classNameId`,`activityType`),
  KEY `IX_D984AABA` (`groupId`,`classNameId`,`activityType`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitysetting`
--

LOCK TABLES `socialactivitysetting` WRITE;
/*!40000 ALTER TABLE `socialactivitysetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitysetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialrelation`
--

DROP TABLE IF EXISTS `socialrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialrelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`),
  UNIQUE KEY `IX_12A92145` (`userId1`,`userId2`,`type_`),
  KEY `IX_61171E99` (`companyId`),
  KEY `IX_95135D1C` (`companyId`,`type_`),
  KEY `IX_C31A64C6` (`type_`),
  KEY `IX_5A40CDCC` (`userId1`),
  KEY `IX_4B52BE89` (`userId1`,`type_`),
  KEY `IX_B5C9C690` (`userId1`,`userId2`),
  KEY `IX_5A40D18D` (`userId2`),
  KEY `IX_3F9C2FA8` (`userId2`,`type_`),
  KEY `IX_F0CA24A5` (`uuid_`),
  KEY `IX_5B30F663` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialrelation`
--

LOCK TABLES `socialrelation` WRITE;
/*!40000 ALTER TABLE `socialrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialrequest`
--

DROP TABLE IF EXISTS `socialrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialrequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`),
  UNIQUE KEY `IX_36A90CA7` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  UNIQUE KEY `IX_4F973EFE` (`uuid_`,`groupId`),
  KEY `IX_D3425487` (`classNameId`,`classPK`,`type_`,`receiverUserId`,`status`),
  KEY `IX_A90FE5A0` (`companyId`),
  KEY `IX_32292ED1` (`receiverUserId`),
  KEY `IX_D9380CB7` (`receiverUserId`,`status`),
  KEY `IX_80F7A9C2` (`userId`),
  KEY `IX_CC86A444` (`userId`,`classNameId`,`classPK`,`type_`,`status`),
  KEY `IX_AB5906A8` (`userId`,`status`),
  KEY `IX_49D5872C` (`uuid_`),
  KEY `IX_8D42897C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialrequest`
--

LOCK TABLES `socialrequest` WRITE;
/*!40000 ALTER TABLE `socialrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`),
  UNIQUE KEY `IX_2E1A92D4` (`companyId`,`userId`,`classNameId`,`classPK`),
  KEY `IX_786D171A` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_54243AFD` (`userId`),
  KEY `IX_E8F34171` (`userId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdlfileversiondiff`
--

DROP TABLE IF EXISTS `syncdlfileversiondiff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdlfileversiondiff` (
  `syncDLFileVersionDiffId` bigint(20) NOT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `sourceFileVersionId` bigint(20) DEFAULT NULL,
  `targetFileVersionId` bigint(20) DEFAULT NULL,
  `dataFileEntryId` bigint(20) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`syncDLFileVersionDiffId`),
  UNIQUE KEY `IX_AC4C7667` (`fileEntryId`,`sourceFileVersionId`,`targetFileVersionId`),
  KEY `IX_A9B43C55` (`expirationDate`),
  KEY `IX_F832A75D` (`fileEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdlfileversiondiff`
--

LOCK TABLES `syncdlfileversiondiff` WRITE;
/*!40000 ALTER TABLE `syncdlfileversiondiff` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncdlfileversiondiff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdlobject`
--

DROP TABLE IF EXISTS `syncdlobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdlobject` (
  `syncDLObjectId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `version` varchar(75) DEFAULT NULL,
  `versionId` bigint(20) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `lastPermissionChangeDate` datetime DEFAULT NULL,
  `lockExpirationDate` datetime DEFAULT NULL,
  `lockUserId` bigint(20) DEFAULT NULL,
  `lockUserName` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `typeUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`syncDLObjectId`),
  UNIQUE KEY `IX_E3F57BD6` (`type_`,`typePK`),
  KEY `IX_980323CB` (`modifiedTime`,`repositoryId`),
  KEY `IX_8D4FDC9F` (`modifiedTime`,`repositoryId`,`event`),
  KEY `IX_A3ACE372` (`modifiedTime`,`repositoryId`,`parentFolderId`),
  KEY `IX_F174AD48` (`repositoryId`,`parentFolderId`),
  KEY `IX_3BE7BB8D` (`repositoryId`,`parentFolderId`,`type_`),
  KEY `IX_57F62914` (`repositoryId`,`type_`),
  KEY `IX_28CD54BB` (`type_`,`version`),
  KEY `IX_1CCA3B5` (`version`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdlobject`
--

LOCK TABLES `syncdlobject` WRITE;
/*!40000 ALTER TABLE `syncdlobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncdlobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemevent`
--

DROP TABLE IF EXISTS `systemevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemevent` (
  `systemEventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `referrerClassNameId` bigint(20) DEFAULT NULL,
  `parentSystemEventId` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  PRIMARY KEY (`systemEventId`),
  KEY `IX_72D73D39` (`groupId`),
  KEY `IX_7A2F0ECE` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_FFCBB747` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_A19C89FF` (`groupId`,`systemEventSetKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemevent`
--

LOCK TABLES `systemevent` WRITE;
/*!40000 ALTER TABLE `systemevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`),
  UNIQUE KEY `IX_143DC786` (`groupId`,`name`),
  KEY `IX_AE6E9907` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`),
  KEY `IX_1E8DFB2E` (`classNameId`,`classPK`,`type_`),
  KEY `IX_B2468446` (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trashentry`
--

DROP TABLE IF EXISTS `trashentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trashentry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B35F73D5` (`classNameId`,`classPK`),
  KEY `IX_2674F2A8` (`companyId`),
  KEY `IX_526A032A` (`groupId`),
  KEY `IX_FC4EEA64` (`groupId`,`classNameId`),
  KEY `IX_6CAAE2E8` (`groupId`,`createDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trashentry`
--

LOCK TABLES `trashentry` WRITE;
/*!40000 ALTER TABLE `trashentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `trashentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trashversion`
--

DROP TABLE IF EXISTS `trashversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trashversion` (
  `versionId` bigint(20) NOT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`versionId`),
  UNIQUE KEY `IX_D639348C` (`entryId`,`classNameId`,`classPK`),
  KEY `IX_630A643B` (`classNameId`,`classPK`),
  KEY `IX_55D44577` (`entryId`),
  KEY `IX_72D58D37` (`entryId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trashversion`
--

LOCK TABLES `trashversion` WRITE;
/*!40000 ALTER TABLE `trashversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `trashversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_`
--

DROP TABLE IF EXISTS `user_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `ldapServerId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `IX_615E9F7A` (`companyId`,`emailAddress`),
  UNIQUE KEY `IX_C5806019` (`companyId`,`screenName`),
  UNIQUE KEY `IX_9782AD88` (`companyId`,`userId`),
  UNIQUE KEY `IX_5ADBE171` (`contactId`),
  KEY `IX_3A1E834E` (`companyId`),
  KEY `IX_740C4D0C` (`companyId`,`createDate`),
  KEY `IX_BCFDA257` (`companyId`,`createDate`,`modifiedDate`),
  KEY `IX_6EF03E4E` (`companyId`,`defaultUser`),
  KEY `IX_1D731F03` (`companyId`,`facebookId`),
  KEY `IX_EE8ABD19` (`companyId`,`modifiedDate`),
  KEY `IX_F6039434` (`companyId`,`status`),
  KEY `IX_762F63C6` (`emailAddress`),
  KEY `IX_A18034A4` (`portraitId`),
  KEY `IX_E0422BDA` (`uuid_`),
  KEY `IX_405CC0E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_`
--

LOCK TABLES `user_` WRITE;
/*!40000 ALTER TABLE `user_` DISABLE KEYS */;
INSERT INTO `user_` VALUES ('6482e5e2-25cf-4e58-8b8d-54896551d10c',20159,20155,'2017-01-09 16:25:43','2017-01-09 16:25:43',1,20160,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,9590828507537743bc166fef8cff8748,9590828507537743bc166fef8cff8748','','',0,'20159','default@liferay.com',0,0,'',0,'en_US','UTC','Welcome!','','','','','','2017-01-09 16:25:43','',NULL,'',NULL,0,0,NULL,1,0,0),('69652995-421d-45c4-bd4c-9b1bab2e564a',20203,20155,'2017-01-09 16:25:45','2017-01-09 16:25:45',0,20204,'AAAAoAAB9AADe37RFjZJBjQesQ5LLPiiAnUMX0t+ae7wUJvh',1,0,NULL,'','','',0,'joebloggs','test@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Joe Bloggs!','','Joe','','Bloggs','','2017-01-09 16:25:45','','2017-01-09 16:25:45','',NULL,0,0,NULL,0,1,5),('2cdd86fa-91e8-47ee-a317-039f00c0a4b8',20438,20155,'2017-01-09 16:27:22','2017-06-20 05:38:58',0,20439,'AAAAoAAB9ABrROIGXj6tQmw15Qsr+WaiFDO9xtEJZ9d14xpA',1,0,'2017-06-20 05:38:58','3c861b5be293b713f17f6c02511be0d7,b8bfe9e6f4f2b69f6db67578f4990ddc,bc30179603610a90f4d8b78cc3f07931','a','b',0,'admin','admin@openncp.com',0,-1,'',0,'en_US','UTC','Welcome Admin User!','','Admin','','User','','2018-02-07 18:16:17','127.0.0.1','2018-02-06 09:56:56','127.0.0.1','2018-02-16 13:07:19',1,0,NULL,1,1,0),('5320c8b1-bdb2-47bb-848e-b2212fd17a59',20543,20155,'2017-01-09 16:28:05','2017-01-09 16:28:05',0,20544,'AAAAoAAB9ACeBVqpWyYaK75Kg47gjia+rsyZ44FmFe2UYm5A',1,0,NULL,'','','',0,'ord1','test.ord.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 1!','','Test','','ORD 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('3746599e-c113-4685-ae3d-d420b2e5c979',20549,20155,'2017-01-09 16:28:06','2017-01-09 16:28:06',0,20550,'AAAAoAAB9ABcRq1NJyLZMrimr4/lZibnzBDvwr6i94FEJmpR',1,0,NULL,'','','',0,'ord2','test.ord.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 2!','','Test','','ORD 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('d940771d-e88b-4fc9-978e-9c070649d112',20555,20155,'2017-01-09 16:28:06','2017-01-09 16:28:06',0,20556,'AAAAoAAB9ADd85tbJRaAFsMhytRlX395+9OH9SeZLqX5pRFo',1,0,NULL,'','','',0,'ord3','test.ord.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 3!','','Test','','ORD 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('44ef14fb-8a92-45b1-8b5e-eea4793da3b0',20561,20155,'2017-01-09 16:28:07','2017-01-09 16:28:07',0,20562,'AAAAoAAB9ABiXahAmIsudYOVQaIrPzrDDNd5DGhEhpdvUTVM',1,0,NULL,'','','',0,'ord4','test.ord.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 4!','','Test','','ORD 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('5b1594d0-727c-4f48-8ed4-8ec1a5bf7730',20567,20155,'2017-01-09 16:28:07','2017-01-09 16:28:07',0,20568,'AAAAoAAB9ABkXFb3ZuQUG7lVmRHR+QWHosEaUpdtwRg/LiMV',1,0,NULL,'','','',0,'ord5','test.ord.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 5!','','Test','','ORD 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e3e2759b-161d-4523-b972-110a2690e07b',20573,20155,'2017-01-09 16:28:07','2017-01-09 16:28:07',0,20574,'AAAAoAAB9ACfQmmLdgGHyYY+7JgWbFn2vtBfTRfe8JxR4oW7',1,0,NULL,'','','',0,'ord6','test.ord.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 6!','','Test','','ORD 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('0df05bb2-e955-4c74-8926-104d3547d2b0',20579,20155,'2017-01-09 16:28:08','2017-01-09 16:28:08',0,20580,'AAAAoAAB9ADXBLnLEz/lbd++KXUHoxGT+PfFZBmlfYGLAA1S',1,0,NULL,'','','',0,'ord7','test.ord.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 7!','','Test','','ORD 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('1194f072-bcf8-4145-8e90-1ab4b2f9b3c3',20585,20155,'2017-01-09 16:28:08','2017-01-09 16:28:08',0,20586,'AAAAoAAB9AAis5LsVOcid4xqoaJxNIKS7HbD/HQYYqxIu2nz',1,0,NULL,'','','',0,'ord8','test.ord.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 8!','','Test','','ORD 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('96c71a77-5f52-47c6-a1b6-702fb50c2042',20591,20155,'2017-01-09 16:28:08','2017-01-09 16:28:08',0,20592,'AAAAoAAB9ADxL0umA5Pr7zirfB62ydrQ/CICQmvb4XL5zwm6',1,0,NULL,'','','',0,'ord9','test.ord.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 9!','','Test','','ORD 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('8b528e8f-5759-4b94-a399-32dacedeb5a2',20597,20155,'2017-01-09 16:28:08','2017-01-09 16:28:08',0,20598,'AAAAoAAB9ADPF6YEzgks7M7Ixbexe95yD8dKXBL3PRiXPeAQ',1,0,NULL,'','','',0,'ord10','test.ord.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test ORD 10!','','Test','','ORD 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('dafdbbaa-ffcb-4370-b654-c44799cfe35e',20611,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',0,20612,'AAAAoAAB9AA8oXuAQJiWHPFwRDWcwpE977rcdKtRhy+rr2Ag',1,0,NULL,'','','',0,'dlc1','test.dlc.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 1!','','Test','','DLC 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('563a8495-2317-430c-a537-9e99e6eba199',20617,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',0,20618,'AAAAoAAB9ABTWOiWSeUKfUY6TPmk+krOuHoZZaIyP+V/PTqo',1,0,NULL,'','','',0,'dlc2','test.dlc.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 2!','','Test','','DLC 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('f8332c14-b60f-42f3-84a5-beb85984ff93',20623,20155,'2017-01-09 16:28:09','2017-01-09 16:28:09',0,20624,'AAAAoAAB9ACdQtVL5BSSpakuD5PzOZNNv043yH4GeHmjz3Dz',1,0,NULL,'','','',0,'dlc3','test.dlc.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 3!','','Test','','DLC 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('6346a165-5099-4c4f-8ffe-bcb8a83d33de',20629,20155,'2017-01-09 16:28:10','2017-01-09 16:28:10',0,20630,'AAAAoAAB9ADV+rDSChjPmnfpzeAfGyugNBIXTzJeVumRHRdx',1,0,NULL,'','','',0,'dlc4','test.dlc.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 4!','','Test','','DLC 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('c76b79a6-f60e-4d24-a3a2-98009dedbca5',20635,20155,'2017-01-09 16:28:10','2017-01-09 16:28:10',0,20636,'AAAAoAAB9ABmoAKkAGK6etEwOAD9hKobPfhy+s1q+xRqjqyb',1,0,NULL,'','','',0,'dlc5','test.dlc.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 5!','','Test','','DLC 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('9e56b148-cadb-468f-8998-ca16e8460bdd',20641,20155,'2017-01-09 16:28:10','2017-01-09 16:28:10',0,20642,'AAAAoAAB9AA0/N5wW4T6S/8jlWyieF2jD/ZdiTmBbnRz5WPv',1,0,NULL,'','','',0,'dlc6','test.dlc.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 6!','','Test','','DLC 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('be58da6a-a44d-46a8-ae6f-c6dbd321215a',20647,20155,'2017-01-09 16:28:11','2017-01-09 16:28:11',0,20648,'AAAAoAAB9AAYvNaFoPk8Y7quyKvLcxAi+k6d9w7BkEdl9F0e',1,0,NULL,'','','',0,'dlc7','test.dlc.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 7!','','Test','','DLC 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e8aaaefc-8d6f-48f6-bc2b-baf782c43d6d',20653,20155,'2017-01-09 16:28:11','2017-01-09 16:28:11',0,20654,'AAAAoAAB9AA+RjnBZJqYe2B4/ikOa5NYb4N3CU/MXm2YfeVZ',1,0,NULL,'','','',0,'dlc8','test.dlc.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 8!','','Test','','DLC 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ba10d84b-ac95-4bd5-a5bd-84f082068782',20659,20155,'2017-01-09 16:28:11','2017-01-09 16:28:11',0,20660,'AAAAoAAB9ABpDL35ucB9FkaobggBv1EywTuL1nQS+5xEviUs',1,0,NULL,'','','',0,'dlc9','test.dlc.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 9!','','Test','','DLC 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('1d1e94d0-f348-48fb-a5a8-2295034e9b6f',20665,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',0,20666,'AAAAoAAB9AC72E8QY+y+exHo1yCWhuMQM9EtDG2r6WdtPAxR',1,0,NULL,'','','',0,'dlc10','test.dlc.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test DLC 10!','','Test','','DLC 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('0db03e93-8b44-4b7f-819d-d60b934635ac',20679,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',0,20680,'AAAAoAAB9ABJeTzjh/AUGJn3d6vww4TjNZUAYfaObCnAqAX8',1,0,NULL,'','','',0,'fra1','test.fra.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 1!','','Test','','FRA 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('f56919e9-0d27-455a-bda2-7a2bb3838252',20685,20155,'2017-01-09 16:28:12','2017-01-09 16:28:12',0,20686,'AAAAoAAB9ABgSsS3ccFpAEiAVt3WbVFEATX1KaKUAlO/NR/T',1,0,NULL,'','','',0,'fra2','test.fra.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 2!','','Test','','FRA 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('06e9dec4-ec17-49bb-9a7b-c2d1f04946f7',20691,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',0,20692,'AAAAoAAB9ABL3uA8E7IdbnRMb158aAQxjty0Pf2zwhnUQhfW',1,0,NULL,'','','',0,'fra3','test.fra.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 3!','','Test','','FRA 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('09dfba90-2df0-4287-ba1b-1933eff49d0e',20697,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',0,20698,'AAAAoAAB9ADHG/3tZlQKj8ecsQ2dMyVt9w6zES888EX4uxYs',1,0,NULL,'','','',0,'fra4','test.fra.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 4!','','Test','','FRA 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('f03a17b7-842c-4f00-b94a-8b1878a323d0',20703,20155,'2017-01-09 16:28:13','2017-01-09 16:28:13',0,20704,'AAAAoAAB9ACB6/5xIj2ptulQNDD7Yw+APfxKsFdxjC3cX5wn',1,0,NULL,'','','',0,'fra5','test.fra.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 5!','','Test','','FRA 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('1f30687b-6900-4f5d-9416-9032e9057e69',20709,20155,'2017-01-09 16:28:14','2017-01-09 16:28:14',0,20710,'AAAAoAAB9ABF2OOF0PRFUAAMwvWOF1JPir6+dOzlYgQdUKHR',1,0,NULL,'','','',0,'fra6','test.fra.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 6!','','Test','','FRA 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('1509e9fb-6189-4ae2-ac80-d65f7865555c',20715,20155,'2017-01-09 16:28:14','2017-01-09 16:28:14',0,20716,'AAAAoAAB9ACS3dWCS681MgADsDfMhmy5vPlMolc3K1Dt819v',1,0,NULL,'','','',0,'fra7','test.fra.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 7!','','Test','','FRA 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('bb4f3aa9-a40f-4bfc-a309-8364ecdfd024',20721,20155,'2017-01-09 16:28:14','2017-01-09 16:28:14',0,20722,'AAAAoAAB9ABch14D0A788FOj7BDLbsJZF0WVSv+3mjOsYuRk',1,0,NULL,'','','',0,'fra8','test.fra.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 8!','','Test','','FRA 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('930193f5-9dde-44b4-99bf-f66bd3a499be',20727,20155,'2017-01-09 16:28:14','2017-01-09 16:28:14',0,20728,'AAAAoAAB9ADG5jd5ENKqVHHyXfcXC2B0G0sO0UauSDJWjgvG',1,0,NULL,'','','',0,'fra9','test.fra.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 9!','','Test','','FRA 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('d182b668-b255-459b-b4e6-7aca66202941',20733,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',0,20734,'AAAAoAAB9ADDfb8VcXnXEDKthxzYpE/Uov7KlHkV/th2uOF8',1,0,NULL,'','','',0,'fra10','test.fra.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test FRA 10!','','Test','','FRA 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('65594cb7-2de6-401a-a28e-b24dcf348c78',20743,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',0,20744,'AAAAoAAB9ABYKw6mCI0hLAZggPH9uDNrkaDvN5AUydsOt1iH',1,0,NULL,'','','',0,'hkg1','test.hkg.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 1!','','Test','','HKG 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('c34e68d4-5edd-49ed-906e-cffa74ed1db5',20749,20155,'2017-01-09 16:28:15','2017-01-09 16:28:15',0,20750,'AAAAoAAB9AAsnwzI6C5K+0ZSzqYoXFolOBazOat2g7JgGmWm',1,0,NULL,'','','',0,'hkg2','test.hkg.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 2!','','Test','','HKG 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ffb173b6-d9ea-4c7c-9eac-fbe1f8f66e11',20755,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',0,20756,'AAAAoAAB9ABBzB2d0bM/CDluqb4w0tnNqBVKhr5f//Qn92Sq',1,0,NULL,'','','',0,'hkg3','test.hkg.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 3!','','Test','','HKG 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('5dbe3a69-d875-4a7f-a3ba-6031b97db929',20761,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',0,20762,'AAAAoAAB9ADgBvk+NVAmXvnwEzzG12WhJRKpAJXM9Ml7/myh',1,0,NULL,'','','',0,'hkg4','test.hkg.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 4!','','Test','','HKG 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('818037f1-3149-40c8-a49e-7fd43c36bb04',20767,20155,'2017-01-09 16:28:16','2017-01-09 16:28:16',0,20768,'AAAAoAAB9AAtB+7pbasVT2tDSjZEpNIk2I7MDWtOOiOPT9NC',1,0,NULL,'','','',0,'hkg5','test.hkg.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 5!','','Test','','HKG 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('501c3113-de76-4576-b221-1cd8b3afac4b',20773,20155,'2017-01-09 16:28:17','2017-01-09 16:28:17',0,20774,'AAAAoAAB9AAlWtO+nEJ8VkVf+kFkiqwJTrMu2y44lKkdmA5J',1,0,NULL,'','','',0,'hkg6','test.hkg.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 6!','','Test','','HKG 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('cfb769b0-d9a9-4761-b0bb-39602bc30672',20779,20155,'2017-01-09 16:28:17','2017-01-09 16:28:17',0,20780,'AAAAoAAB9ABnOtmC/M1jAA7NkdpkvTGWW+iBILEXfLaLMt9H',1,0,NULL,'','','',0,'hkg7','test.hkg.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 7!','','Test','','HKG 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ed0c3ca5-d838-44d3-a1f5-d278a6a961f5',20785,20155,'2017-01-09 16:28:17','2017-01-09 16:28:17',0,20786,'AAAAoAAB9ABub/n7QIf9wXm067r6CddiIvjq1ZkkC1Wh7a2B',1,0,NULL,'','','',0,'hkg8','test.hkg.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 8!','','Test','','HKG 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('d2e0b674-bb26-4fc1-bf7d-32ad7d135818',20791,20155,'2017-01-09 16:28:17','2017-01-09 16:28:17',0,20792,'AAAAoAAB9ADCI9yioA4hmf3tHeJFhoWLcTYtc4EX9t5OSGtA',1,0,NULL,'','','',0,'hkg9','test.hkg.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 9!','','Test','','HKG 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('0cc04d2c-57b4-496a-9d82-4bcc810502d5',20797,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',0,20798,'AAAAoAAB9ABFvDDGcGJpJVj4bepblD6gPV0KeYQYFsj8o3uT',1,0,NULL,'','','',0,'hkg10','test.hkg.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test HKG 10!','','Test','','HKG 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('3952812f-613f-49eb-b7d7-686ea8d0f4fa',20807,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',0,20808,'AAAAoAAB9AA1COr6uiYKwBKxhK8pGwNI6KmxMJjRC92roZWZ',1,0,NULL,'','','',0,'kul1','test.kul.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 1!','','Test','','KUL 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('b38ce7d8-c73a-4865-b2e1-84a5c39b431d',20813,20155,'2017-01-09 16:28:18','2017-01-09 16:28:18',0,20814,'AAAAoAAB9AAchYGI7gDmSc5lpo+F+54OHZOM1E35xIs82gGt',1,0,NULL,'','','',0,'kul2','test.kul.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 2!','','Test','','KUL 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('a1d726ef-7be2-421e-a744-bc7ee1d083c3',20819,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',0,20820,'AAAAoAAB9AC/gcqmiQ0IZ5kyblDauHLqkcu+acOfKwELS4Na',1,0,NULL,'','','',0,'kul3','test.kul.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 3!','','Test','','KUL 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('9179323f-66f1-4c62-b0ff-852b024041cb',20825,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',0,20826,'AAAAoAAB9AC+s2V02xfpB1CaXmW03gIHhlg6Cz0pTFUs5TWg',1,0,NULL,'','','',0,'kul4','test.kul.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 4!','','Test','','KUL 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('629aa035-60cf-4736-9069-7bdf5f892791',20831,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',0,20832,'AAAAoAAB9ABJgZYaGqtMGTEmAO9iV/y5Dp+mEBEEU0Gt7nI4',1,0,NULL,'','','',0,'kul5','test.kul.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 5!','','Test','','KUL 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('e001603b-5fbe-4165-8e6c-285525d84bc6',20837,20155,'2017-01-09 16:28:19','2017-01-09 16:28:19',0,20838,'AAAAoAAB9AAKFxKmjnCDR4py0VmAUxpyDAG9sAqjk/Qnufx+',1,0,NULL,'','','',0,'kul6','test.kul.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 6!','','Test','','KUL 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('8977603f-29f9-4bed-99bc-ef775845236b',20843,20155,'2017-01-09 16:28:20','2017-01-09 16:28:20',0,20844,'AAAAoAAB9ACZgscRpDuk8/oibYBUuoMhdQv2ez+CcD/sFZef',1,0,NULL,'','','',0,'kul7','test.kul.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 7!','','Test','','KUL 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('049e1dd5-c93a-4a8a-a696-5f85ae7d66ff',20849,20155,'2017-01-09 16:28:20','2017-01-09 16:28:20',0,20850,'AAAAoAAB9ABGqoMgXCqgIuspSCsAF5obJ4RKJDKZmsQURNoP',1,0,NULL,'','','',0,'kul8','test.kul.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 8!','','Test','','KUL 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('150ebac6-3811-4f3b-84ff-80b7223e7b98',20855,20155,'2017-01-09 16:28:20','2017-01-09 16:28:20',0,20856,'AAAAoAAB9ABP4fzTkCbgFir+guPQiDBgAyydk9dC9sudggKu',1,0,NULL,'','','',0,'kul9','test.kul.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 9!','','Test','','KUL 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('2a637faf-ac72-4e9b-ae73-e3b605498019',20861,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',0,20862,'AAAAoAAB9ACbz6y3a0A/uoMg5v8qwjuwz8HYpDHlpdFDRjAI',1,0,NULL,'','','',0,'kul10','test.kul.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test KUL 10!','','Test','','KUL 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('0ec28600-777d-44bf-bacf-7ed8b02d8f59',20871,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',0,20872,'AAAAoAAB9AAVfB8rMVuZjYMWErvDPpHC45Snmdb79xRFWDsM',1,0,NULL,'','','',0,'lax1','test.lax.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 1!','','Test','','LAX 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('8ee144ab-0ecd-4e15-9f17-dfe7d3e50022',20877,20155,'2017-01-09 16:28:21','2017-01-09 16:28:21',0,20878,'AAAAoAAB9ABF9ckF8kVjjd6hxt9/w/86T9pw5T+WtjXYZnG1',1,0,NULL,'','','',0,'lax2','test.lax.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 2!','','Test','','LAX 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('c6fc13ee-6af0-42c9-b9b0-4af6472f979f',20883,20155,'2017-01-09 16:28:22','2017-01-09 16:28:22',0,20884,'AAAAoAAB9ABlx5xTCUcAosFgB0zd/4we3tYMgSOsWFkEAvQA',1,0,NULL,'','','',0,'lax3','test.lax.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 3!','','Test','','LAX 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('4bdf378f-d251-42fa-be1a-9d0f431b0ae6',20889,20155,'2017-01-09 16:28:22','2017-01-09 16:28:22',0,20890,'AAAAoAAB9AA7+Qmf1mobADT1USYI9MueKTffmLgH61MDIp/x',1,0,NULL,'','','',0,'lax4','test.lax.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 4!','','Test','','LAX 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('9b0b65d1-40b5-4995-9cce-9ba528aa711d',20895,20155,'2017-01-09 16:28:22','2017-01-09 16:28:22',0,20896,'AAAAoAAB9ADzFZW/rESmw+p20Q5MUHywJTYSvXLgHCjDH4g2',1,0,NULL,'','','',0,'lax5','test.lax.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 5!','','Test','','LAX 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('922d5afb-0b23-46a2-b67d-f5eb40c09f46',20901,20155,'2017-01-09 16:28:22','2017-01-09 16:28:22',0,20902,'AAAAoAAB9ADpigCYHHTQwfPnjXxkxqluua/4gRKnSCtz5Kwn',1,0,NULL,'','','',0,'lax6','test.lax.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 6!','','Test','','LAX 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('2e96f3c8-e9a7-4246-8669-4c1a58ea6efa',20907,20155,'2017-01-09 16:28:23','2017-01-09 16:28:23',0,20908,'AAAAoAAB9AAISYRuSfY55cf3lQYB5JGtogmHGC50zeKifZPv',1,0,NULL,'','','',0,'lax7','test.lax.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 7!','','Test','','LAX 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('70cd7b71-583f-4e19-b25e-9544e8cdf52e',20913,20155,'2017-01-09 16:28:23','2017-01-09 16:28:23',0,20914,'AAAAoAAB9ADwL6ouHfwpKTuMEVJoC4la7pbEEHEXlsAIjm3h',1,0,NULL,'','','',0,'lax8','test.lax.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 8!','','Test','','LAX 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('4663cd9e-5393-4224-a2ca-b87f84282ab1',20919,20155,'2017-01-09 16:28:23','2017-01-09 16:28:23',0,20920,'AAAAoAAB9ACvZeit1epz6EUIVYRW7aiI6WvpUYBnhB7PM30S',1,0,NULL,'','','',0,'lax9','test.lax.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 9!','','Test','','LAX 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('8d56be95-5004-43f7-93d4-dcc327fc26b2',20925,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',0,20926,'AAAAoAAB9ACfQZ+aOtrOe3xr3/at9skrfhC6FChU/T0yC3fW',1,0,NULL,'','','',0,'lax10','test.lax.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test LAX 10!','','Test','','LAX 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('caae9f47-d973-40d5-8658-bb83cb88e416',20935,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',0,20936,'AAAAoAAB9AB7rgsdxQ/GBOE5WRZT1aBlLViunzlZmsMF+HDQ',1,0,NULL,'','','',0,'mad1','test.mad.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 1!','','Test','','MAD 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('6f624a7d-9e9e-411b-9b55-00fe22d5a1f9',20941,20155,'2017-01-09 16:28:24','2017-01-09 16:28:24',0,20942,'AAAAoAAB9ABkYRMLJGV/5knP3z85w1yDlR8BXA3VuxXjTus9',1,0,NULL,'','','',0,'mad2','test.mad.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 2!','','Test','','MAD 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('a8669d28-0da0-4335-8ae8-3492ed21b650',20947,20155,'2017-01-09 16:28:25','2017-01-09 16:28:25',0,20948,'AAAAoAAB9ADJpFJZ4IqUa/zSc7/6dedGkbKAfifuZkQ83dlT',1,0,NULL,'','','',0,'mad3','test.mad.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 3!','','Test','','MAD 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('dc74be1b-1996-4b12-9166-13979bd3df35',20953,20155,'2017-01-09 16:28:25','2017-01-09 16:28:25',0,20954,'AAAAoAAB9ABLcmgsX1b4FgJfQ+zynrjDAyT87arIff5hjF0q',1,0,NULL,'','','',0,'mad4','test.mad.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 4!','','Test','','MAD 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('53a85aa6-b30d-4ee7-a452-adb62e5732fa',20959,20155,'2017-01-09 16:28:25','2017-01-09 16:28:25',0,20960,'AAAAoAAB9ADTsNFmm0NpSPUd61NNm6z8cQi8iziC8chcCoug',1,0,NULL,'','','',0,'mad5','test.mad.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 5!','','Test','','MAD 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('b5c3b6ba-eb1f-433c-9637-acfd98cf0358',20965,20155,'2017-01-09 16:28:25','2017-01-09 16:28:25',0,20966,'AAAAoAAB9ABOYI9H3UH7ZsA8KDF1BCNP1U/nBUesLVFKHH5+',1,0,NULL,'','','',0,'mad6','test.mad.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 6!','','Test','','MAD 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('f82f108c-a12b-443e-8cab-36e891f7a6b2',20971,20155,'2017-01-09 16:28:26','2017-01-09 16:28:26',0,20972,'AAAAoAAB9ADbhcMLjlDRSOC2jN57fpl/TLf9cSx8debK2Hdh',1,0,NULL,'','','',0,'mad7','test.mad.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 7!','','Test','','MAD 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('1e1da799-d241-494e-9ab4-6ee35ed9421f',20977,20155,'2017-01-09 16:28:26','2017-01-09 16:28:26',0,20978,'AAAAoAAB9ADVpNRt2OTx78Q0CzLdodzFp7ypidIibQYt+ymB',1,0,NULL,'','','',0,'mad8','test.mad.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 8!','','Test','','MAD 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('96c69f17-ea89-49ad-b065-e16b918e95b5',20983,20155,'2017-01-09 16:28:26','2017-01-09 16:28:26',0,20984,'AAAAoAAB9ADbW2IhOV1yvWc8SnwB4Mg4gG+G20MdcmKfK7Ra',1,0,NULL,'','','',0,'mad9','test.mad.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 9!','','Test','','MAD 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('80f56363-9bd6-408c-bd03-e5613d1c1fdd',20989,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',0,20990,'AAAAoAAB9ABMpE++Z9+gY929VNg+DzwyKXXANDE3G48ikemM',1,0,NULL,'','','',0,'mad10','test.mad.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test MAD 10!','','Test','','MAD 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('89768c7a-9ac3-459c-91af-df934b730476',21003,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',0,21004,'AAAAoAAB9ADHnwt/vdMaAOkE3EUQkYJBF7SfXZtXtKmJxAAO',1,0,NULL,'','','',0,'nyc1','test.nyc.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 1!','','Test','','NYC 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('86ecaf08-b4ad-4234-982e-e55819b7756b',21009,20155,'2017-01-09 16:28:27','2017-01-09 16:28:27',0,21010,'AAAAoAAB9ABBHx4vmCNxD6kJYqah6FUntL3b0QrZ4QJAt1wx',1,0,NULL,'','','',0,'nyc2','test.nyc.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 2!','','Test','','NYC 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('fdae15a4-f4d4-482f-8849-f6e8a291964f',21015,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',0,21016,'AAAAoAAB9AA0MY2NNNy4+83A7GWTWM2AGsQk2X+WbY0lhc7a',1,0,NULL,'','','',0,'nyc3','test.nyc.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 3!','','Test','','NYC 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('a7c24675-491e-40c5-8858-1a36827b02e8',21021,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',0,21022,'AAAAoAAB9ACGwNEL05zsngODy962DlsQLYCaI7dJdlEZK381',1,0,NULL,'','','',0,'nyc4','test.nyc.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 4!','','Test','','NYC 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('c9f08223-e069-47d6-9eec-357ecbbc1e7e',21027,20155,'2017-01-09 16:28:28','2017-01-09 16:28:28',0,21028,'AAAAoAAB9AALIw+OvOFnd1xrTJfPJQKD1GCEU57MC1pCDUP9',1,0,NULL,'','','',0,'nyc5','test.nyc.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 5!','','Test','','NYC 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('04b0b55d-e88c-44c9-b939-174a12b6cdc8',21033,20155,'2017-01-09 16:28:29','2017-01-09 16:28:29',0,21034,'AAAAoAAB9ACtVguM46XkyUyEGKaiJx34Mf/d0mBE2hwEXJD5',1,0,NULL,'','','',0,'nyc6','test.nyc.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 6!','','Test','','NYC 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('19381177-d44a-4219-898a-1723088221e8',21039,20155,'2017-01-09 16:28:29','2017-01-09 16:28:29',0,21040,'AAAAoAAB9AB2C/hJdu9LukbD2vUiVmoqhjcdJDY783RyD0g2',1,0,NULL,'','','',0,'nyc7','test.nyc.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 7!','','Test','','NYC 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('2fd8e0b2-818c-4718-9596-74f057a6d4f6',21045,20155,'2017-01-09 16:28:29','2017-01-09 16:28:29',0,21046,'AAAAoAAB9ABKz/V5tTX2qjozkwH1Rahg7zAFTA+OuhX5e8zX',1,0,NULL,'','','',0,'nyc8','test.nyc.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 8!','','Test','','NYC 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('3cd56232-c6a9-4c79-9de0-96959c6bafb8',21051,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',0,21052,'AAAAoAAB9ABaLW6oLW+4k+tSZVhS5VSIa8njqgOcwch3aAfA',1,0,NULL,'','','',0,'nyc9','test.nyc.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 9!','','Test','','NYC 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('892962a2-e921-434d-853d-f661d955f7a9',21057,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',0,21058,'AAAAoAAB9AC+XIJTus+nbBPPo26QpUng4T92M6Pj8ie+FIo8',1,0,NULL,'','','',0,'nyc10','test.nyc.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test NYC 10!','','Test','','NYC 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('57c1fafc-434f-4539-b9e9-0c586b9e57b8',21067,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',0,21068,'AAAAoAAB9AC3O0sr98hfExk2iaWqUU1K+Boty8RREB3HmbMZ',1,0,NULL,'','','',0,'gru1','test.gru.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 1!','','Test','','GRU 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('63359f28-cf9c-4ee5-9eee-a3b8ab83f7af',21073,20155,'2017-01-09 16:28:30','2017-01-09 16:28:30',0,21074,'AAAAoAAB9AD+VH48zYrcSZOs0VsJUuHG6UlWSJlYh8zXrLQf',1,0,NULL,'','','',0,'gru2','test.gru.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 2!','','Test','','GRU 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('8b9ec72a-602a-4d16-b70e-ce9ad35db081',21079,20155,'2017-01-09 16:28:31','2017-01-09 16:28:31',0,21080,'AAAAoAAB9ADL1UrL4Z7l524Vf4+EZFXbp7t9sInx319SatUI',1,0,NULL,'','','',0,'gru3','test.gru.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 3!','','Test','','GRU 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('4f949c9d-1007-40b0-b74e-4495c5e557c8',21085,20155,'2017-01-09 16:28:31','2017-01-09 16:28:31',0,21086,'AAAAoAAB9ABPgaFfa411VqI1Pcx7zIJ7zZhbp1wdHKSO2rcp',1,0,NULL,'','','',0,'gru4','test.gru.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 4!','','Test','','GRU 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('1ca34ae6-d697-417b-b91d-c577b3a0a9cc',21091,20155,'2017-01-09 16:28:31','2017-01-09 16:28:31',0,21092,'AAAAoAAB9ACtcoegqTvRePYWvUkC5zxhp49FVzRaM1BQdZIR',1,0,NULL,'','','',0,'gru5','test.gru.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 5!','','Test','','GRU 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ba618be4-d9e9-433a-bd04-1ac5468250c3',21097,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',0,21098,'AAAAoAAB9AA5EH3veapS4j9vr9FGgRP1yfxYvPSedw0fI/7C',1,0,NULL,'','','',0,'gru6','test.gru.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 6!','','Test','','GRU 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('903b6831-7583-4f8a-b057-829da8c584bc',21103,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',0,21104,'AAAAoAAB9ACQgqcqVEHygkDXj+59VgRTlmKhrhtnMAmsv8jn',1,0,NULL,'','','',0,'gru7','test.gru.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 7!','','Test','','GRU 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('931c8312-1c56-43fa-abce-a652c5c551b8',21109,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',0,21110,'AAAAoAAB9AAlu9gwgKTBIfSBFanQbkoMhAGxycU97mLULbJw',1,0,NULL,'','','',0,'gru8','test.gru.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 8!','','Test','','GRU 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('f1188d2f-fde5-4be5-96e1-4fc3c310773a',21115,20155,'2017-01-09 16:28:32','2017-01-09 16:28:32',0,21116,'AAAAoAAB9ACo/R8N5TXJpyib6jGZDcJvyQYC9hrchTKt6RLv',1,0,NULL,'','','',0,'gru9','test.gru.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 9!','','Test','','GRU 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('25b4d8f5-548f-4aad-9586-0589bd9f6eaa',21121,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',0,21122,'AAAAoAAB9AAnOUTU8P8FAwsgCtfsDlN1SUO3Rz7mJnCpN2aq',1,0,NULL,'','','',0,'gru10','test.gru.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test GRU 10!','','Test','','GRU 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('2dd9091f-60d3-43d4-b880-58c9e8cd3b4e',21135,20155,'2017-01-09 16:28:33','2017-01-09 16:28:33',0,21136,'AAAAoAAB9AC5rStg4WoKY7686MDSk31zJBKxp8zB/Wq+ZZkX',1,0,NULL,'','','',0,'sfo1','test.sfo.1@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 1!','','Test','','SFO 1','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('1ba9d655-ae1e-4a67-869b-071fa07ee6bc',21141,20155,'2017-01-09 16:28:34','2017-01-09 16:28:34',0,21142,'AAAAoAAB9AB+BLDUsnRMnT3fikQSbH6tBr8d1U+r8dCV2VZd',1,0,NULL,'','','',0,'sfo2','test.sfo.2@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 2!','','Test','','SFO 2','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('917133e8-333f-4043-a174-0a1cab792c91',21147,20155,'2017-01-09 16:28:34','2017-01-09 16:28:34',0,21148,'AAAAoAAB9ACOfqvp0rkTIoApIZGAr8fbUj1Y7UdmzOuz3cdt',1,0,NULL,'','','',0,'sfo3','test.sfo.3@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 3!','','Test','','SFO 3','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('03c85505-7071-412e-902d-e676b36e40ed',21153,20155,'2017-01-09 16:28:34','2017-01-09 16:28:34',0,21154,'AAAAoAAB9AA9BBPbl1DS7nocXKdT6EzmT4jeDMEvb/hpblMk',1,0,NULL,'','','',0,'sfo4','test.sfo.4@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 4!','','Test','','SFO 4','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('d7dbb9d7-4028-4922-b9fd-d5b8f0ae8b35',21159,20155,'2017-01-09 16:28:34','2017-01-09 16:28:34',0,21160,'AAAAoAAB9AByni33obiyugKcegEEgPX4+nmaGgdtu/LuCNPT',1,0,NULL,'','','',0,'sfo5','test.sfo.5@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 5!','','Test','','SFO 5','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('bc629357-d78b-40b5-ac1f-8871ad95f3c7',21165,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',0,21166,'AAAAoAAB9ABFJG/Y66p3ILwx7GDcVR0HVzOpl8zeBXWXWdnc',1,0,NULL,'','','',0,'sfo6','test.sfo.6@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 6!','','Test','','SFO 6','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('ea20ff27-655e-438f-bf53-9ac1b76effed',21171,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',0,21172,'AAAAoAAB9ADCX/94f13ycxxqpgaChzLqw5DrvTg/qyrtyCf8',1,0,NULL,'','','',0,'sfo7','test.sfo.7@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 7!','','Test','','SFO 7','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('d9e8001e-8275-45da-b589-56a8fd9e1c79',21177,20155,'2017-01-09 16:28:35','2017-01-09 16:28:35',0,21178,'AAAAoAAB9AAQaL5dWOezZq/xxDuQHtNQ+5t55IzHs4iJo5Pq',1,0,NULL,'','','',0,'sfo8','test.sfo.8@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 8!','','Test','','SFO 8','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('62105a41-ab4f-4dab-9aeb-b2dbd6158e58',21183,20155,'2017-01-09 16:28:36','2017-01-09 16:28:36',0,21184,'AAAAoAAB9AC+DhHoyRto52idW0BlqoIa/hWlH7l95o+tTpDY',1,0,NULL,'','','',0,'sfo9','test.sfo.9@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 9!','','Test','','SFO 9','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('807803ce-f3ce-4c07-bcec-a574b7878700',21189,20155,'2017-01-09 16:28:36','2017-01-09 16:28:36',0,21190,'AAAAoAAB9AClc9o18+d1nLKuBXOyS6tTFsQs7+QyVqNlnqrL',1,0,NULL,'','','',0,'sfo10','test.sfo.10@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test SFO 10!','','Test','','SFO 10','',NULL,'',NULL,'',NULL,0,0,NULL,1,0,0),('c1e91c7d-d8f9-45a4-896c-884ed7c571e1',21220,20155,'2017-01-09 16:31:39','2017-06-20 05:40:48',0,21221,'AAAAoAAB9ABhlggoKPtMnB+gzcEpm5cWSdKI53CCfyGz9u6T',1,0,'2017-06-20 05:40:48','e655f44e5efdc6012d604752371aeb3a,4386ae98c3342f2784d9fe4eae44d7c6,29a839fa96d1d1539bf48cd2e207eaf6','a','b',0,'doctor','doctor@openncp.com',0,-1,'',0,'en_US','UTC','Welcome doctor!','','doctor','','','','2018-03-02 08:29:06','127.0.0.1','2018-03-02 07:17:19','127.0.0.1','2018-02-16 13:05:54',0,0,NULL,1,0,0),('2cbb2b38-9d1a-4e45-8b92-1b214d463bfb',21229,20155,'2017-01-09 16:32:38','2017-06-20 05:41:04',0,21230,'AAAAoAAB9ACzsl9a1q2Hf2iFRjjb8f/+PA22niijBmIpJplt',1,0,'2017-06-20 05:41:05','b4bb8186f7a0a0dbb381d99b355691e6,61531a0224a208e90c7a9ba90610aa6b,c1dc1f00bc0691ad8c3a8ce644b78434','what-is-your-father\'s-middle-name','pharmacist',0,'pharmacist','pharmacist@openncp.com',0,-1,'',0,'en_US','UTC','Welcome pharmacist!','','pharmacist','','','','2018-02-07 18:14:21','127.0.0.1','2018-02-06 09:55:14','127.0.0.1','2017-06-15 11:17:06',0,0,NULL,1,0,0),('612b7ca2-4929-48b6-bba4-ad0beff38d04',21702,20155,'2017-03-28 11:54:13','2017-06-20 05:41:22',0,21703,'AAAAoAAB9AB0sZYKRDi2p41FwSUnzqrerPn5T84LdSixwT35',1,0,'2017-06-20 05:41:22','7c86080270c03754b03b2c2f6a7b1c7e,8d9fd4db299e98d593afded8e2bae248,523d61b01aa0f1befe98dbf19ee18bf6','what-is-your-father\'s-middle-name','nurse',0,'nurse','nurse@openncp.com',0,-1,'',0,'en_US','UTC','Welcome nurse!','','nurse','','','','2018-02-07 18:15:24','127.0.0.1','2018-02-07 18:15:14','127.0.0.1',NULL,0,0,NULL,1,0,0),('15c96423-481d-4acc-96c0-1cbc384b4276',22301,20155,'2017-10-17 05:17:19','2017-10-17 05:18:03',0,22302,'AAAAoAAB9AACVbVnZ63fHPC2EeOzA2hG8siZ+AmEB01gLuq7',1,0,'2017-10-17 05:18:38','5dd5200de7a4092d35d5ffe2f4332e5e,6aa22155eee2081862edceb76affdee4,7044fb00bafcde5150bb07f1480b9d20','what-is-your-father\'s-middle-name','1',0,'testdoctor','testdoctor@gnomon.com.gr',0,-1,'',0,'en_US','UTC','Welcome testdoctor!','','testdoctor','','','','2017-10-20 13:17:14','127.0.0.1','2017-10-20 10:55:54','127.0.0.1','2017-10-20 10:23:11',0,0,NULL,1,0,0);
/*!40000 ALTER TABLE `user_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`),
  UNIQUE KEY `IX_23EAD0D` (`companyId`,`name`),
  KEY `IX_524FEFCE` (`companyId`),
  KEY `IX_69771487` (`companyId`,`parentUserGroupId`),
  KEY `IX_5F1DD85A` (`uuid_`),
  KEY `IX_72394F8E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroup`
--

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroupgrouprole`
--

DROP TABLE IF EXISTS `usergroupgrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroupgrouprole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`),
  KEY `IX_CCBE4063` (`groupId`),
  KEY `IX_CAB0CCC8` (`groupId`,`roleId`),
  KEY `IX_1CDF88C` (`roleId`),
  KEY `IX_DCDED558` (`userGroupId`),
  KEY `IX_73C52252` (`userGroupId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroupgrouprole`
--

LOCK TABLES `usergroupgrouprole` WRITE;
/*!40000 ALTER TABLE `usergroupgrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroupgrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergrouprole`
--

DROP TABLE IF EXISTS `usergrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergrouprole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`),
  KEY `IX_1B988D7A` (`groupId`),
  KEY `IX_871412DF` (`groupId`,`roleId`),
  KEY `IX_887A2C95` (`roleId`),
  KEY `IX_887BE56A` (`userId`),
  KEY `IX_4D040680` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergrouprole`
--

LOCK TABLES `usergrouprole` WRITE;
/*!40000 ALTER TABLE `usergrouprole` DISABLE KEYS */;
INSERT INTO `usergrouprole` VALUES (20159,20524,20172),(20159,20540,20172),(20159,20604,20172),(20159,20608,20172),(20159,20672,20172),(20159,20676,20172),(20159,20740,20172),(20159,20804,20172),(20159,20868,20172),(20159,20932,20172),(20159,20996,20172),(20159,21000,20172),(20159,21064,20172),(20159,21128,20172),(20159,21132,20172),(20159,21196,20172);
/*!40000 ALTER TABLE `usergrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups_teams`
--

DROP TABLE IF EXISTS `usergroups_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups_teams` (
  `teamId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userGroupId`),
  KEY `IX_31FB0B08` (`teamId`),
  KEY `IX_7F187E63` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups_teams`
--

LOCK TABLES `usergroups_teams` WRITE;
/*!40000 ALTER TABLE `usergroups_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useridmapper`
--

DROP TABLE IF EXISTS `useridmapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useridmapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`),
  UNIQUE KEY `IX_41A32E0D` (`type_`,`externalUserId`),
  UNIQUE KEY `IX_D1C44A6E` (`userId`,`type_`),
  KEY `IX_E60EA987` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useridmapper`
--

LOCK TABLES `useridmapper` WRITE;
/*!40000 ALTER TABLE `useridmapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `useridmapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernotificationdelivery`
--

DROP TABLE IF EXISTS `usernotificationdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usernotificationdelivery` (
  `userNotificationDeliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `notificationType` int(11) DEFAULT NULL,
  `deliveryType` int(11) DEFAULT NULL,
  `deliver` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationDeliveryId`),
  UNIQUE KEY `IX_8B6E3ACE` (`userId`,`portletId`,`classNameId`,`notificationType`,`deliveryType`),
  KEY `IX_C648700A` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernotificationdelivery`
--

LOCK TABLES `usernotificationdelivery` WRITE;
/*!40000 ALTER TABLE `usernotificationdelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernotificationdelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernotificationevent`
--

DROP TABLE IF EXISTS `usernotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usernotificationevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`),
  KEY `IX_3E5D78C4` (`userId`),
  KEY `IX_3DBB361A` (`userId`,`archived`),
  KEY `IX_24F1BF0` (`userId`,`delivered`),
  KEY `IX_ECD8CFEA` (`uuid_`),
  KEY `IX_A6BAFDFE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernotificationevent`
--

LOCK TABLES `usernotificationevent` WRITE;
/*!40000 ALTER TABLE `usernotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userId`),
  KEY `IX_C4F9E699` (`groupId`),
  KEY `IX_F10B6C6B` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (20186,20203),(20186,20438),(20540,20543),(20540,20549),(20540,20555),(20540,20561),(20540,20567),(20540,20573),(20540,20579),(20540,20585),(20540,20591),(20540,20597),(20608,20611),(20608,20617),(20608,20623),(20608,20629),(20608,20635),(20608,20641),(20608,20647),(20608,20653),(20608,20659),(20608,20665),(20676,20679),(20676,20685),(20676,20691),(20676,20697),(20676,20703),(20676,20709),(20676,20715),(20676,20721),(20676,20727),(20676,20733),(20740,20743),(20740,20749),(20740,20755),(20740,20761),(20740,20767),(20740,20773),(20740,20779),(20740,20785),(20740,20791),(20740,20797),(20804,20807),(20804,20813),(20804,20819),(20804,20825),(20804,20831),(20804,20837),(20804,20843),(20804,20849),(20804,20855),(20804,20861),(20868,20871),(20868,20877),(20868,20883),(20868,20889),(20868,20895),(20868,20901),(20868,20907),(20868,20913),(20868,20919),(20868,20925),(20932,20935),(20932,20941),(20932,20947),(20932,20953),(20932,20959),(20932,20965),(20932,20971),(20932,20977),(20932,20983),(20932,20989),(21000,21003),(21000,21009),(21000,21015),(21000,21021),(21000,21027),(21000,21033),(21000,21039),(21000,21045),(21000,21051),(21000,21057),(21064,21067),(21064,21073),(21064,21079),(21064,21085),(21064,21091),(21064,21097),(21064,21103),(21064,21109),(21064,21115),(21064,21121),(21132,21135),(21132,21141),(21132,21147),(21132,21153),(21132,21159),(21132,21165),(21132,21171),(21132,21177),(21132,21183),(21132,21189);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_orgs`
--

DROP TABLE IF EXISTS `users_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_orgs` (
  `organizationId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`userId`),
  KEY `IX_7EF4EC0E` (`organizationId`),
  KEY `IX_FB646CA6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_orgs`
--

LOCK TABLES `users_orgs` WRITE;
/*!40000 ALTER TABLE `users_orgs` DISABLE KEYS */;
INSERT INTO `users_orgs` VALUES (20523,20203),(20523,20543),(20523,20549),(20523,20555),(20523,20561),(20523,20567),(20523,20573),(20523,20579),(20523,20585),(20523,20591),(20523,20597),(20523,20611),(20523,20617),(20523,20623),(20523,20629),(20523,20635),(20523,20641),(20523,20647),(20523,20653),(20523,20659),(20523,20665),(20523,20679),(20523,20685),(20523,20691),(20523,20697),(20523,20703),(20523,20709),(20523,20715),(20523,20721),(20523,20727),(20523,20733),(20523,20743),(20523,20749),(20523,20755),(20523,20761),(20523,20767),(20523,20773),(20523,20779),(20523,20785),(20523,20791),(20523,20797),(20523,20807),(20523,20813),(20523,20819),(20523,20825),(20523,20831),(20523,20837),(20523,20843),(20523,20849),(20523,20855),(20523,20861),(20523,20871),(20523,20877),(20523,20883),(20523,20889),(20523,20895),(20523,20901),(20523,20907),(20523,20913),(20523,20919),(20523,20925),(20523,20935),(20523,20941),(20523,20947),(20523,20953),(20523,20959),(20523,20965),(20523,20971),(20523,20977),(20523,20983),(20523,20989),(20523,21003),(20523,21009),(20523,21015),(20523,21021),(20523,21027),(20523,21033),(20523,21039),(20523,21045),(20523,21051),(20523,21057),(20523,21067),(20523,21073),(20523,21079),(20523,21085),(20523,21091),(20523,21097),(20523,21103),(20523,21109),(20523,21115),(20523,21121),(20523,21135),(20523,21141),(20523,21147),(20523,21153),(20523,21159),(20523,21165),(20523,21171),(20523,21177),(20523,21183),(20523,21189),(20539,20543),(20539,20549),(20539,20555),(20539,20561),(20539,20567),(20539,20573),(20539,20579),(20539,20585),(20539,20591),(20539,20597),(20607,20611),(20607,20617),(20607,20623),(20607,20629),(20607,20635),(20607,20641),(20607,20647),(20607,20653),(20607,20659),(20607,20665),(20675,20679),(20675,20685),(20675,20691),(20675,20697),(20675,20703),(20675,20709),(20675,20715),(20675,20721),(20675,20727),(20675,20733),(20739,20743),(20739,20749),(20739,20755),(20739,20761),(20739,20767),(20739,20773),(20739,20779),(20739,20785),(20739,20791),(20739,20797),(20803,20807),(20803,20813),(20803,20819),(20803,20825),(20803,20831),(20803,20837),(20803,20843),(20803,20849),(20803,20855),(20803,20861),(20867,20871),(20867,20877),(20867,20883),(20867,20889),(20867,20895),(20867,20901),(20867,20907),(20867,20913),(20867,20919),(20867,20925),(20931,20935),(20931,20941),(20931,20947),(20931,20953),(20931,20959),(20931,20965),(20931,20971),(20931,20977),(20931,20983),(20931,20989),(20999,21003),(20999,21009),(20999,21015),(20999,21021),(20999,21027),(20999,21033),(20999,21039),(20999,21045),(20999,21051),(20999,21057),(21063,21067),(21063,21073),(21063,21079),(21063,21085),(21063,21091),(21063,21097),(21063,21103),(21063,21109),(21063,21115),(21063,21121),(21131,21135),(21131,21141),(21131,21147),(21131,21153),(21131,21159),(21131,21165),(21131,21171),(21131,21177),(21131,21183),(21131,21189);
/*!40000 ALTER TABLE `users_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `IX_C19E5F31` (`roleId`),
  KEY `IX_C1A01806` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (20162,20203),(20162,20438),(20163,20159),(20165,20203),(20165,20438),(20165,20543),(20165,20549),(20165,20555),(20165,20561),(20165,20567),(20165,20573),(20165,20579),(20165,20585),(20165,20591),(20165,20597),(20165,20611),(20165,20617),(20165,20623),(20165,20629),(20165,20635),(20165,20641),(20165,20647),(20165,20653),(20165,20659),(20165,20665),(20165,20679),(20165,20685),(20165,20691),(20165,20697),(20165,20703),(20165,20709),(20165,20715),(20165,20721),(20165,20727),(20165,20733),(20165,20743),(20165,20749),(20165,20755),(20165,20761),(20165,20767),(20165,20773),(20165,20779),(20165,20785),(20165,20791),(20165,20797),(20165,20807),(20165,20813),(20165,20819),(20165,20825),(20165,20831),(20165,20837),(20165,20843),(20165,20849),(20165,20855),(20165,20861),(20165,20871),(20165,20877),(20165,20883),(20165,20889),(20165,20895),(20165,20901),(20165,20907),(20165,20913),(20165,20919),(20165,20925),(20165,20935),(20165,20941),(20165,20947),(20165,20953),(20165,20959),(20165,20965),(20165,20971),(20165,20977),(20165,20983),(20165,20989),(20165,21003),(20165,21009),(20165,21015),(20165,21021),(20165,21027),(20165,21033),(20165,21039),(20165,21045),(20165,21051),(20165,21057),(20165,21067),(20165,21073),(20165,21079),(20165,21085),(20165,21091),(20165,21097),(20165,21103),(20165,21109),(20165,21115),(20165,21121),(20165,21135),(20165,21141),(20165,21147),(20165,21153),(20165,21159),(20165,21165),(20165,21171),(20165,21177),(20165,21183),(20165,21189),(20165,21702),(20166,20203),(20166,20438),(20166,20543),(20166,20549),(20166,20555),(20166,20561),(20166,20567),(20166,20573),(20166,20579),(20166,20585),(20166,20591),(20166,20597),(20166,20611),(20166,20617),(20166,20623),(20166,20629),(20166,20635),(20166,20641),(20166,20647),(20166,20653),(20166,20659),(20166,20665),(20166,20679),(20166,20685),(20166,20691),(20166,20697),(20166,20703),(20166,20709),(20166,20715),(20166,20721),(20166,20727),(20166,20733),(20166,20743),(20166,20749),(20166,20755),(20166,20761),(20166,20767),(20166,20773),(20166,20779),(20166,20785),(20166,20791),(20166,20797),(20166,20807),(20166,20813),(20166,20819),(20166,20825),(20166,20831),(20166,20837),(20166,20843),(20166,20849),(20166,20855),(20166,20861),(20166,20871),(20166,20877),(20166,20883),(20166,20889),(20166,20895),(20166,20901),(20166,20907),(20166,20913),(20166,20919),(20166,20925),(20166,20935),(20166,20941),(20166,20947),(20166,20953),(20166,20959),(20166,20965),(20166,20971),(20166,20977),(20166,20983),(20166,20989),(20166,21003),(20166,21009),(20166,21015),(20166,21021),(20166,21027),(20166,21033),(20166,21039),(20166,21045),(20166,21051),(20166,21057),(20166,21067),(20166,21073),(20166,21079),(20166,21085),(20166,21091),(20166,21097),(20166,21103),(20166,21109),(20166,21115),(20166,21121),(20166,21135),(20166,21141),(20166,21147),(20166,21153),(20166,21159),(20166,21165),(20166,21171),(20166,21177),(20166,21183),(20166,21189),(20166,21220),(20166,21229),(20166,21702),(20166,22301),(20167,21220),(20167,22301),(20168,21229),(20170,21702);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_teams`
--

DROP TABLE IF EXISTS `users_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_teams` (
  `teamId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userId`),
  KEY `IX_4D06AD51` (`teamId`),
  KEY `IX_A098EFBF` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_teams`
--

LOCK TABLES `users_teams` WRITE;
/*!40000 ALTER TABLE `users_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_usergroups`
--

DROP TABLE IF EXISTS `users_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_usergroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`userGroupId`),
  KEY `IX_66FF2503` (`userGroupId`),
  KEY `IX_BE8102D6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_usergroups`
--

LOCK TABLES `users_usergroups` WRITE;
/*!40000 ALTER TABLE `users_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertracker`
--

DROP TABLE IF EXISTS `usertracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`),
  KEY `IX_29BA1CF5` (`companyId`),
  KEY `IX_46B0AE8E` (`sessionId`),
  KEY `IX_E4EFBA8D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertracker`
--

LOCK TABLES `usertracker` WRITE;
/*!40000 ALTER TABLE `usertracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertrackerpath`
--

DROP TABLE IF EXISTS `usertrackerpath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertrackerpath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`),
  KEY `IX_14D8BCC0` (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertrackerpath`
--

LOCK TABLES `usertrackerpath` WRITE;
/*!40000 ALTER TABLE `usertrackerpath` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertrackerpath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtualhost`
--

DROP TABLE IF EXISTS `virtualhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualhost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`),
  UNIQUE KEY `IX_A083D394` (`companyId`,`layoutSetId`),
  UNIQUE KEY `IX_431A3960` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualhost`
--

LOCK TABLES `virtualhost` WRITE;
/*!40000 ALTER TABLE `virtualhost` DISABLE KEYS */;
INSERT INTO `virtualhost` VALUES (20158,20155,0,'crossborderehealth.ppt.gov.mt');
/*!40000 ALTER TABLE `virtualhost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webdavprops`
--

DROP TABLE IF EXISTS `webdavprops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webdavprops` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`),
  UNIQUE KEY `IX_97DFA146` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webdavprops`
--

LOCK TABLES `webdavprops` WRITE;
/*!40000 ALTER TABLE `webdavprops` DISABLE KEYS */;
/*!40000 ALTER TABLE `webdavprops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website` (
  `uuid_` varchar(75) DEFAULT NULL,
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`),
  KEY `IX_96F07007` (`companyId`),
  KEY `IX_4F0F0CA7` (`companyId`,`classNameId`),
  KEY `IX_F960131C` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_1AA07A6D` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F75690BB` (`userId`),
  KEY `IX_76F15D13` (`uuid_`),
  KEY `IX_712BCD35` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikinode`
--

DROP TABLE IF EXISTS `wikinode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikinode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`),
  UNIQUE KEY `IX_920CD8B1` (`groupId`,`name`),
  UNIQUE KEY `IX_7609B2AE` (`uuid_`,`groupId`),
  KEY `IX_5D6FE3F0` (`companyId`),
  KEY `IX_B54332D6` (`companyId`,`status`),
  KEY `IX_B480A672` (`groupId`),
  KEY `IX_23325358` (`groupId`,`status`),
  KEY `IX_6C112D7C` (`uuid_`),
  KEY `IX_E0E6D12C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikinode`
--

LOCK TABLES `wikinode` WRITE;
/*!40000 ALTER TABLE `wikinode` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikinode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikipage`
--

DROP TABLE IF EXISTS `wikipage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikipage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`),
  UNIQUE KEY `IX_3D4AF476` (`nodeId`,`title`,`version`),
  UNIQUE KEY `IX_2CD67C81` (`resourcePrimKey`,`nodeId`,`version`),
  UNIQUE KEY `IX_899D3DFB` (`uuid_`,`groupId`),
  KEY `IX_A2001730` (`format`),
  KEY `IX_16E99B0A` (`groupId`,`nodeId`,`head`),
  KEY `IX_BA72B89A` (`groupId`,`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_E0092FF0` (`groupId`,`nodeId`,`head`,`status`),
  KEY `IX_941E429C` (`groupId`,`nodeId`,`status`),
  KEY `IX_5FF21CE6` (`groupId`,`nodeId`,`title`,`head`),
  KEY `IX_CAA451D6` (`groupId`,`userId`,`nodeId`,`status`),
  KEY `IX_C8A9C476` (`nodeId`),
  KEY `IX_E7F635CA` (`nodeId`,`head`),
  KEY `IX_65E84AF4` (`nodeId`,`head`,`parentTitle`),
  KEY `IX_9F7655DA` (`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_64CCB282` (`nodeId`,`head`,`redirectTitle`),
  KEY `IX_40F94F68` (`nodeId`,`head`,`redirectTitle`,`status`),
  KEY `IX_432F0AB0` (`nodeId`,`head`,`status`),
  KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`),
  KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`),
  KEY `IX_546F2D5C` (`nodeId`,`status`),
  KEY `IX_997EEDD2` (`nodeId`,`title`),
  KEY `IX_E745EA26` (`nodeId`,`title`,`head`),
  KEY `IX_BEA33AB8` (`nodeId`,`title`,`status`),
  KEY `IX_85E7CC76` (`resourcePrimKey`),
  KEY `IX_B771D67` (`resourcePrimKey`,`nodeId`),
  KEY `IX_E1F55FB` (`resourcePrimKey`,`nodeId`,`head`),
  KEY `IX_94D1054D` (`resourcePrimKey`,`nodeId`,`status`),
  KEY `IX_1725355C` (`resourcePrimKey`,`status`),
  KEY `IX_FBBE7C96` (`userId`,`nodeId`,`status`),
  KEY `IX_9C0E478F` (`uuid_`),
  KEY `IX_5DC4BD39` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikipage`
--

LOCK TABLES `wikipage` WRITE;
/*!40000 ALTER TABLE `wikipage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikipageresource`
--

DROP TABLE IF EXISTS `wikipageresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikipageresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_21277664` (`nodeId`,`title`),
  KEY `IX_BE898221` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikipageresource`
--

LOCK TABLES `wikipageresource` WRITE;
/*!40000 ALTER TABLE `wikipageresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipageresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowdefinitionlink`
--

DROP TABLE IF EXISTS `workflowdefinitionlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowdefinitionlink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`),
  KEY `IX_A8B0D276` (`companyId`),
  KEY `IX_A4DB1F0F` (`companyId`,`workflowDefinitionName`,`workflowDefinitionVersion`),
  KEY `IX_B6EE8C9E` (`groupId`,`companyId`,`classNameId`),
  KEY `IX_1E5B9905` (`groupId`,`companyId`,`classNameId`,`classPK`),
  KEY `IX_705B40EE` (`groupId`,`companyId`,`classNameId`,`classPK`,`typePK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowdefinitionlink`
--

LOCK TABLES `workflowdefinitionlink` WRITE;
/*!40000 ALTER TABLE `workflowdefinitionlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowdefinitionlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowinstancelink`
--

DROP TABLE IF EXISTS `workflowinstancelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowinstancelink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`),
  KEY `IX_415A7007` (`groupId`,`companyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowinstancelink`
--

LOCK TABLES `workflowinstancelink` WRITE;
/*!40000 ALTER TABLE `workflowinstancelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowinstancelink` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-29 12:25:07
