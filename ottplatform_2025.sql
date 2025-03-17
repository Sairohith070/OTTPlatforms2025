-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ottplatform2025
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `Title` varchar(128) NOT NULL,
  `year` int(11) NOT NULL,
  `Rating` int(11) DEFAULT NULL,
  `number_of_seasons` int(11) DEFAULT NULL,
  `Duration` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OTT_Platform_ID` int(11) NOT NULL,
  `Language_ID` int(11) NOT NULL,
  `Genre_ID` int(11) NOT NULL,
  `Director_ID` int(11) NOT NULL,
  `Content_Type_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Content_Content_Type` (`Content_Type_ID`),
  KEY `Content_Director` (`Director_ID`),
  KEY `Content_Genre` (`Genre_ID`),
  KEY `Content_Language` (`Language_ID`),
  KEY `idxcontenttitle` (`Title`),
  KEY `idxcontentyear` (`year`),
  CONSTRAINT `Content_Content_Type` FOREIGN KEY (`Content_Type_ID`) REFERENCES `content_type` (`ID`),
  CONSTRAINT `Content_Director` FOREIGN KEY (`Director_ID`) REFERENCES `director` (`ID`),
  CONSTRAINT `Content_Genre` FOREIGN KEY (`Genre_ID`) REFERENCES `genre` (`ID`),
  CONSTRAINT `Content_Language` FOREIGN KEY (`Language_ID`) REFERENCES `language` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES ('Pushpa 2- The rule',2024,8,0,170,1,1,1,1,1,1),('Jigra ',2024,6,0,140,2,1,2,1,2,1),('The Fast and the furious',2001,7,0,106,3,1,3,1,3,1),('Interstellar',2014,8,0,169,4,1,3,2,4,1),('Anyone but you',2023,8,0,112,5,1,3,3,5,1),('Tall Girl 2',2022,6,0,97,6,1,3,4,6,1),('Drishyam 2',2022,8,0,140,7,2,2,5,7,1),('Oppenheimer',2023,8,0,180,8,2,3,6,8,1),('Roma',2018,8,0,135,9,2,4,7,9,1),('Portrait of a Lady on Fire',2019,8,0,120,10,2,5,7,10,1),('Drive My Car',2021,8,0,179,11,2,6,5,11,1),('Parasite',2019,9,0,132,12,2,7,7,12,1),('Mad Max: Fury Road',2015,8,0,120,13,3,3,1,13,1),('It',2017,7,0,135,14,3,3,8,14,1),('The 40-Year-Old Virgin',2005,7,0,116,15,3,3,3,15,1),('Crazy, Stupid, Love',2011,7,0,118,16,3,3,5,16,1),('Blade Runner 2049',2017,8,0,164,17,3,3,2,17,1),('Wonder Woman 1984',2020,5,0,151,18,3,3,1,18,1),('Prey',2022,7,0,99,19,4,3,1,19,1),('The Lodge',2019,6,0,108,20,4,3,8,20,1),('Palm Springs',2020,7,0,90,21,4,3,3,21,1),('The Big Sick',2017,8,0,120,22,4,3,5,22,1),('The Matrix',1999,9,0,136,23,4,3,2,23,1),('23337',2016,8,0,600,24,4,3,1,24,1),('Midsommar',2019,7,0,147,25,4,4,8,25,1),('Booksmart',2019,7,0,105,26,4,3,3,26,1),('Avengers: Endgame',2019,8,0,181,27,5,3,1,27,1),('A Quiet Place',2018,8,0,90,28,5,3,8,28,1),('The Incredibles',2004,8,0,115,29,5,3,9,29,1),('The Notebook',2004,8,0,123,30,5,3,5,30,1),('Star Wars: A New Hope',1977,9,0,121,31,5,3,2,31,1),('Black Panther',2018,7,0,134,32,5,3,1,32,1),('Frozen',2013,7,0,102,33,5,3,9,33,1),('Senapathi',2021,7,0,145,34,6,1,6,34,1),('Bhamakalapam',2022,7,0,125,35,6,1,3,35,1),('Bloody Mary',2022,6,0,105,36,6,1,6,36,1),('Highway',2022,6,0,138,37,6,1,10,37,1),('Rathasaatchi',2022,7,0,150,38,6,1,1,38,1),('Sathi Gani Rendu Ekaralu',2023,7,0,127,39,6,1,7,38,1),('Sevappi',2024,6,0,110,40,6,1,10,38,1),('Bhamakalapam 2',2024,7,0,130,41,6,1,3,39,1),('Mix Up',2024,7,0,100,42,6,1,7,40,1),('Stranger Things',2016,9,5,600,43,1,3,2,41,2),('The Witcher',2019,8,3,520,44,1,3,11,42,2),('Money Heist',2017,8,5,600,45,1,4,10,43,2),('Bridgerton',2020,7,2,450,46,1,3,5,44,2),('The Crown',2016,9,6,600,47,1,3,7,45,2),('Narcos',2015,9,3,650,48,1,4,10,46,2),('The Umbrella Academy',2019,8,3,500,49,1,3,1,47,2),('Ozark',2017,9,4,600,50,1,3,6,48,2),('Squid Game',2021,8,1,540,51,1,7,6,49,2),('Tiger King',2020,8,2,300,52,1,3,12,50,2),('Mirzapur',2018,9,3,500,53,2,2,1,51,2),('The Boys',2019,9,4,600,54,2,3,13,52,2),('LOL: Last One Laughing',2020,7,2,450,55,2,4,3,53,2),('Breathe: Into the Shadows',2020,8,2,480,56,2,2,6,54,2),('Dark Woods',2020,7,1,500,57,2,3,10,55,2),('The Family Man',2019,9,2,450,58,2,2,1,56,2),('El Presidente',2020,7,1,450,59,2,4,7,57,2),('Paatal Lok',2020,8,1,400,60,2,2,10,58,2),('Bang Bang Baby',2022,7,1,400,61,2,8,6,59,2),('Euphoria',2019,8,2,500,62,3,3,6,60,2),('Succession',2018,9,4,540,63,3,3,3,61,2),('The Last of Us',2023,9,1,600,64,3,3,10,62,2),('Westworld',2016,9,4,300,65,3,3,1,63,2),('Hacks',2021,8,2,300,66,3,3,7,64,2),('Barry',2018,8,4,480,67,3,3,5,65,2),('Mare of Easttown',2021,9,1,480,68,3,3,10,66,2),('Watchmen',2019,8,1,300,69,3,3,1,67,2),('Chernobyl',2019,9,1,600,70,3,3,7,68,2),('The Handmaid\'s Tale',2017,8,5,300,71,4,3,7,69,2),('Only Murders in the Building',2021,8,3,300,72,4,3,3,70,2),('The Bear',2022,8,2,240,73,4,3,7,71,2),('Castle Rock',2018,8,2,320,74,4,3,6,72,2),('Ramy',2019,8,3,240,75,4,3,3,73,2),('Pen15',2019,8,2,350,76,4,3,3,74,2),('Solar Opposites',2020,8,4,360,77,4,3,9,75,2),('Shrill',2019,7,3,300,78,4,3,3,76,2),('The Mandalorian',2019,9,3,300,79,5,3,1,77,2),('WandaVision',2021,8,1,240,80,5,3,1,78,2),('Loki',2021,8,2,240,81,5,3,1,79,2),('The Falcon and the Winter Soldier',2021,8,1,450,82,5,3,1,80,2),('Star Wars: The Bad Batch',2021,8,2,600,83,5,3,9,81,2),('The Book of Boba Fett',2021,7,1,520,84,5,3,1,82,2),('High School Musical: The Musical: The Series',2019,8,4,600,85,5,3,7,83,2),('In the Name of God',2021,8,1,450,86,6,7,6,84,2),('Kudi Yedamaithe',2021,8,1,600,87,6,1,6,85,2),('Irai',2021,8,1,650,88,6,9,6,80,2),('Anya\'s Tutorial',2021,8,1,500,89,6,3,6,86,2),('Agent Anand Santosh',2021,7,0,600,90,6,1,3,87,2),('Good Night Oppy',2022,8,0,105,91,3,3,12,88,3),('The Janes',2022,8,0,101,92,5,3,12,38,3),('Fire of Love',2022,8,0,93,93,1,3,12,38,3),('The Tinder Swindler',2022,7,0,114,94,4,3,12,89,3),('Summer of Soul (...Or, When the Revolution Could Not Be Televised)',2021,8,0,117,95,1,3,12,90,3),('The Deepest Breath',2023,8,0,101,96,3,3,12,91,3),('Navalny',2022,8,0,98,97,1,3,12,92,3),('The Social Dilemma',2020,8,0,94,98,1,3,12,93,3),('My Octopus Teacher',2020,8,0,85,99,5,3,12,94,3),('The Beatles: Get Back',2021,9,0,468,100,1,3,12,95,3),('Three Identical Strangers',2018,8,0,96,101,1,3,12,96,3),('The Most Hated Man on the Internet',2022,7,0,220,102,3,3,12,97,3),('Stax: Soulsville U.S.A.',2024,0,0,226,103,5,3,12,98,3),('The Beach Boys',2024,0,0,225,104,2,3,12,99,3),('The Act of Killing',2012,8,0,159,105,2,3,12,100,3),('Amy',2015,8,0,128,106,1,3,12,101,3),('The Staircase',2018,8,0,318,107,1,3,12,102,3),('Disclosure',2020,8,0,107,108,1,3,12,38,3),('The Speed Cubers',2020,7,0,40,109,1,3,12,38,3),('American Nightmare',2024,0,0,255,110,1,3,12,103,3),('RRR',2022,9,NULL,187,111,3,1,1,48,1);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_type`
