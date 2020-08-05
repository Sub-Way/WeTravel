-- MariaDB dump 10.17  Distrib 10.5.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: travel
-- ------------------------------------------------------
-- Server version	10.5.4-MariaDB-1:10.5.4+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `articleno` int(11) NOT NULL AUTO_INCREMENT,
  `bookno` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `writedate` datetime DEFAULT current_timestamp(),
  `score` decimal(3,2) DEFAULT NULL,
  `weather` varchar(10) DEFAULT NULL,
  `text` mediumtext DEFAULT NULL,
  `traveldate` date DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `img` longblob DEFAULT NULL,
  PRIMARY KEY (`articleno`),
  KEY `bookno` (`bookno`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`bookno`) REFERENCES `book` (`bookno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,'遺???뱀씪移섍린, 嫄곗젣 ?대룞','2020-08-03 02:56:48',NULL,'留묒쓬','1?쇱감','2020-07-04',1,NULL),(2,1,'嫄곗젣 ?ы뻾','2020-08-03 02:59:58',NULL,'鍮?,'2?쇱감','2020-07-05',2,NULL),(3,1,'洹媛','2020-08-03 12:00:45',NULL,'鍮?,'3?쇱감','2020-07-06',3,NULL),(4,2,'愿묓솕臾??먮갑','2020-08-04 01:50:57',4.12,'留묒쓬','1?쇱감','2020-08-04',1,NULL),(5,2,'?쒖큿 留쏆쭛 ?먮갑','2020-08-04 01:51:54',4.53,'留묒쓬','2?쇱감','2020-08-04',2,NULL),(6,2,'?숇?臾??⑥뀡 ???,'2020-08-04 01:52:31',4.91,'鍮?,'3?쇱감','2020-08-04',3,NULL);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_comment`
--

DROP TABLE IF EXISTS `article_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_comment` (
  `commentno` int(11) NOT NULL AUTO_INCREMENT,
  `articleno` int(11) DEFAULT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `writedate` datetime DEFAULT current_timestamp(),
  `text` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`commentno`),
  KEY `writer` (`writer`),
  KEY `articleno` (`articleno`),
  CONSTRAINT `article_comment_ibfk_1` FOREIGN KEY (`writer`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `article_comment_ibfk_2` FOREIGN KEY (`articleno`) REFERENCES `article` (`articleno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_comment`
--

LOCK TABLES `article_comment` WRITE;
/*!40000 ALTER TABLE `article_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_score`
--

DROP TABLE IF EXISTS `article_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_score` (
  `scoreno` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT 5,
  `author` varchar(50) DEFAULT NULL,
  `articleno` int(11) DEFAULT NULL,
  PRIMARY KEY (`scoreno`),
  KEY `author` (`author`),
  KEY `articleno` (`articleno`),
  CONSTRAINT `article_score_ibfk_1` FOREIGN KEY (`author`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `article_score_ibfk_2` FOREIGN KEY (`articleno`) REFERENCES `article` (`articleno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_score`
--

LOCK TABLES `article_score` WRITE;
/*!40000 ALTER TABLE `article_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `bookno` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `writedate` datetime DEFAULT current_timestamp(),
  `province` varchar(10) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `score` decimal(3,2) DEFAULT NULL,
  `img` longblob DEFAULT NULL,
  PRIMARY KEY (`bookno`),
  KEY `writer` (`writer`),
  KEY `book_ibfk_2` (`province`,`city`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`writer`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`province`, `city`) REFERENCES `city_list` (`province`, `city`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'2諛?3??嫄곗젣???ы뻾','dlsgk147@naver.com','2020-08-03 09:53:24','寃쎌긽','嫄곗젣','2020-07-04',NULL,NULL),(2,'?쒖슱 ?ы뻾','dlsgk147@naver.com','2020-08-03 16:52:17','?쒖슱','?쒖슱','2020-08-03',NULL,NULL),(3,'?쒖슱 ?섎뱾??,'dlsgk147@naver.com','2020-08-03 18:04:05','?쒖슱','?쒖슱','2020-06-26',NULL,NULL),(4,'?쒖슱??醫뗫떎','dlsgk147@naver.com','2020-08-03 18:04:45','?쒖슱','?쒖슱','2020-08-01',NULL,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_list`
--

DROP TABLE IF EXISTS `city_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_list` (
  `province` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  PRIMARY KEY (`province`,`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_list`
--

LOCK TABLES `city_list` WRITE;
/*!40000 ALTER TABLE `city_list` DISABLE KEYS */;
INSERT INTO `city_list` VALUES ('媛뺤썝','媛뺣쫱'),('媛뺤썝','怨좎꽦'),('媛뺤썝','?숉빐'),('媛뺤썝','?쇱쿃'),('媛뺤썝','?띿큹'),('媛뺤썝','?묎뎄'),('媛뺤썝','?묒뼇'),('媛뺤썝','?곸썡'),('媛뺤썝','?먯＜'),('媛뺤썝','?몄젣'),('媛뺤썝','?뺤꽑'),('媛뺤썝','泥좎썝'),('媛뺤썝','異섏쿇'),('媛뺤썝','?쒕갚'),('媛뺤썝','?됱갹'),('媛뺤썝','?띿쿇'),('媛뺤썝','?붿쿇'),('媛뺤썝','?≪꽦'),('寃쎄린','媛??),('寃쎄린','怨좎뼇'),('寃쎄린','怨쇱쿇'),('寃쎄린','愿묐챸'),('寃쎄린','愿묒＜'),('寃쎄린','援щ━'),('寃쎄린','援고룷'),('寃쎄린','源??),('寃쎄린','?⑥뼇二?),('寃쎄린','?숇몢泥?),('寃쎄린','遺泥?),('寃쎄린','?깅궓'),('寃쎄린','?섏썝'),('寃쎄린','?쒗씎'),('寃쎄린','?덉궛'),('寃쎄린','?덉꽦'),('寃쎄린','?덉뼇'),('寃쎄린','?묒＜'),('寃쎄린','?묓룊'),('寃쎄린','?ъ＜'),('寃쎄린','?곗쿇'),('寃쎄린','?ㅼ궛'),('寃쎄린','?⑹씤'),('寃쎄린','?섏솗'),('寃쎄린','?섏젙遺'),('寃쎄린','?댁쿇'),('寃쎄린','?몄쿇'),('寃쎄린','?뚯＜'),('寃쎄린','?됲깮'),('寃쎄린','?ъ쿇'),('寃쎄린','?섎궓'),('寃쎄린','?붿꽦'),('寃쎌긽','嫄곗젣'),('寃쎌긽','嫄곗갹'),('寃쎌긽','寃쎌궛'),('寃쎌긽','寃쎌＜'),('寃쎌긽','怨좊졊'),('寃쎌긽','怨좎꽦'),('寃쎌긽','援щ?'),('寃쎌긽','援곗쐞'),('寃쎌긽','源泥?),('寃쎌긽','源??),('寃쎌긽','?⑦빐'),('寃쎌긽','?援?),('寃쎌긽','臾멸꼍'),('寃쎌긽','諛??),('寃쎌긽','遊됲솕'),('寃쎌긽','?ъ쿇'),('寃쎌긽','?곗껌'),('寃쎌긽','?곸＜'),('寃쎌긽','?깆＜'),('寃쎌긽','?덈룞'),('寃쎌긽','?묒궛'),('寃쎌긽','?곷뜒'),('寃쎌긽','?곸뼇'),('寃쎌긽','?곸＜'),('寃쎌긽','?곸쿇'),('寃쎌긽','?덉쿇'),('寃쎌긽','?몄궛'),('寃쎌긽','?몄쭊'),('寃쎌긽','?섎졊'),('寃쎌긽','?섏꽦'),('寃쎌긽','吏꾩＜'),('寃쎌긽','李쎈뀞'),('寃쎌긽','李쎌썝'),('寃쎌긽','泥?룄'),('寃쎌긽','泥?넚'),('寃쎌긽','移좉끝'),('寃쎌긽','?듭쁺'),('寃쎌긽','?ы빆'),('寃쎌긽','?섎룞'),('寃쎌긽','?⑥븞'),('寃쎌긽','?⑥뼇'),('寃쎌긽','?⑹쿇'),('寃쎌꺓','?몃쫱'),('遺??,'遺??),('?쒖슱','?쒖슱'),('?꾨씪','媛뺤쭊'),('?꾨씪','怨좎갹'),('?꾨씪','怨좏씎'),('?꾨씪','怨≪꽦'),('?꾨씪','愿묒뼇'),('?꾨씪','愿묒＜'),('?꾨씪','援щ?'),('?꾨씪','援곗궛'),('?꾨씪','源??),('?꾨씪','?섏＜'),('?꾨씪','?⑥썝'),('?꾨씪','?댁뼇'),('?꾨씪','紐⑺룷'),('?꾨씪','臾댁븞'),('?꾨씪','臾댁＜'),('?꾨씪','蹂댁꽦'),('?꾨씪','遺??),('?꾨씪','?쒖갹'),('?꾨씪','?쒖쿇'),('?꾨씪','?좎븞'),('?꾨씪','?ъ닔'),('?꾨씪','?곴킅'),('?꾨씪','?곸븫'),('?꾨씪','?꾨룄'),('?꾨씪','?꾩＜'),('?꾨씪','?듭궛'),('?꾨씪','?꾩떎'),('?꾨씪','?μ꽦'),('?꾨씪','?μ닔'),('?꾨씪','?ν씎'),('?꾨씪','?꾩＜'),('?꾨씪','?뺤쓭'),('?꾨씪','吏꾨룄'),('?꾨씪','吏꾩븞'),('?꾨씪','?⑦룊'),('?꾨씪','?대궓'),('?꾨씪','?붿닚'),('?쒖＜','?쒓???),('?쒖＜','?쒖＜'),('異⑹껌','怨꾨！'),('異⑹껌','怨듭＜'),('異⑹껌','愿댁궛'),('異⑹껌','湲덉궛'),('異⑹껌','?쇱궛'),('異⑹껌','?⑥뼇'),('異⑹껌','?뱀쭊'),('異⑹껌','???),('異⑹껌','蹂대졊'),('異⑹껌','蹂댁?'),('異⑹껌','遺??),('異⑹껌','?쒖궛'),('異⑹껌','?쒖쿇'),('異⑹껌','?몄쥌'),('異⑹껌','?꾩궛'),('異⑹껌','?곷룞'),('異⑹껌','?덉궛'),('異⑹껌','?μ쿇'),('異⑹껌','?뚯꽦'),('異⑹껌','?쒖쿇'),('異⑹껌','利앺룊'),('異⑹껌','吏꾩쿇'),('異⑹껌','泥쒖븞'),('異⑹껌','泥?뼇'),('異⑹껌','泥?＜'),('異⑹껌','異⑹＜'),('異⑹껌','?쒖븞'),('異⑹껌','?띿꽦');
/*!40000 ALTER TABLE `city_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nickname` varchar(10) NOT NULL,
  `introduce` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('dlsgk147@naver.com','1234','hinew','hello world');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-05  5:20:52
