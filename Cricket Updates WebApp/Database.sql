CREATE DATABASE  IF NOT EXISTS `cricguru` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `cricguru`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: cricguru
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `no_of_players`
--

DROP TABLE IF EXISTS `no_of_players`;
/*!50001 DROP VIEW IF EXISTS `no_of_players`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `no_of_players` AS SELECT 
 1 AS `country`,
 1 AS `total_players`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `players` (
  `Name` varchar(32) NOT NULL,
  `Country` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Name`),
  KEY `players_index` (`Country`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `teams` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES ('A Zampa ','Australia'),('AJ Finch ','Australia'),('B Lee ','Australia'),('DA Warner ','Australia'),('DJ Hussey','Australia'),('DP Nannes','Australia'),('Gilchrist ','Australia'),('GJ Maxwell ','Australia'),('MG Johnson ','Australia'),('PJ Cummins ','Australia'),('RT Ponting ','Australia'),('SR Watson ','Australia'),('Mahmudullah ','Bangladesh'),('Mashrafe Mortaza ','Bangladesh'),('Mushfiqur Rahim ','Bangladesh'),('Mustafizur Rahman ','Bangladesh'),('Sabbir Rahman ','Bangladesh'),('Shakib Al Hasan ','Bangladesh'),('Soumya Sarkar ','Bangladesh'),('Tamim Iqbal ','Bangladesh'),('Taskin Ahmed','Bangladesh'),('BA Stokes ','England'),('CJ Jordan ','England'),('EJG Morgan ','England'),('JC Buttler ','England'),('JC Tredwell ','England'),('JE Root ','England'),('JJ Roy ','England'),('JM Anderson ','England'),('KP Pietersen ','England'),('LE Plunkett ','England'),('PD Collingwood ','England'),('SCJ Broad ','England'),('A Nehra ','India'),('B Kumar ','India'),('G Gambhir ','India'),('JJ Bumrah ','India'),('MS Dhoni ','India'),('R Ashwin ','India'),('R Dravid ','India'),('RA Jadeja ','India'),('RG Sharma ','India'),('S Dhawan ','India'),('S Sreesanth','India'),('SK Raina ','India'),('SR Tendulkar ','India'),('V Kohli ','India'),('V Sehwag ','India'),('YS Chahal ','India'),('Yuvraj Singh ','India'),('Z Khan ','India'),('AF Milne ','New Zealand'),('BB McCullum ','New Zealand'),('C Munro ','New Zealand'),('JDP Oram','New Zealand'),('KS Williamson ','New Zealand'),('LRPL Taylor ','New Zealand'),('MJ Guptill ','New Zealand'),('MJ Santner ','New Zealand'),('TA Boult ','New Zealand'),('TG Southee ','New Zealand'),('Junaid Khan ','Pakistan'),('Misbah-ul-Haq ','Pakistan'),('Mohammad Hafeez ','Pakistan'),('Saeed Ajmal ','Pakistan'),('Shahid Afridi ','Pakistan'),('Shoaib Akhtar ','Pakistan'),('Shoaib Malik ','Pakistan'),('Umar Akmal ','Pakistan'),('Umar Gul ','Pakistan'),('AB de Villiers ','South Africa'),('CH Morris ','South Africa'),('DA Miller ','South Africa'),('DW Steyn ','South Africa'),('F du Plessis ','South Africa'),('HM Amla ','South Africa'),('Imran Tahir ','South Africa'),('JP Duminy ','South Africa'),('K Rabada ','South Africa'),('M Morkel ','South Africa'),('MV Boucher ','South Africa'),('Q de Kock','South Africa'),('SM Pollock ','South Africa'),('CRD Fernando ','Sri Lanka'),('DPMD Jayawardene ','Sri Lanka'),('HMRKB Herath ','Sri Lanka'),('KC Sangakkara ','Sri Lanka'),('KMDN Kulasekara ','Sri Lanka'),('LD Chandimal ','Sri Lanka'),('M Muralitharan ','Sri Lanka'),('MDKJ Perera ','Sri Lanka'),('SL Malinga ','Sri Lanka'),('ST Jayasuriya ','Sri Lanka'),('TM Dilshan ','Sri Lanka'),('AD Russell ','West Indies'),('CH Gayle ','West Indies'),('DJ Bravo ','West Indies'),('J Charles ','West Indies'),('KA Pollard ','West Indies'),('LMP Simmons ','West Indies'),('MN Samuels ','West Indies'),('R Rampaul ','West Indies'),('SP Narine ','West Indies'),('B Muzarabani ','Zimbabwe'),('BRM Taylor ','Zimbabwe'),('CJ Chibhabha ','Zimbabwe'),('E Chigumbura ','Zimbabwe'),('GB Brent ','Zimbabwe'),('H Masakadza ','Zimbabwe'),('MN Waller ','Zimbabwe'),('T Muzarabani','Zimbabwe'),('T Panyangara ','Zimbabwe'),('T Taibu ','Zimbabwe'),('WP Masakadza ','Zimbabwe');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t20_batting`
--

DROP TABLE IF EXISTS `t20_batting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t20_batting` (
  `Player` varchar(32) DEFAULT NULL,
  `No_of_Innings` int(11) DEFAULT NULL,
  `Runs_Scored` int(11) DEFAULT NULL,
  `Highest_Score` int(11) DEFAULT NULL,
  `Average` decimal(11,2) DEFAULT '0.00',
  `Hundreds` int(11) DEFAULT NULL,
  `Fifties` int(11) DEFAULT NULL,
  KEY `Player` (`Player`),
  CONSTRAINT `t20_batting_ibfk_1` FOREIGN KEY (`Player`) REFERENCES `players` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t20_batting`
--

LOCK TABLES `t20_batting` WRITE;
/*!40000 ALTER TABLE `t20_batting` DISABLE KEYS */;
INSERT INTO `t20_batting` VALUES ('EJG Morgan',70,1678,85,29.96,0,9),('KP Pietersen',36,1176,79,37.93,0,7),('JC Buttler',53,1069,73,25.45,0,5),('JE Root',23,743,90,39.10,0,4),('PD Collingwood',33,583,79,18.80,0,3),('JJ Roy',27,518,78,19.18,0,2),('DA Warner',70,1792,90,26.74,0,13),('SR Watson',56,1462,124,29.24,1,10),('AJ Finch',36,1206,156,40.20,1,7),('GJ Maxwell',38,1072,145,34.58,2,3),('DJ Hussey',36,756,88,22.90,0,3),('RT Ponting',16,401,98,28.64,0,2),('JP Duminy',70,1822,96,37.95,0,11),('AB de Villiers',75,1672,79,26.12,0,10),('HM Amla',40,1158,97,33.08,0,7),('F du Plessis',36,1129,119,37.63,1,7),('DA Miller',50,1029,101,29.40,1,1),('CH Gayle',51,1589,117,33.80,2,13),('MN Samuels',58,1469,89,30.60,0,10),('DJ Bravo',59,1142,66,24.29,0,4),('LMP Simmons',44,907,82,23.86,0,5),('KA Pollard',48,768,63,20.21,0,2),('MJ Guptill',73,2271,105,34.40,2,14),('BB McCullum',70,2140,123,35.66,2,13),('LRPL Taylor',73,1415,63,25.26,0,5),('KS Williamson',49,1316,73,31.33,0,8),('C Munro',42,1173,109,33.51,3,7),('V Kohli',53,1983,90,50.84,0,18),('RG Sharma',72,1852,118,30.86,2,14),('SK Raina',63,1499,101,28.82,1,4),('MS Dhoni',78,1444,56,37.02,0,2),('Yuvraj Singh',51,1177,77,28.02,0,8),('G Gambhir',36,932,75,27.41,0,7),('S Dhawan',36,884,90,26.78,0,6),('V Sehwag',18,394,68,21.88,0,2),('R Dravid',1,31,31,31.00,0,0),('SR Tendulkar',1,10,10,10.00,0,0),('Shoaib Malik',86,1821,75,29.37,0,6),('Umar Akmal',77,1690,94,26.82,0,8),('Mohammad Hafeez',78,1658,86,22.71,0,9),('Shahid Afridi',90,1405,54,18.01,0,4),('Misbah-ul-Haq',34,788,87,37.52,0,3),('TM Dilshan',79,1889,104,28.19,1,13),('DPMD Jayawardene',55,1493,100,31.76,1,9),('KC Sangakkara',53,1382,78,31.40,0,8),('MDKJ Perera',34,1020,84,30.00,0,10),('ST Jayasuriya',30,629,88,23.29,0,4),('H Masakadza',52,1460,93,29.20,0,10),('E Chigumbura',46,789,54,20.76,0,3),('BRM Taylor',28,612,75,26.60,0,5),('CJ Chibhabha',29,600,67,20.68,0,5),('MN Waller',29,600,68,27.27,0,1),('Tamim Iqbal',62,1385,103,24.29,1,5),('Shakib Al Hasan',63,1237,84,22.49,0,6),('Mahmudullah',60,1017,64,21.18,0,3),('Mushfiqur Rahim',60,1012,72,21.08,0,4),('Soumya Sarkar',33,635,51,19.24,0,1),('Mashrafe Mortaza',39,377,36,13.46,0,0);
/*!40000 ALTER TABLE `t20_batting` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `avgbat` BEFORE UPDATE ON `t20_batting` FOR EACH ROW begin
if new.average = 0 then set new.average = new.Runs_Scored / new.No_of_Innings ;
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t20_bowling`
--

DROP TABLE IF EXISTS `t20_bowling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t20_bowling` (
  `Player` varchar(32) DEFAULT NULL,
  `Innings_Bowled` int(11) DEFAULT NULL,
  `Over_Bowled` int(11) DEFAULT NULL,
  `Wickets_Taken` int(11) DEFAULT NULL,
  `Best_Bowling` varchar(10) DEFAULT NULL,
  `Runs_Conceded` int(11) DEFAULT NULL,
  `Average` decimal(11,2) DEFAULT '0.00',
  KEY `Player` (`Player`),
  CONSTRAINT `t20_bowling_ibfk_1` FOREIGN KEY (`Player`) REFERENCES `players` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t20_bowling`
--

LOCK TABLES `t20_bowling` WRITE;
/*!40000 ALTER TABLE `t20_bowling` DISABLE KEYS */;
INSERT INTO `t20_bowling` VALUES ('A Nehra',27,588,34,'3.19',758,22.29),('A Zampa',13,258,17,'3.16',258,15.17),('AD Russell',36,510,21,'2.10',787,37.47),('AF Milne',19,396,21,'4.37',488,23.23),('B Kumar',26,548,28,'5.24',618,22.07),('B Lee',25,543,28,'3.23',714,25.50),('B Muzarabani',2,48,4,'2.36',84,21.00),('BA Stokes',17,320,10,'3.26',485,48.50),('CH Morris',17,378,23,'4.27',529,23.00),('CJ Jordan',30,648,34,'4.28',948,27.88),('CRD Fernando',18,378,18,'3.19',464,25.77),('DJ Bravo',56,1040,52,'4.28',1470,28.26),('DP Nannes',14,318,27,'4.18',403,14.92),('DW Steyn',42,900,58,'4.9',1009,17.39),('E Chigumbura',21,276,16,'4.31',427,26.68),('GB Brent',3,66,4,'2.19',93,23.25),('GJ Maxwell',33,474,20,'3.10',585,29.25),('HMRKB Herath',17,363,18,'5.3',373,20.72),('Imran Tahir',33,735,55,'5.24',815,14.81),('JC Tredwell',15,315,7,'1.16',416,59.42),('JDP Oram',32,546,19,'3.33',793,41.73),('JJ Bumrah',34,732,41,'3.11',838,20.43),('JM Anderson',19,421,18,'3.23',552,30.66),('Junaid Khan',9,162,8,'3.24',236,29.50),('K Rabada',16,361,22,'3.30',498,22.63),('KA Pollard',36,486,23,'3.30',669,29.08),('KMDN Kulasekara',58,1230,66,'4.31',1530,23.18),('LE Plunkett',15,333,19,'3.21',416,21.89),('M Morkel',41,878,46,'4.17',1097,23.84),('M Muralitharan',12,282,13,'3.29',297,22.84),('Mahmudullah',46,642,24,'2.5',790,32.91),('Mashrafe Mortaza',53,1137,42,'4.19',1527,36.35),('MG Johnson',30,655,38,'3.15',797,20.97),('MJ Santner',26,519,29,'4.11',620,21.37),('Mustafizur Rahman',24,553,35,'5.22',651,18.60),('PJ Cummins',18,414,23,'3.15',472,20.52),('R Ashwin',46,1026,52,'4.8',1193,22.94),('R Rampaul',23,495,29,'3.16',705,24.31),('RA Jadeja',40,810,31,'3.48',983,31.70),('S Sreesanth',9,204,7,'2.12',288,41.14),('Saeed Ajmal',63,1429,85,'4.19',1516,17.83),('SCJ Broad',55,1171,65,'4.24',1491,22.93),('Shahid Afridi',96,2143,97,'4.11',2362,24.35),('Shakib Al Hasan',62,1365,75,'4.15',1546,20.61),('Shoaib Akhtar',15,318,19,'3.38',432,22.73),('Shoaib Malik',42,498,25,'2.7',576,23.04),('SL Malinga',68,1449,90,'5.31',1780,19.77),('SM Pollock',11,241,15,'3.28',309,20.60),('SP Narine',46,1028,50,'4.12',1034,20.68),('ST Jayasuriya',24,369,19,'3.21',456,24.00),('T Muzarabani',9,180,6,'2.31',280,46.66),('T Panyangara',14,301,20,'4.37',398,19.90),('TA Boult',25,549,37,'4.34',784,21.18),('Taskin Ahmed',17,333,12,'2.32',438,36.50),('TG Southee',49,1068,62,'5.18',1543,24.88),('Umar Gul',60,1201,85,'5.6',1443,16.97),('WP Masakadza',7,150,8,'4.28',197,24.62),('YS Chahal',21,487,35,'6.25',646,18.45),('Yuvraj Singh',31,422,28,'3.17',499,17.82),('Z Khan',17,350,17,'4.19',448,26.35);
/*!40000 ALTER TABLE `t20_bowling` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `avgbowl` BEFORE UPDATE ON `t20_bowling` FOR EACH ROW begin
if new.average = 0 then set new.average = new.Runs_Conceded / new.Wickets_Taken ;
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t20_fielding`
--

DROP TABLE IF EXISTS `t20_fielding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t20_fielding` (
  `Player` varchar(32) DEFAULT NULL,
  `Catches_Taken` int(11) DEFAULT NULL,
  `Stumpings_Made` int(11) DEFAULT NULL,
  KEY `Player` (`Player`),
  CONSTRAINT `t20_fielding_ibfk_1` FOREIGN KEY (`Player`) REFERENCES `players` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t20_fielding`
--

LOCK TABLES `t20_fielding` WRITE;
/*!40000 ALTER TABLE `t20_fielding` DISABLE KEYS */;
INSERT INTO `t20_fielding` VALUES ('EJG Morgan',32,0),('SCJ Broad',21,0),('KP Pietersen',14,0),('JE Root',14,0),('BA Stokes',8,0),('DA Warner',41,0),('DJ Hussey',24,0),('GJ Maxwell',23,0),('B Lee',6,0),('AB de Villiers',65,7),('Q de Kock',30,9),('MV Boucher',18,1),('F du Plessis',18,0),('DW Steyn',11,0),('DJ Bravo',35,0),('KA Pollard',25,0),('CH Gayle',14,0),('J Charles',10,2),('SP Narine',7,0),('BB McCullum',36,8),('MJ Guptill',39,0),('TG Southee',19,0),('TA Boult',12,0),('C Munro',12,0),('MS Dhoni',49,29),('SK Raina',40,0),('RG Sharma',29,0),('V Kohli',27,0),('Yuvraj Singh',12,0),('JJ Bumrah',4,0),('V Sehwag',2,0),('Shoaib Malik',37,0),('Shahid Afridi',30,0),('Umar Gul',18,0),('Misbah-ul-Haq',14,0),('Saeed Ajmal',12,0),('KC Sangakkara',25,20),('LD Chandimal',28,5),('TM Dilshan',31,2),('SL Malinga',18,0),('KMDN Kulasekara',17,0),('E Chigumbura',18,0),('BRM Taylor',14,2),('T Taibu',6,5),('Mushfiqur Rahim',26,25),('Mahmudullah',24,0),('Sabbir Rahman',22,0),('Soumya Sarkar',21,0),('Shakib Al Hasan',17,0);
/*!40000 ALTER TABLE `t20_fielding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t20_teams_batting`
--

DROP TABLE IF EXISTS `t20_teams_batting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t20_teams_batting` (
  `country` varchar(12) DEFAULT NULL,
  `matches_played` int(11) DEFAULT NULL,
  `matches_won` int(11) DEFAULT NULL,
  `matches_lost` int(11) DEFAULT NULL,
  `matches_tied` int(11) DEFAULT NULL,
  `win/loss_ratio` decimal(11,2) DEFAULT '0.00',
  `highest_score` int(11) DEFAULT NULL,
  `lowest_score` int(11) DEFAULT NULL,
  KEY `country` (`country`),
  CONSTRAINT `t20_teams_batting_ibfk_1` FOREIGN KEY (`country`) REFERENCES `teams` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t20_teams_batting`
--

LOCK TABLES `t20_teams_batting` WRITE;
/*!40000 ALTER TABLE `t20_teams_batting` DISABLE KEYS */;
INSERT INTO `t20_teams_batting` VALUES ('Australia',100,53,44,2,1.20,263,79),('Bangladesh',76,23,51,0,0.45,215,70),('England',100,47,48,1,0.98,230,80),('India',99,61,35,1,1.74,260,74),('New Zealand',111,54,49,5,1.10,243,60),('Pakistan',123,74,46,3,1.61,203,74),('South Africa',103,60,42,0,1.43,241,100),('Sri Lanka',108,54,52,1,1.04,260,82),('West Indies',94,45,42,3,1.07,245,101),('Zimbabwe',56,13,42,1,0.31,200,84);
/*!40000 ALTER TABLE `t20_teams_batting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t20_teams_bowling`
--

DROP TABLE IF EXISTS `t20_teams_bowling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t20_teams_bowling` (
  `Country` varchar(12) DEFAULT NULL,
  `Avg_Runs_Per_Wicket` decimal(4,2) DEFAULT NULL,
  `Avg_Runs_Per_Six_Balls` decimal(3,2) DEFAULT NULL,
  `Number_Of_Team_Innings` int(11) DEFAULT NULL,
  `Highest_Team_Score` int(11) DEFAULT NULL,
  `Lowest_Completed_Score` int(2) DEFAULT NULL,
  KEY `Country` (`Country`),
  CONSTRAINT `t20_teams_bowling_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `teams` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t20_teams_bowling`
--

LOCK TABLES `t20_teams_bowling` WRITE;
/*!40000 ALTER TABLE `t20_teams_bowling` DISABLE KEYS */;
INSERT INTO `t20_teams_bowling` VALUES ('Australia',26.88,4.64,904,438,45),('Bangladesh',33.92,5.06,339,391,44),('England',30.21,4.76,701,398,45),('India',30.65,4.92,926,438,58),('New Zealand',29.85,4.76,735,408,69),('Pakistan',28.80,4.73,877,444,64),('South Africa',26.97,4.72,581,434,43),('Sri Lanka',30.80,4.89,807,414,35),('West Indies',29.01,4.62,767,439,43),('Zimbabwe',35.31,5.03,503,418,58);
/*!40000 ALTER TABLE `t20_teams_bowling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teams` (
  `rank` int(11) DEFAULT NULL,
  `country` varchar(12) NOT NULL,
  `matches` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`country`),
  UNIQUE KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (2,'Australia',20,2513,126),(9,'Bangladesh',24,1846,77),(6,'England',21,2402,114),(3,'India',35,4341,124),(4,'New Zealand',26,3013,116),(1,'Pakistan',26,3272,127),(7,'South Africa',23,2551,111),(8,'Sri Lanka',33,2921,89),(5,'West Indies',22,2538,115),(10,'Zimbabwe',15,915,61);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cricguru'
--

--
-- Dumping routines for database 'cricguru'
--
/*!50003 DROP PROCEDURE IF EXISTS `player_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `player_name`(in name varchar(32),in country varchar(12))
begin
insert into players values(name,country);
insert into t20_batting(player) values(name);
insert into t20_bowling(player) values(name);
insert into t20_fielding(player) values(name);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_all`(in pln varchar(32),in noi int,in rs int,in hs int,in hund int,in fif int,in ib int,in ob int,in wt int,in bb int,in rc int,in ct int,in stump int)
begin
update t20_batting
set No_of_Innings = noi,
Runs_Scored = rs,
Highest_Score = hs,
Hundreds = hund,
Fifties = fif
where Player = pln;

update t20_bowling
set Innings_Bowled = ib,
Over_Bowled = ob,
Wickets_Taken = wt,
Best_Bowling = bb,
Runs_Conceded = rc
where Player = pln;

update t20_fielding
set Catches_Taken = ct,
Stumpings_Made = stump
where Player = pln;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `no_of_players`
--

/*!50001 DROP VIEW IF EXISTS `no_of_players`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `no_of_players` AS select `teams`.`country` AS `country`,count(`players`.`Name`) AS `total_players` from (`teams` join `players`) where (`teams`.`country` = `players`.`Country`) group by `teams`.`country` */;
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

-- Dump completed on 2018-11-23 17:39:40