--

DROP TABLE IF EXISTS `content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_type` (
  `content_type` varchar(32) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_type`
--

LOCK TABLES `content_type` WRITE;
/*!40000 ALTER TABLE `content_type` DISABLE KEYS */;
INSERT INTO `content_type` VALUES ('movie',1),('Series',2),('Documentary',3),('streaming Events',4);
/*!40000 ALTER TABLE `content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `contentbyyear`
--

DROP TABLE IF EXISTS `contentbyyear`;
/*!50001 DROP VIEW IF EXISTS `contentbyyear`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `contentbyyear` AS SELECT
 1 AS `title`,
  1 AS `year`,
  1 AS `Ott_platform` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `Total_number_of_directions` int(11) NOT NULL,
  `Director_name` varchar(32) NOT NULL,
  `ID` int(11) NOT NULL,
  `Age` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (10,'Sukumar',1,45),(15,'Rob Cohen',2,52),(20,'Christopher Nolan',3,47),(5,'Emily Ting',4,34),(8,'Jeethu Joseph',5,50),(12,'Alfonso Cuarón',6,59),(10,'Céline Sciamma',7,41),(7,'Ryūsuke Hamaguchi',8,43),(15,'Bong Joon-ho',9,49),(25,'George Miller',10,66),(6,'Andy Muschietti',11,41),(9,'Judd Apatow',12,38),(11,'Glenn Ficarra',13,46),(18,'Denis Villeneuve',14,57),(14,'Patty Jenkins',15,45),(10,'Dan Trachtenberg',16,42),(8,'Severin Fiala',17,44),(13,'Max Barbakow',18,36),(17,'Michael Showalter',19,48),(19,'The Wachowskis',20,54),(10,'James Franco',21,55),(11,'Ari Aster',22,49),(13,'Olivia Wilde',23,52),(16,'Anthony Russo',24,46),(14,'Joe Russo',25,44),(9,'John Krasinski',26,48),(11,'Brad Bird',27,50),(7,'Nick Cassavetes',28,42),(15,'George Lucas',29,55),(13,'Ryan Coogler',30,43),(12,'Chris Buck',31,59),(10,'Jennifer Lee',32,37),(8,'P. Vasu',33,51),(20,'Abhinav Sunder Nayak',34,42),(11,'Chandoo Mondeti',35,53),(17,'Imtiaz Ali',36,56),(9,'S. Ravi Kumar',37,44),(15,'Rohith',38,48),(18,'The Duffer Brothers',39,47),(11,'Lauren Schmidt Hissrich',40,39),(14,'Álex Pina',41,49),(17,'Chris Van Dusen',42,43),(9,'Peter Morgan',43,45),(15,'José Padilha',44,55),(11,'Steve Blackman',45,48),(14,'Bill Dubuque',46,49),(10,'Mark Williams',47,50),(12,'Hwang Dong-hyuk',48,43),(7,'Eric Goode',49,47),(10,'Rebecca Chaiklin',50,41),(19,'Raj Nidimoru',51,46),(10,'Krishna D.K.',52,45),(8,'Armando Bó',53,42),(10,'Avinash Arun',54,48),(14,'Prosit Roy',55,38),(11,'Michele Alhaique',56,53),(12,'Sam Levinson',57,50),(7,'Craig Mazin',58,54),(10,'Jonathan Nolan',59,44),(13,'Lisa Joy',60,44),(8,'Lucia Aniello',61,46),(14,'Paul W. Downs',62,52),(18,'Jen Statsky',63,48),(11,'Bill Hader',64,49),(10,'Craig Zobel',65,39),(17,'Damon Lindelof',66,45),(11,'Bruce Miller',67,50),(13,'Steve Martin',68,53),(14,'John Hoffman',69,48),(15,'Christopher Storer',70,44),(10,'Sam Shaw',71,45),(11,'Dustin Thomason',72,48),(13,'Ramy Youssef',73,53),(9,'Maya Erskine',74,49),(12,'Anna Konkle',75,44),(10,'Justin Roiland',76,52),(11,'Mike McMahan',77,38),(10,'Lindy West',78,46),(8,'Ali Rushfield',79,45),(17,'Jon Favreau',80,51),(12,'Matt Shakman',81,53),(13,'Michael Waldron',82,46),(11,'Kari Skogland',83,42),(10,'Brad Rau',84,48),(12,'Robert Rodriguez',85,44),(14,'Tim Federle',86,40),(15,'Radhakrishnan Parthiban',87,53),(10,'Sasikanth',88,45),(9,'Ryan White',89,50),(12,'Tia Lessin',90,48),(10,'Emma Pildes',91,52),(11,'Sara Dosa',92,46),(10,'Felicity Morris',93,42),(8,'Ahmir \"Questlove\" Thompson',94,48),(17,'Laura McGann',95,44),(12,'Daniel Roher',96,55),(13,'Jeff Orlowski',97,40),(11,'Pippa Ehrlich',98,53),(10,'James Reed',99,45),(12,'Peter Jackson',100,47),(12,'Tim Wardle',101,55),(12,'Rob Miller',102,50),(6,'Joshua Oppenheimer',103,61);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `Genre_type` varchar(32) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('Action',1),('Sci-fi',2),('Comedy',3),('Romantic',4),('Romance',5),('Thriller',6),('Drama',7),('Horror',8),('Animation',9),('Crime',10),('Fantasy',11),('Documentary',12),('Superhero',13);
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `Language` varchar(32) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES ('Telugu',1),('Hindi',2),('English',3),('Spanish',4),('French',5),('Japanese',6),('Korean',7),('Italian',8),('Tamil',9);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `moviecontent`
--

DROP TABLE IF EXISTS `moviecontent`;
/*!50001 DROP VIEW IF EXISTS `moviecontent`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `moviecontent` AS SELECT
 1 AS `title`,
  1 AS `OTT_platform`,
  1 AS `content_type` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ott_content_type`
--

DROP TABLE IF EXISTS `ott_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ott_content_type` (
  `OTT_Platform_ID` int(11) NOT NULL,
  `Content_Type_ID` int(11) NOT NULL,
  `OC_ID` int(11) NOT NULL,
  `Content_Available` int(11) NOT NULL,
  PRIMARY KEY (`OC_ID`),
  KEY `OTT_Platform_Content_Type_Content_Type` (`Content_Type_ID`),
  KEY `OTT_Platform_Content_Type_OTT_Platform` (`OTT_Platform_ID`),
  CONSTRAINT `OTT_Platform_Content_Type_Content_Type` FOREIGN KEY (`Content_Type_ID`) REFERENCES `content_type` (`ID`),
  CONSTRAINT `OTT_Platform_Content_Type_OTT_Platform` FOREIGN KEY (`OTT_Platform_ID`) REFERENCES `ott_platform` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ott_content_type`
--

LOCK TABLES `ott_content_type` WRITE;
/*!40000 ALTER TABLE `ott_content_type` DISABLE KEYS */;
INSERT INTO `ott_content_type` VALUES (1,1,1,6),(1,2,2,10),(1,3,3,11),(2,1,4,6),(2,2,5,9),(2,3,6,2),(3,1,7,6),(3,2,8,9),(3,3,9,3),(4,1,10,8),(4,2,11,8),(4,3,12,1),(5,1,13,7),(5,2,14,7),(5,3,15,3),(6,1,16,9),(6,2,17,5),(6,3,18,0);
/*!40000 ALTER TABLE `ott_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ott_director`
--

DROP TABLE IF EXISTS `ott_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ott_director` (
  `OTT_Platform_ID` int(11) NOT NULL,
  `Director_ID` int(11) NOT NULL,
  `OD_ID` int(11) NOT NULL,
  `Content_Available` int(11) NOT NULL,
  PRIMARY KEY (`OD_ID`),
  KEY `OTT_Platform_Director_Director` (`Director_ID`),
  KEY `OTT_Platform_Director_OTT_Platform` (`OTT_Platform_ID`),
  CONSTRAINT `OTT_Platform_Director_Director` FOREIGN KEY (`Director_ID`) REFERENCES `director` (`ID`),
  CONSTRAINT `OTT_Platform_Director_OTT_Platform` FOREIGN KEY (`OTT_Platform_ID`) REFERENCES `ott_platform` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ott_director`
--

LOCK TABLES `ott_director` WRITE;
/*!40000 ALTER TABLE `ott_director` DISABLE KEYS */;
INSERT INTO `ott_director` VALUES (1,1,1,1),(1,2,2,1),(1,3,3,1),(1,4,4,1),(1,5,5,1),(1,6,6,1),(1,7,7,0),(1,8,8,0),(1,9,9,0),(1,10,10,0),(1,11,11,0),(1,12,12,0),(1,13,13,0),(1,14,14,0),(1,15,15,0),(1,16,16,0),(1,17,17,0),(1,18,18,0),(1,19,19,0),(1,20,20,0),(1,21,21,0),(1,22,22,0),(1,23,23,0),(1,24,24,0),(1,25,25,0),(1,26,26,0),(1,27,27,0),(1,28,28,0),(1,29,29,0),(1,30,30,0),(1,31,31,0),(1,32,32,0),(1,33,33,0),(1,34,34,0),(1,35,35,0),(1,36,36,0),(1,37,37,0),(1,38,38,3),(1,39,39,0),(1,40,40,0),(1,41,41,1),(1,42,42,1),(1,43,43,1),(1,44,44,1),(1,45,45,1),(1,46,46,1),(1,47,47,1),(1,48,48,2),(1,49,49,1),(1,50,50,1),(1,51,51,0),(1,52,52,0),(1,53,53,0),(1,54,54,0),(1,55,55,0),(1,56,56,0),(1,57,57,0),(1,58,58,0),(1,59,59,0),(1,60,60,0),(1,61,61,0),(1,62,62,0),(1,63,63,0),(1,64,64,0),(1,65,65,0),(1,66,66,0),(1,67,67,0),(1,68,68,0),(1,69,69,0),(1,70,70,0),(1,71,71,0),(1,72,72,0),(1,73,73,0),(1,74,74,0),(1,75,75,0),(1,76,76,0),(1,77,77,0),(1,78,78,0),(1,79,79,0),(1,80,80,0),(1,81,81,0),(1,82,82,0),(1,83,83,0),(1,84,84,0),(1,85,85,0),(1,86,86,0),(1,87,87,0),(1,88,88,0),(1,89,89,0),(1,90,90,1),(1,91,91,0),(1,92,92,1),(1,93,93,1),(1,94,94,0),(1,95,95,1),(1,96,96,1),(1,97,97,0),(1,98,98,0),(1,99,99,0),(1,100,100,0),(1,101,101,1),(1,102,102,1),(1,103,103,1),(2,1,104,0),(2,2,105,0),(2,3,106,0),(2,4,107,0),(2,5,108,0),(2,6,109,0),(2,7,110,1),(2,8,111,1),(2,9,112,1),(2,10,113,1),(2,11,114,1),(2,12,115,1),(2,13,116,0),(2,14,117,0),(2,15,118,0),(2,16,119,0),(2,17,120,0),(2,18,121,0),(2,19,122,0),(2,20,123,0),(2,21,124,0),(2,22,125,0),(2,23,126,0),(2,24,127,0),(2,25,128,0),(2,26,129,0),(2,27,130,0),(2,28,131,0),(2,29,132,0),(2,30,133,0),(2,31,134,0),(2,32,135,0),(2,33,136,0),(2,34,137,0),(2,35,138,0),(2,36,139,0),(2,37,140,0),(2,38,141,0),(2,39,142,0),(2,40,143,0),(2,41,144,0),(2,42,145,0),(2,43,146,0),(2,44,147,0),(2,45,148,0),(2,46,149,0),(2,47,150,0),(2,48,151,0),(2,49,152,0),(2,50,153,0),(2,51,154,1),(2,52,155,1),(2,53,156,1),(2,54,157,1),(2,55,158,1),(2,56,159,1),(2,57,160,1),(2,58,161,1),(2,59,162,1),(2,60,163,0),(2,61,164,0),(2,62,165,0),(2,63,166,0),(2,64,167,0),(2,65,168,0),(2,66,169,0),(2,67,170,0),(2,68,171,0),(2,69,172,0),(2,70,173,0),(2,71,174,0),(2,72,175,0),(2,73,176,0),(2,74,177,0),(2,75,178,0),(2,76,179,0),(2,77,180,0),(2,78,181,0),(2,79,182,0),(2,80,183,0),(2,81,184,0),(2,82,185,0),(2,83,186,0),(2,84,187,0),(2,85,188,0),(2,86,189,0),(2,87,190,0),(2,88,191,0),(2,89,192,0),(2,90,193,0),(2,91,194,0),(2,92,195,0),(2,93,196,0),(2,94,197,0),(2,95,198,0),(2,96,199,0),(2,97,200,0),(2,98,201,0),(2,99,202,1),(2,100,203,1),(2,101,204,0),(2,102,205,0),(2,103,206,0),(2,1,207,0),(2,2,208,0),(2,3,209,0),(2,4,210,0),(2,5,211,0),(2,6,212,0),(2,7,213,1),(2,8,214,1),(2,9,215,1),(2,10,216,1),(2,11,217,1),(2,12,218,1),(2,13,219,0),(2,14,220,0),(2,15,221,0),(2,16,222,0),(2,17,223,0),(2,18,224,0),(2,19,225,0),(2,20,226,0),(2,21,227,0),(2,22,228,0),(2,23,229,0),(2,24,230,0),(2,25,231,0),(2,26,232,0),(2,27,233,0),(2,28,234,0),(2,29,235,0),(2,30,236,0),(2,31,237,0),(2,32,238,0),(2,33,239,0),(2,34,240,0),(2,35,241,0),(2,36,242,0),(2,37,243,0),(2,38,244,0),(2,39,245,0),(2,40,246,0),(2,41,247,0),(2,42,248,0),(2,43,249,0),(2,44,250,0),(2,45,251,0),(2,46,252,0),(2,47,253,0),(2,48,254,0),(2,49,255,0),(2,50,256,0),(2,51,257,1),(2,52,258,1),(2,53,259,1),(2,54,260,1),(2,55,261,1),(2,56,262,1),(2,57,263,1),(2,58,264,1),(2,59,265,1),(2,60,266,0),(2,61,267,0),(2,62,268,0),(2,63,269,0),(2,64,270,0),(2,65,271,0),(2,66,272,0),(2,67,273,0),(2,68,274,0),(2,69,275,0),(2,70,276,0),(2,71,277,0),(2,72,278,0),(2,73,279,0),(2,74,280,0),(2,75,281,0),(2,76,282,0),(2,77,283,0),(2,78,284,0),(2,79,285,0),(2,80,286,0),(2,81,287,0),(2,82,288,0),(2,83,289,0),(2,84,290,0),(2,85,291,0),(2,86,292,0),(2,87,293,0),(2,88,294,0),(2,89,295,0),(2,90,296,0),(2,91,297,0),(2,92,298,0),(2,93,299,0),(2,94,300,0),(2,95,301,0),(2,96,302,0),(2,97,303,0),(2,98,304,0),(2,99,305,1),(2,100,306,1),(2,101,307,0),(2,102,308,0),(2,103,309,0),(3,1,310,0),(3,2,311,0),(3,3,312,0),(3,4,313,0),(3,5,314,0),(3,6,315,0),(3,7,316,0),(3,8,317,0),(3,9,318,0),(3,10,319,0),(3,11,320,0),(3,12,321,0),(3,13,322,1),(3,14,323,1),(3,15,324,1),(3,16,325,1),(3,17,326,1),(3,18,327,1),(3,19,328,0),(3,20,329,0),(3,21,330,0),(3,22,331,0),(3,23,332,0),(3,24,333,0),(3,25,334,0),(3,26,335,0),(3,27,336,0),(3,28,337,0),(3,29,338,0),(3,30,339,0),(3,31,340,0),(3,32,341,0),(3,33,342,0),(3,34,343,0),(3,35,344,0),(3,36,345,0),(3,37,346,0),(3,38,347,0),(3,39,348,0),(3,40,349,0),(3,41,350,0),(3,42,351,0),(3,43,352,0),(3,44,353,0),(3,45,354,0),(3,46,355,0),(3,47,356,0),(3,48,357,0),(3,49,358,0),(3,50,359,0),(3,51,360,0),(3,52,361,0),(3,53,362,0),(3,54,363,0),(3,55,364,0),(3,56,365,0),(3,57,366,0),(3,58,367,0),(3,59,368,0),(3,60,369,1),(3,61,370,1),(3,62,371,1),(3,63,372,1),(3,64,373,1),(3,65,374,1),(3,66,375,1),(3,67,376,1),(3,68,377,1),(3,69,378,0),(3,70,379,0),(3,71,380,0),(3,72,381,0),(3,73,382,0),(3,74,383,0),(3,75,384,0),(3,76,385,0),(3,77,386,0),(3,78,387,0),(3,79,388,0),(3,80,389,0),(3,81,390,0),(3,82,391,0),(3,83,392,0),(3,84,393,0),(3,85,394,0),(3,86,395,0),(3,87,396,0),(3,88,397,1),(3,89,398,0),(3,90,399,0),(3,91,400,1),(3,92,401,0),(3,93,402,0),(3,94,403,0),(3,95,404,0),(3,96,405,0),(3,97,406,1),(3,98,407,0),(3,99,408,0),(3,100,409,0),(3,101,410,0),(3,102,411,0),(3,103,412,0),(3,1,413,0),(3,2,414,0),(3,3,415,0),(3,4,416,0),(3,5,417,0),(3,6,418,0),(3,7,419,0),(3,8,420,0),(3,9,421,0),(3,10,422,0),(3,11,423,0),(3,12,424,0),(3,13,425,1),(3,14,426,1),(3,15,427,1),(3,16,428,1),(3,17,429,1),(3,18,430,1),(3,19,431,0),(3,20,432,0),(3,21,433,0),(3,22,434,0),(3,23,435,0),(3,24,436,0),(3,25,437,0),(3,26,438,0),(3,27,439,0),(3,28,440,0),(3,29,441,0),(3,30,442,0),(3,31,443,0),(3,32,444,0),(3,33,445,0),(3,34,446,0),(3,35,447,0),(3,36,448,0),(3,37,449,0),(3,38,450,0),(3,39,451,0),(3,40,452,0),(3,41,453,0),(3,42,454,0),(3,43,455,0),(3,44,456,0),(3,45,457,0),(3,46,458,0),(3,47,459,0),(3,48,460,0),(3,49,461,0),(3,50,462,0),(3,51,463,0),(3,52,464,0),(3,53,465,0),(3,54,466,0),(3,55,467,0),(3,56,468,0),(3,57,469,0),(3,58,470,0),(3,59,471,0),(3,60,472,1),(3,61,473,1),(3,62,474,1),(3,63,475,1),(3,64,476,1),(3,65,477,1),(3,66,478,1),(3,67,479,1),(3,68,480,1),(3,69,481,0),(3,70,482,0),(3,71,483,0),(3,72,484,0),(3,73,485,0),(3,74,486,0),(3,75,487,0),(3,76,488,0),(3,77,489,0),(3,78,490,0),(3,79,491,0),(3,80,492,0),(3,81,493,0),(3,82,494,0),(3,83,495,0),(3,84,496,0),(3,85,497,0),(3,86,498,0),(3,87,499,0),(3,88,500,1),(3,89,501,0),(3,90,502,0),(3,91,503,1),(3,92,504,0),(3,93,505,0),(3,94,506,0),(3,95,507,0),(3,96,508,0),(3,97,509,1),(3,98,510,0),(3,99,511,0),(3,100,512,0),(3,101,513,0),(3,102,514,0),(3,103,515,0),(4,1,516,0),(4,2,517,0),(4,3,518,0),(4,4,519,0),(4,5,520,0),(4,6,521,0),(4,7,522,0),(4,8,523,0),(4,9,524,0),(4,10,525,0),(4,11,526,0),(4,12,527,0),(4,13,528,0),(4,14,529,0),(4,15,530,0),(4,16,531,0),(4,17,532,0),(4,18,533,0),(4,19,534,1),(4,20,535,1),(4,21,536,1),(4,22,537,1),(4,23,538,1),(4,24,539,1),(4,25,540,1),(4,26,541,1),(4,27,542,0),(4,28,543,0),(4,29,544,0),(4,30,545,0),(4,31,546,0),(4,32,547,0),(4,33,548,0),(4,34,549,0),(4,35,550,0),(4,36,551,0),(4,37,552,0),(4,38,553,0),(4,39,554,0),(4,40,555,0),(4,41,556,0),(4,42,557,0),(4,43,558,0),(4,44,559,0),(4,45,560,0),(4,46,561,0),(4,47,562,0),(4,48,563,0),(4,49,564,0),(4,50,565,0),(4,51,566,0),(4,52,567,0),(4,53,568,0),(4,54,569,0),(4,55,570,0),(4,56,571,0),(4,57,572,0),(4,58,573,0),(4,59,574,0),(4,60,575,0),(4,61,576,0),(4,62,577,0),(4,63,578,0),(4,64,579,0),(4,65,580,0),(4,66,581,0),(4,67,582,0),(4,68,583,0),(4,69,584,1),(4,70,585,1),(4,71,586,1),(4,72,587,1),(4,73,588,1),(4,74,589,1),(4,75,590,1),(4,76,591,1),(4,77,592,0),(4,78,593,0),(4,79,594,0),(4,80,595,0),(4,81,596,0),(4,82,597,0),(4,83,598,0),(4,84,599,0),(4,85,600,0),(4,86,601,0),(4,87,602,0),(4,88,603,0),(4,89,604,1),(4,90,605,0),(4,91,606,0),(4,92,607,0),(4,93,608,0),(4,94,609,0),(4,95,610,0),(4,96,611,0),(4,97,612,0),(4,98,613,0),(4,99,614,0),(4,100,615,0),(4,101,616,0),(4,102,617,0),(4,103,618,0),(5,1,619,0),(5,2,620,0),(5,3,621,0),(5,4,622,0),(5,5,623,0),(5,6,624,0),(5,7,625,0),(5,8,626,0),(5,9,627,0),(5,10,628,0),(5,11,629,0),(5,12,630,0),(5,13,631,0),(5,14,632,0),(5,15,633,0),(5,16,634,0),(5,17,635,0),(5,18,636,0),(5,19,637,0),(5,20,638,0),(5,21,639,0),(5,22,640,0),(5,23,641,0),(5,24,642,0),(5,25,643,0),(5,26,644,0),(5,27,645,1),(5,28,646,1),(5,29,647,1),(5,30,648,1),(5,31,649,1),(5,32,650,1),(5,33,651,1),(5,34,652,0),(5,35,653,0),(5,36,654,0),(5,37,655,0),(5,38,656,1),(5,39,657,0),(5,40,658,0),(5,41,659,0),(5,42,660,0),(5,43,661,0),(5,44,662,0),(5,45,663,0),(5,46,664,0),(5,47,665,0),(5,48,666,0),(5,49,667,0),(5,50,668,0),(5,51,669,0),(5,52,670,0),(5,53,671,0),(5,54,672,0),(5,55,673,0),(5,56,674,0),(5,57,675,0),(5,58,676,0),(5,59,677,0),(5,60,678,0),(5,61,679,0),(5,62,680,0),(5,63,681,0),(5,64,682,0),(5,65,683,0),(5,66,684,0),(5,67,685,0),(5,68,686,0),(5,69,687,0),(5,70,688,0),(5,71,689,0),(5,72,690,0),(5,73,691,0),(5,74,692,0),(5,75,693,0),(5,76,694,0),(5,77,695,1),(5,78,696,1),(5,79,697,1),(5,80,698,1),(5,81,699,1),(5,82,700,1),(5,83,701,1),(5,84,702,0),(5,85,703,0),(5,86,704,0),(5,87,705,0),(5,88,706,0),(5,89,707,0),(5,90,708,0),(5,91,709,0),(5,92,710,0),(5,93,711,0),(5,94,712,1),(5,95,713,0),(5,96,714,0),(5,97,715,0),(5,98,716,1),(5,99,717,0),(5,100,718,0),(5,101,719,0),(5,102,720,0),(5,103,721,0),(6,1,722,0),(6,2,723,0),(6,3,724,0),(6,4,725,0),(6,5,726,0),(6,6,727,0),(6,7,728,0),(6,8,729,0),(6,9,730,0),(6,10,731,0),(6,11,732,0),(6,12,733,0),(6,13,734,0),(6,14,735,0),(6,15,736,0),(6,16,737,0),(6,17,738,0),(6,18,739,0),(6,19,740,0),(6,20,741,0),(6,21,742,0),(6,22,743,0),(6,23,744,0),(6,24,745,0),(6,25,746,0),(6,26,747,0),(6,27,748,0),(6,28,749,0),(6,29,750,0),(6,30,751,0),(6,31,752,0),(6,32,753,0),(6,33,754,0),(6,34,755,1),(6,35,756,1),(6,36,757,1),(6,37,758,1),(6,38,759,3),(6,39,760,1),(6,40,761,1),(6,41,762,0),(6,42,763,0),(6,43,764,0),(6,44,765,0),(6,45,766,0),(6,46,767,0),(6,47,768,0),(6,48,769,0),(6,49,770,0),(6,50,771,0),(6,51,772,0),(6,52,773,0),(6,53,774,0),(6,54,775,0),(6,55,776,0),(6,56,777,0),(6,57,778,0),(6,58,779,0),(6,59,780,0),(6,60,781,0),(6,61,782,0),(6,62,783,0),(6,63,784,0),(6,64,785,0),(6,65,786,0),(6,66,787,0),(6,67,788,0),(6,68,789,0),(6,69,790,0),(6,70,791,0),(6,71,792,0),(6,72,793,0),(6,73,794,0),(6,74,795,0),(6,75,796,0),(6,76,797,0),(6,77,798,0),(6,78,799,0),(6,79,800,0),(6,80,801,1),(6,81,802,0),(6,82,803,0),(6,83,804,0),(6,84,805,1),(6,85,806,1),(6,86,807,1),(6,87,808,1),(6,88,809,0),(6,89,810,0),(6,90,811,0),(6,91,812,0),(6,92,813,0),(6,93,814,0),(6,94,815,0),(6,95,816,0),(6,96,817,0),(6,97,818,0),(6,98,819,0),(6,99,820,0),(6,100,821,0),(6,101,822,0),(6,102,823,0),(6,103,824,0);
/*!40000 ALTER TABLE `ott_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ott_genre`
--

DROP TABLE IF EXISTS `ott_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ott_genre` (
  `OTT_Platform_ID` int(11) NOT NULL,
  `Genre_ID` int(11) NOT NULL,
  `OG_ID` int(11) NOT NULL,
  `Content_Available` int(11) NOT NULL,
  PRIMARY KEY (`OG_ID`),
  KEY `OTT_Platform_Genre_Genre` (`Genre_ID`),
  KEY `OTT_Platform_Genre_OTT_Platform` (`OTT_Platform_ID`),
  CONSTRAINT `OTT_Platform_Genre_Genre` FOREIGN KEY (`Genre_ID`) REFERENCES `genre` (`ID`),
  CONSTRAINT `OTT_Platform_Genre_OTT_Platform` FOREIGN KEY (`OTT_Platform_ID`) REFERENCES `ott_platform` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ott_genre`
--

LOCK TABLES `ott_genre` WRITE;
/*!40000 ALTER TABLE `ott_genre` DISABLE KEYS */;
INSERT INTO `ott_genre` VALUES (1,1,1,4),(1,2,2,2),(1,3,3,1),(1,4,4,1),(1,5,5,1),(1,6,6,2),(1,7,7,1),(1,8,8,0),(1,9,9,0),(1,10,10,2),(1,11,11,1),(1,12,12,12),(1,13,13,0),(2,1,14,2),(2,2,15,0),(2,3,16,1),(2,4,17,0),(2,5,18,2),(2,6,19,3),(2,7,20,4),(2,8,21,0),(2,9,22,0),(2,10,23,2),(2,11,24,0),(2,12,25,2),(2,13,26,1),(3,1,27,4),(3,2,28,1),(3,3,29,2),(3,4,30,0),(3,5,31,2),(3,6,32,1),(3,7,33,2),(3,8,34,1),(3,9,35,0),(3,10,36,2),(3,11,37,0),(3,12,38,3),(3,13,39,0),(4,1,40,2),(4,2,41,1),(4,3,42,6),(4,4,43,0),(4,5,44,1),(4,6,45,1),(4,7,46,2),(4,8,47,2),(4,9,48,1),(4,10,49,0),(4,11,50,0),(4,12,51,1),(4,13,52,0),(5,1,53,7),(5,2,54,1),(5,3,55,0),(5,4,56,0),(5,5,57,1),(5,6,58,0),(5,7,59,1),(5,8,60,1),(5,9,61,3),(5,10,62,0),(5,11,63,0),(5,12,64,3),(5,13,65,0),(6,1,66,1),(6,2,67,0),(6,3,68,3),(6,4,69,0),(6,5,70,0),(6,6,71,6),(6,7,72,2),(6,8,73,0),(6,9,74,0),(6,10,75,2),(6,11,76,0),(6,12,77,0),(6,13,78,0);
/*!40000 ALTER TABLE `ott_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ott_language`
--

DROP TABLE IF EXISTS `ott_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ott_language` (
  `OTT_Platform_ID` int(11) NOT NULL,
  `Language_ID` int(11) NOT NULL,
  `OL_ID` int(11) NOT NULL,
  `Content_Available` int(11) NOT NULL,
  PRIMARY KEY (`OL_ID`),
  KEY `OTT_Platform_Language_Language` (`Language_ID`),
  KEY `OTT_Platform_Language_OTT_Platform` (`OTT_Platform_ID`),
  CONSTRAINT `OTT_Platform_Language_Language` FOREIGN KEY (`Language_ID`) REFERENCES `language` (`ID`),
  CONSTRAINT `OTT_Platform_Language_OTT_Platform` FOREIGN KEY (`OTT_Platform_ID`) REFERENCES `ott_platform` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ott_language`
--

LOCK TABLES `ott_language` WRITE;
/*!40000 ALTER TABLE `ott_language` DISABLE KEYS */;
INSERT INTO `ott_language` VALUES (1,1,1,1),(1,2,2,1),(1,3,3,22),(1,4,4,2),(1,5,5,0),(1,6,6,0),(1,7,7,1),(1,8,8,0),(1,9,9,0),(2,1,10,0),(2,2,11,5),(2,3,12,5),(2,4,13,3),(2,5,14,1),(2,6,15,1),(2,7,16,1),(2,8,17,1),(2,9,18,0),(3,1,19,0),(3,2,20,0),(3,3,21,18),(3,4,22,0),(3,5,23,0),(3,6,24,0),(3,7,25,0),(3,8,26,0),(3,9,27,0),(4,1,28,0),(4,2,29,0),(4,3,30,16),(4,4,31,1),(5,5,32,0),(4,6,33,0),(4,7,34,0),(4,8,35,0),(4,9,36,0),(5,1,37,0),(5,2,38,0),(5,3,39,17),(5,4,40,0),(5,5,41,0),(5,6,42,0),(5,7,43,0),(5,8,44,0),(5,9,45,0),(6,1,46,11),(6,2,47,0),(6,3,48,1),(6,4,49,0),(6,5,50,0),(6,6,51,0),(6,7,52,1),(6,8,53,0),(6,9,54,1);
/*!40000 ALTER TABLE `ott_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ott_platform`
--

DROP TABLE IF EXISTS `ott_platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ott_platform` (
  `OTT_Platform` varchar(64) NOT NULL,
  `Total_number_of_contents` int(11) NOT NULL,
  `Number_of_users` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ott_platform`
--

LOCK TABLES `ott_platform` WRITE;
/*!40000 ALTER TABLE `ott_platform` DISABLE KEYS */;
INSERT INTO `ott_platform` VALUES ('Netflix',28,120,1),('Amazon Prime',17,112,2),('HBO max',18,111,3),('Hulu',17,98,4),('Disney Plus',17,88,5),('Ahaa',14,32,6);
/*!40000 ALTER TABLE `ott_platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_plan`
--

DROP TABLE IF EXISTS `subscription_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_plan` (
  `Plan_name` varchar(32) NOT NULL,
  `Price` int(11) NOT NULL,
  `Duration` varchar(64) NOT NULL,
  `Max_Devices` int(11) NOT NULL,
  `Ad_supported` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OTT_Platform_ID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Subscription_Plan_Streaming_Platform` (`OTT_Platform_ID`),
  CONSTRAINT `Subscription_Plan_Streaming_Platform` FOREIGN KEY (`OTT_Platform_ID`) REFERENCES `ott_platform` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_plan`
--

LOCK TABLES `subscription_plan` WRITE;
/*!40000 ALTER TABLE `subscription_plan` DISABLE KEYS */;
INSERT INTO `subscription_plan` VALUES ('Basic Plan',5,'1 month',1,0,1,1),('Standard Plan',10,'1 month',2,1,2,1),('Premium Plan',15,'1 month',4,0,3,1),('Basic Plan',6,'3 months',1,0,4,2),('Family Plan',20,'3 months',5,0,5,2),('Standard Plan',12,'3 months',2,1,6,2),('Basic Plan',7,'1 month',1,0,7,3),('Standard Plan',14,'1 month',2,1,8,3),('Premium Plan',18,'1 month',4,0,9,3),('Family Plan',25,'6 months',5,0,10,4),('Basic Plan',8,'1 month',1,1,11,4),('Standard Plan',13,'3 months',2,0,12,4),('Premium Plan',17,'6 months',4,1,13,5),('Family Plan',22,'6 months',5,0,14,5),('Basic Plan',9,'3 months',1,1,15,5),('Standard Plan',11,'3 months',2,0,16,6),('Premium Plan',16,'6 months',4,1,17,6),('Family Plan',24,'6 months',5,0,18,6),('Basic Plan',10,'1 month',1,0,19,6),('Standard Plan',15,'1 month',2,1,20,6),('premium+',30,'6 months',6,0,21,1);
/*!40000 ALTER TABLE `subscription_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `contentbyyear`
--

/*!50001 DROP VIEW IF EXISTS `contentbyyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contentbyyear` AS select `content`.`Title` AS `title`,`content`.`year` AS `year`,`o`.`OTT_Platform` AS `Ott_platform` from (`content` join `ott_platform` `o` on(`content`.`OTT_Platform_ID` = `o`.`ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `moviecontent`
--

/*!50001 DROP VIEW IF EXISTS `moviecontent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `moviecontent` AS select `c`.`Title` AS `title`,`o`.`OTT_Platform` AS `OTT_platform`,`ct`.`content_type` AS `content_type` from ((`content` `c` join `ott_platform` `o` on(`c`.`OTT_Platform_ID` = `o`.`ID`)) join `content_type` `ct` on(`c`.`Content_Type_ID` = `ct`.`ID`)) where `ct`.`ID` = 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-13 19:36:14
