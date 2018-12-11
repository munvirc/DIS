-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: mysql.cs.nott.ac.uk    Database: psxmc7_nov18
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `Course_ID` int(11) NOT NULL,
  `Course_Name` varchar(40) NOT NULL,
  `Lecturer_ID` varchar(40) NOT NULL,
  `Course_Length` varchar(40) NOT NULL,
  `Course_SD` varchar(40) NOT NULL,
  `Course_Campus` varchar(40) NOT NULL,
  `Course_fee` varchar(40) NOT NULL,
  PRIMARY KEY (`Course_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Technology','18','3','10/12/17','Jubilee','9780'),(13,'Biology','09','4','23/12/17','University Park','9780');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturers`
--

DROP TABLE IF EXISTS `lecturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lecturers` (
  `Lecturer_Name` varchar(40) NOT NULL,
  `Lecturer_ID` varchar(40) NOT NULL,
  PRIMARY KEY (`Lecturer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturers`
--

LOCK TABLES `lecturers` WRITE;
/*!40000 ALTER TABLE `lecturers` DISABLE KEYS */;
INSERT INTO `lecturers` VALUES ('Simon Peter','09'),('Ian Black','18');
/*!40000 ALTER TABLE `lecturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `modID` varchar(10) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`modID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES ('11','PHP'),('12','sums'),('13','biology');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `Student_Name` varchar(60) NOT NULL,
  `Student_Middlename` varchar(60) NOT NULL,
  `Student_Surname` varchar(60) NOT NULL,
  `Student_ID` varchar(60) NOT NULL,
  `Course_Id` varchar(60) NOT NULL,
  `Level_of_Study` int(11) NOT NULL,
  `Student_Address` varchar(70) NOT NULL,
  `Student_DOB` varchar(20) NOT NULL,
  `Student_Nationallity` varchar(20) NOT NULL,
  `Student_Gender` varchar(15) NOT NULL,
  `Student_Emergency_Contact` varchar(40) NOT NULL,
  `Student_Passoword` varchar(60) NOT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('Bob','Singh','Smith','1','1',1,'4 Nottingham Road','10/10/2010','British','F','Mother','026ad9b14a7453b7488daa0c6acbc258b1506f52c441c7c465474c1a5643'),('Mia','Kelly','Walters','2','13',2,'4 Radford Road','09/08/95','British','F','Mother','8eada23e9b61f1867205e6414ca32f62e3013392ccfe11adec9ecdeb1345');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students1`
--

DROP TABLE IF EXISTS `students1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students1` (
  `Student_Name` varchar(60) NOT NULL,
  `Student_Middlename` varchar(60) NOT NULL,
  `Student_Surname` varchar(60) NOT NULL,
  `Student_ID` varchar(60) NOT NULL,
  `Course_Id` varchar(60) NOT NULL,
  `Level_of_Study` int(11) NOT NULL,
  `Student_Address` varchar(70) NOT NULL,
  `Student_DOB` varchar(20) NOT NULL,
  `Student_Nationallity` varchar(20) NOT NULL,
  `Student_Gender` varchar(15) NOT NULL,
  `Student_Emergency_Contact` varchar(40) NOT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students1`
--

LOCK TABLES `students1` WRITE;
/*!40000 ALTER TABLE `students1` DISABLE KEYS */;
/*!40000 ALTER TABLE `students1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11 15:47:06
