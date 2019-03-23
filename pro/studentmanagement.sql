-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: studentmanagement
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(45) DEFAULT NULL,
  `adminpassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminid`),
  UNIQUE KEY `adminid_UNIQUE` (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `classname` varchar(45) DEFAULT NULL,
  `depid` int(11) DEFAULT NULL,
  `semesters` int(11) DEFAULT NULL,
  PRIMARY KEY (`classid`),
  KEY `depid_idx` (`depid`),
  CONSTRAINT `depid` FOREIGN KEY (`depid`) REFERENCES `department` (`depid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (12,'BS',1,8),(458,'MS',1035,5),(859,'LLB',420,10);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(40) NOT NULL,
  `credithours` int(11) NOT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (345,'Discrete',4),(582,'DLD',3),(2031,'FM',3),(3524,'dsd',5),(8526,'jkjkk',3);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursemapping`
--

DROP TABLE IF EXISTS `coursemapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coursemapping` (
  `courseid` int(11) DEFAULT NULL,
  `depname` varchar(45) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `classname` varchar(45) DEFAULT NULL,
  KEY `courseid_idx` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursemapping`
--

LOCK TABLES `coursemapping` WRITE;
/*!40000 ALTER TABLE `coursemapping` DISABLE KEYS */;
INSERT INTO `coursemapping` VALUES (305,'IT',3,'MS'),(345,'IT',3,'BS'),(1235,'IT',4,'BS'),(7802,'IT',6,'BS'),(305,'IT',3,'BS'),(2031,'Business',2,'MBA'),(1235,'Business',1,'MBA'),(2031,'Business',2,'MBA'),(345,'IT',2,'MS'),(123,'IT',2,'MS'),(7802,'Business',2,'MBA'),(325,'Business',1,'MBA'),(258,'Law',8,'LLB'),(258,'Law',6,'LLB'),(345,'CS',3,'BS'),(582,'CS',3,'BS'),(2301,'CS',3,'BS'),(2031,'CS',3,'BS'),(3524,'CS',3,'BS'),(8526,'Psychology',1,'MS');
/*!40000 ALTER TABLE `coursemapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `depid` int(11) NOT NULL,
  `depname` varchar(45) NOT NULL,
  PRIMARY KEY (`depid`),
  UNIQUE KEY `depid_UNIQUE` (`depid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'CS'),(258,'English'),(420,'LAW'),(852,'Chemistry cd'),(875,'Mathematics'),(1035,'Psychology');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `stuid` int(11) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  KEY `courseid_idx` (`courseid`),
  KEY `stuid` (`stuid`),
  CONSTRAINT `courseid` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stuid` FOREIGN KEY (`stuid`) REFERENCES `student` (`stuid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,345,78),(1,582,52);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `stuid` int(11) NOT NULL DEFAULT '0',
  `stufname` varchar(45) NOT NULL,
  `stulname` varchar(45) NOT NULL,
  `stufathername` varchar(45) NOT NULL,
  `stuemail` varchar(45) NOT NULL,
  `stuaddress` varchar(45) NOT NULL,
  `stugender` varchar(45) NOT NULL,
  `sturegestration` date NOT NULL,
  `depname` varchar(45) NOT NULL,
  `classname` varchar(45) NOT NULL,
  `stusession` varchar(45) NOT NULL,
  `stuPhone` varchar(45) NOT NULL,
  `stuzip` varchar(45) NOT NULL,
  `studob` date NOT NULL,
  `stufatherphone` varchar(45) NOT NULL,
  `stufatheroccuption` varchar(45) NOT NULL,
  `stucnic` varchar(45) NOT NULL,
  PRIMARY KEY (`stuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'saseeee','sasas','dsd','sds','sas','MALE','2019-03-26','CS','BS','2015','sdx','22','2019-03-27','ddfd','Teacher','sds'),(8,'saseeee','sasas','dsd','sds','sas','MALE','2019-03-26','Psychology','MS','2015','sdx','22','2019-03-27','ddfd','Teacher','sds'),(234,'Tabassam','sas','ass','dssd','dsdsd','MALE','2019-03-26','Psychology','MS','dsd','sdsdsd','sdsd','2019-03-14','sdsd','Teacher','sdsd'),(741,'azhar','rana','dhfgh','dhfh@gdhg','dfd','MALE','2019-03-26','LAW','LLB','sd','dfhg','4547','2019-03-20','dghfgh','Engineer','457896'),(854,'tyyt','hdjfh','mdffjg','hfhg','dsdsjfj','MALE','2019-03-19','Psychology','MS','845','ngfbnbnb','7878','2019-03-20','mfgnf','Farmer','787878'),(7841,'hdfhgdhg','jjhjjjjjjj','utyurtuy','hjjjjjjjjjjjjjjjjjjjjjjjjjj',',dljhj','MALE','2019-03-11','Psychology','MS','ssa','hjjjjjjjjjjjjjjjjj','mndfbv','2019-03-18','nfgbnnnnnnnn','Teacher','hjjjjjjjjj');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `teacherid` int(11) NOT NULL,
  `teacherfname` varchar(45) DEFAULT NULL,
  `teacherlname` varchar(45) DEFAULT NULL,
  `teachercnic` varchar(45) DEFAULT NULL,
  `teacheremail` varchar(45) DEFAULT NULL,
  `teacherphone` varchar(45) DEFAULT NULL,
  `teacheraddress` varchar(45) DEFAULT NULL,
  `teacherdob` date DEFAULT NULL,
  `teachersex` varchar(45) DEFAULT NULL,
  `teachereducation` varchar(45) DEFAULT NULL,
  `teacherdesignation` varchar(45) DEFAULT NULL,
  `teacherdepartment` varchar(45) DEFAULT NULL,
  `teachertype` varchar(45) DEFAULT NULL,
  `teacherhiredate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`teacherid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'sir','asad','3652','jdfj@h.com','45454','jfgh','2019-03-20','MALE','PhD','Associate Professor','LAW','Visiting Facaulty','2019-03-06'),(3,'wwe','sd','sds','sd','sdsdd','sddsd','2019-03-08','FEMALE','MS','Associate Professor','Chemistry cd','Permanent Faculty','2019-03-02');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-23 12:39:05
