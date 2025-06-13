CREATE DATABASE  IF NOT EXISTS `orders` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `orders`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: orders
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `ADDRESS_ID` int NOT NULL,
  `ADDRESS_LINE1` varchar(50) DEFAULT NULL,
  `ADDRESS_LINE2` varchar(50) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  `STATE` varchar(30) DEFAULT NULL,
  `PINCODE` int DEFAULT NULL,
  `COUNTRY` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (909,'H.NO.16, Sector-4, 14th Cross','Near BDA Complex, HSR Layout','Bangalore','Karnataka',560172,'India'),(910,'H.NO.15, Sector-5, 7th Main','HSR Layout','Bangalore','Karnataka',560172,'India'),(911,'Flat-8, 2689/29','Tuglakkabad extn','New Delhi','Delhi',110019,'India'),(912,'Flat-10, 2689/27','Nizamuddin','New Delhi','Delhi',110012,'India'),(913,'No. 354, 3/5/343','1st Main, 2nd Cross, Jayanagar 4th Blk','Bangalore','Karnataka',560005,'India'),(914,'H.NO.20,Heritage Apartments','Udayagiri','Mysore','Karnataka',570019,'India'),(915,'2686/23, Surya Apartments','Badarpur','New Delhi','Delhi',110013,'India'),(916,'No.188,1st Main,3rd Cross','Subramanyanagar','Bangalore','Karnataka',560021,'India'),(917,'No.380,Sri Sai Complex','Ulsoor','Mysore','Karnataka',562109,'India'),(918,'# 55/1,5th Cross,S.P.Road','Hosur','Hosur','Tamilnadu',635235,'India'),(919,'43/3,Mukesh Complex','Madanayakanapalli','Hyderabad','Andhra Pradesh',517247,'India'),(920,'824/1,Krishna Complex','Bagalpur Circle','Krishnagiri','Tamilnadu',635109,'India'),(921,'162/S2,Margosa Road,','Malleswaram','Bangalore','Karnataka',560003,'India'),(922,'No.65,9th Main,Begur Road','Bommanhalli','Mysore','Karnataka',570019,'India'),(923,'#52,N.K.Building','Bijai','Mangalore','Karnataka',575002,'India'),(924,'1160,Rainbow Apartments','Parangipalyam','Chittoor','Andhra Pradesh',517337,'India'),(925,'No.1610,Kuppu Swamy Complex','SVR Layout','Salem','Tamilnadu',635203,'India'),(926,'#140,4th Main,6th Cross','Manikonda IT Park','Hyderabad','Andhra Pradesh',517252,'India'),(927,'#155, 2nd Main Channal Road','Saraswethipuram','Dharmapuri','Tamilnadu',635897,'India'),(928,'#412, 100ft Road,4th Block','Koramangala','Bangalore','Karnataka',560034,'India'),(930,'8340','Pilgrim Lane','Fargo','ND',58012,'USA'),(931,'938','SE. 53rd Street','Scarsdale','NY',10583,'USA'),(932,'7834','Theatre St.','Brooklyn','NY',11201,'USA'),(933,'777','Brockton Avenue','Abington','MA',2351,'USA'),(934,'30','Memorial Drive','Avon','MA',2322,'USA'),(935,'250','Hartford Avenue','Bellingham','MA',2019,'USA'),(936,'141','Washington Ave','Albany','NY',12205,'USA'),(937,'13858','Rt 31 Brookfield St','W. Alibio','NY',14411,'USA'),(938,'2055','Niagara Falls Blvd','Amherst','NY',14228,'USA'),(939,'2011','Niagara Falls Blvd','Amherst','NY',14228,'USA'),(940,'315','Foxon Blvd, New','Haven','CT',6513,'USA'),(941,'164','Danbury Rd, New','Milford','CT',6776,'USA'),(942,'3164','Berlin Turnpike','Newington','CT',6111,'USA'),(943,'474','Boston Post Road','North Windham','CT',6256,'USA'),(944,'650','Main Ave','Norwalk','CT',6851,'USA'),(945,'1600','Montclair Rd','Birmingham','AL',35210,'USA'),(946,'5919','Trussville Crossings Pkwy','Birmingham','AL',35235,'USA'),(947,'5360','Southwestern Blvd','Hamburg','NY',14075,'USA'),(948,'103','North Caroline St','Herkimer','NY',13350,'USA'),(949,'1000','State Route 36','Hornell','NY',14843,'USA'),(950,'1 Holland Grove Road','#23-34 Beachview Apts','Bukit Timah','',278790,'Singapore'),(951,'16, Sandilands Road','#12-45 Changi Towers','Singapore','',546080,'Singapore'),(952,'Blk 35 Mandalay Road','# 13–37 Mandalay Towers ','Singapore','',308215,'Singapore'),(953,'10 Eunos Road 8 ','Singapore Post Centre ','Singapore','',408600,'Singapore'),(954,'Bruderer 65 ','Loyang Way','Singapore','',508755,'Singapore'),(955,'277 Orchard Road','Tampines','Singapore','',238858,'Singapore'),(956,'75 Kg Sg Ramal Luar','Kajang ','Selangor','',43000,'Malaysia'),(957,'Apt #23, Putra Towers','45 Jalan Tun Ismail ','Kuala Lumpur','',50480,'Malaysia'),(958,'Apt #24, Putra Towers','45 Jalan Tun Ismail ','Kuala Lumpur','',50480,'Malaysia'),(959,'476 Jalan Tun Razak','77A Jalan Sultan Sulaiman, ','Kuala Terengganu','',20000,'Malaysia'),(960,'205 Shanthi Villa','Silkhouse Street','Kandy','',20000,'Sri Lanka'),(1000,'Anand Engineering, Plot No. 66, Road No. 15/17','MIDC, Andheri East, ','Mumbai','Maharashtra',400093,'India'),(1001,'59-A, Road INT 1, ','Mulgaon, Andheri East,','Mumbai','Maharashtra',400047,'India'),(1002,'Acme Plaza, Andheri - Kurla Rd, ','Vijay Nagar Colony, J B Nagar, Andheri East,','Mumbai','Maharashtra',400053,'India'),(1003,'#41, Main Road,4th Block','Opp. Forum Mall, Koramangala','Bangalore','Karnataka',560034,'India'),(1004,'Collector Chawl, Kondivita Road, ','J B Nagar, Andheri East','Mumbai','Maharashtra',400059,'India'),(1005,'Jeevan Sandhya CHS, Bharat Ark, 4, Veera Desa#6','Mhada Colony, Azad Nagar, Andheri West','Mumbai','Maharashtra',400053,'India');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_customer`
--

DROP TABLE IF EXISTS `online_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_customer` (
  `CUSTOMER_ID` int NOT NULL,
  `CUSTOMER_FNAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_LNAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_EMAIL` varchar(30) DEFAULT NULL,
  `CUSTOMER_PHONE` bigint DEFAULT NULL,
  `ADDRESS_ID` int DEFAULT NULL,
  `CUSTOMER_CREATION_DATE` date DEFAULT NULL,
  `CUSTOMER_USERNAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_GENDER` char(1) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `ADDRESS_ID` (`ADDRESS_ID`),
  CONSTRAINT `online_customer_ibfk_1` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_customer`
--

LOCK TABLES `online_customer` WRITE;
/*!40000 ALTER TABLE `online_customer` DISABLE KEYS */;
INSERT INTO `online_customer` VALUES (1,'Jennifer','Wilson','jen_w@gmail.com',9776363306,909,'1991-06-01','jen_w','F'),(2,'Jackson','Davis','dave_jack@gmail.com',9886363307,910,'2001-06-12','dave_jack','M'),(3,'Komal','Choudhary','ch_komal@yahoo.co.IN',9178234526,911,'2002-06-26','komalc','F'),(4,'Wilfred','Jean','w_jean@gmail.com',9196257439,912,'2006-01-12','jeanw','M'),(5,'Ramya','Ravinder','ramya_r23@gmail.com',7732341567,913,'2006-02-12','rramya','F'),(6,'Anita','Goswami','agoswami@gmail.com',9873245623,914,'2006-03-13','anitag','F'),(7,'Ashwathi','Bhatt','ash_bhat@yahoo.co.IN',9773636307,915,'2007-04-15','abhatt','F'),(8,'Neetha','Castelina','neetha20@gmail.com',8196236362,916,'2011-08-16','cneeta','F'),(9,'Devika','Satish','devika_sa@gmail.com',9780945716,917,'2011-09-01','sdevika','F'),(10,'Bidhan','C.Roy','bidhanroy@yahoo.co.in',9886218583,918,'2011-10-23','bcroy','F'),(11,'Vikas','Jha','vikas.jha@gmail.com',9008812436,919,'2011-11-15','vjha','M'),(12,'Arul','Kumar.T','arulkumar@gmail.com',9902179894,920,'2011-12-03','akumar','M'),(13,'Ravi','Srinivasn','r_srinivasn@yahoo.co.in',9945466015,921,'2012-01-05','ravisri','M'),(14,'Avinash','Dutta','avinash.dutta@yahoo.co.in',9845100228,922,'2012-01-18','avdutta','M'),(15,'Jyoti','Sinha','jyotisinha@gmail.com',9987795155,923,'2012-01-31','jyo_s','F'),(16,'Vijay','Bollineni','vbollineni@gmail.com',7829012228,924,'2012-02-06','vbolli','M'),(17,'Prasad','Shetty','pshetty@yahoo.co.in',9731497821,925,'2012-02-26','shetty','M'),(18,'Suresh','Babu','sbabu@yahoo.co.in',9845969216,926,'2012-03-01','babu_s','M'),(19,'Bharti','Subhash','bhartis@gmail.com',9886870414,927,'2012-03-28','bha_subh','F'),(20,'Keshav','Jog','kesjog@yahoo.co.in',7942536789,928,'2012-04-06','jog_kes','M'),(21,'Alan','Silvestri','alan_silver@msn.com',9450465464,930,'2016-02-04','asilvestri','M'),(22,'Andrew','Stanton','andrew_stanton@yahoo.com',9806980253,931,'2013-05-23','astanton','M'),(23,'Anna','Pinnock','anna_pinnock@yahoo.com',8540548103,932,'2013-01-18','apinnock','F'),(24,'Brian','Grazer','brian_grazer@gmail.com',7599462567,933,'2009-12-28','bgrazer','M'),(25,'Bruno','Delbonnel','bruno_delbonnel@msn.com',9016687652,934,'2012-08-27','bdelbonnel','M'),(26,'Stephen','E. Rivkin','stephen_e. rivkin@msn.com',9860111721,935,'2010-03-04','srivkin','M'),(27,'Mali','Finn','mali_finn@yahoo.com',7373475035,936,'2006-01-14','mfinn','F'),(28,'Sayyed','Faraj','sayyed_faraj@gmail.com',8556784235,937,'2009-11-01','sfaraj','M'),(29,'Francine','Maisler','francine_maisler@gmail.com',8440046170,938,'2013-09-01','fmaisler','F'),(30,'Anita','Kohli','anita_kohli@yahoo.com',8631526613,939,'2010-10-24','akohli','F'),(31,'Thomas','Newman','thomas_nman@yahoo.com',9539300577,940,'2015-06-30','tnewman','M'),(32,'Hans','Zimmer','hans_zimmer@yahoo.com',8338774317,941,'2016-01-24','hzimmer','M'),(33,'Niseema','Zimmer','niseemaz@yahoo.com',8179413840,941,'2014-12-29','ntalli','F'),(34,'Hans','Zimmer','hans_zimmer@gmail.com',9477272235,943,'2015-09-27','hzimmer2','M'),(35,'Thomas','Newman','thomas_newman@gmail.com',9526577840,944,'2014-01-16','tnewman2','M'),(36,'Michelle','H. Shores','howard_shores@yahoo.com',8795007592,945,'2010-06-24','mshores','F'),(37,'James','Newton Howard','james_nhoward@yahoo.com',9520246368,946,'2012-07-06','jhoward','M'),(38,'John','Lasseter','john_lass@gmail.com',9876356288,947,'2016-09-02','jlasseter','M'),(39,'Liz','Mullane','liz_mullane@gmail.com',7859695387,948,'2006-03-29','lmullane','F'),(40,'Paul','Haggis','paul_haggis@gmail.com',8332681111,949,'2016-08-31','phaggis','M'),(41,'Tharman','Shanmugaratnam','tharshan@yahoo.co.sg',8572898929,950,'2009-11-20','tshanmugaratnam','M'),(42,'Rebecca','Lim','reblim@msn.co.sg',8272438365,951,'2009-07-31','rlim','F'),(43,'Rajiv','Chandrasekaran','rajiv_chan@yahoo.co.in',7431699965,952,'2014-04-14','rchan','M'),(44,'Tanya','Chua','tanyac@singers.sg',5435935345,953,'2014-04-14','tchua','F'),(45,'Janvi','Rajiv','janvi_jha@msn.co.sg',8324529953,952,'2015-04-14','jrajiv','F'),(46,'Tan Bee','Soo','tanbeesoo@yahoo.co.sg',8293092259,954,'2016-11-15','tsoo','F'),(47,'Yun','Zhu','yunzho@gmail.com',9407380992,955,'2016-11-15','yzhu','M'),(48,'Wajdi bin Abdul','Majeed','wajdiabdul@gmail.com',9380937709,956,'2010-06-25','wabdul','M'),(49,'Anbara binti','Mubarak','anmubarak@yahoo.co.my',7885803452,957,'2010-08-27','amubarak','F'),(50,'Sri binti ','Yaakob','sribinti@yahoo.co.my',8193579391,958,'2007-12-18','sribinti','F'),(51,'Ahmad Bin Gh','Azali','ahmad_bingh@yahoo.co.my',7348292313,959,'2010-05-14','abingh','M'),(52,'Suchirithaa','Ekanayake','suchiritha@msn.com',6538525924,960,'2016-11-15','sekanayake','F');
/*!40000 ALTER TABLE `online_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_header`
--

DROP TABLE IF EXISTS `order_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_header` (
  `ORDER_ID` int NOT NULL,
  `CUSTOMER_ID` int DEFAULT NULL,
  `PAYMENT_MODE` varchar(20) DEFAULT NULL,
  `SHIPPER_ID` int DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `FK_SHID` (`SHIPPER_ID`),
  CONSTRAINT `FK_SHID` FOREIGN KEY (`SHIPPER_ID`) REFERENCES `shipper` (`SHIPPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_header`
--

LOCK TABLES `order_header` WRITE;
/*!40000 ALTER TABLE `order_header` DISABLE KEYS */;
INSERT INTO `order_header` VALUES (10001,1,'Credit Card',50001),(10002,2,'Cash',50001),(10003,5,'Cash',50001),(10004,5,'Credit Card',50001),(10005,5,'Credit Card',50002),(10006,6,'Net Banking',50003),(10007,3,'Cash',50004),(10008,7,'Credit Card',50002),(10009,4,'Credit Card',50003),(10010,6,'Cash',50004),(10011,1,'Credit Card',50001),(10012,2,'Credit Card',50004),(10013,8,'',0),(10014,9,'Credit Card',50005),(10015,10,'Credit Card',50003),(10016,8,'Cash',50004),(10017,6,'Cash',50004),(10018,11,'Credit Card',50001),(10019,12,'Credit Card',50002),(10020,18,'Net Banking',50003),(10021,25,'Credit Card',50006),(10022,23,'Credit Card',50006),(10023,36,'Credit Card',50002),(10024,32,'Net Banking',50005),(10025,28,'Credit Card',50001),(10026,21,'Net Banking',0),(10027,23,'Credit Card',50001),(10028,23,'Credit Card',0),(10029,25,'Credit Card',50003),(10030,52,'Credit Card',50006),(10031,33,'',0),(10032,7,'Credit Card',50003),(10033,28,'Credit Card',50002),(10034,19,'Credit Card',50001),(10035,24,'Net Banking',50004),(10036,24,'Cash',50001),(10037,2,'Cash',50005),(10038,46,'Net Banking',50005),(10039,14,'Net Banking',50005),(10040,3,'Credit Card',50005),(10041,51,'',0),(10042,26,'Credit Card',50004),(10043,17,'Net Banking',50002),(10044,39,'Net Banking',0),(10045,34,'Credit Card',0),(10046,3,'Net Banking',50002),(10047,24,'Net Banking',50005),(10048,33,'Cash',50002),(10049,33,'Credit Card',0),(10050,1,'Net Banking',0),(10051,43,'Credit Card',50006),(10052,17,'',0),(10053,40,'Credit Card',50005),(10054,19,'Credit Card',50004),(10055,25,'Credit Card',50006),(10056,11,'Credit Card',50004),(10057,11,'Cash',50005),(10058,28,'',0),(10059,30,'Net Banking',50001),(10060,50,'Credit Card',50005),(10061,37,'Credit Card',50001),(10062,34,'',0),(10063,18,'Credit Card',50001),(10064,35,'Credit Card',50004),(10065,17,'Net Banking',0),(10066,41,'',0),(10067,6,'Credit Card',0),(10068,51,'Credit Card',50004),(10069,23,'Net Banking',50002),(10070,10,'Net Banking',50001);
/*!40000 ALTER TABLE `order_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `ORDER_ID` int DEFAULT NULL,
  `PRODUCT_ID` int DEFAULT NULL,
  `PRODUCT_QUANTITY` int DEFAULT NULL,
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  KEY `ORDER_ID` (`ORDER_ID`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`ORDER_ID`) REFERENCES `order_header` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (10001,205,3),(10001,201,1),(10001,212,1),(10001,244,1),(10002,238,4),(10002,235,5),(10002,241,2),(10002,212,1),(10002,206,2),(10002,208,2),(10003,202,1),(10003,203,1),(10003,215,5),(10003,224,1),(10003,225,1),(10003,231,2),(10003,234,1),(10004,217,1),(10004,222,1),(10004,223,1),(10004,220,1),(10004,219,2),(10005,204,2),(10005,206,1),(10005,207,2),(10005,209,5),(10005,210,5),(10005,218,10),(10006,211,1),(10006,212,1),(10006,242,2),(10006,238,2),(10006,232,1),(10006,228,3),(10006,236,5),(10007,213,20),(10007,214,25),(10007,218,2),(10007,216,1),(10007,236,3),(10007,240,2),(10008,226,5),(10008,227,2),(10008,235,10),(10008,240,8),(10009,229,1),(10009,201,1),(10009,221,1),(10010,244,4),(10010,211,1),(10010,202,1),(10010,209,2),(10010,225,1),(10010,231,1),(10010,233,1),(10011,211,1),(10011,212,2),(10011,222,1),(10012,201,1),(10012,204,2),(10012,207,2),(10012,210,3),(10012,218,10),(10012,219,5),(10023,208,1),(10026,211,1),(10027,219,2),(10023,206,2),(10044,206,2),(10014,216,2),(10014,214,1),(10014,212,1),(10014,207,2),(10014,201,1),(10014,202,1),(10015,228,1),(10015,240,5),(10015,242,2),(10015,244,4),(10015,243,1),(10016,210,2),(10016,209,1),(10016,206,1),(10016,227,1),(10016,234,1),(10016,233,1),(10016,228,2),(10017,220,2),(10017,236,5),(10017,240,5),(10017,216,2),(10018,223,1),(10018,231,1),(10018,244,6),(10018,218,15),(10018,235,15),(10018,226,1),(10018,225,1),(10019,207,2),(10019,224,1),(10019,227,1),(10019,212,1),(10060,237,2),(10019,202,1),(10020,201,1),(10020,243,2),(10020,218,20),(10020,219,4),(10020,206,2),(10020,204,2),(10020,203,1),(10020,221,1),(10020,233,3),(10060,238,1),(10032,248,1),(10032,247,1),(10028,246,1),(10029,246,1),(10064,246,1),(10021,212,1),(10021,227,1),(10021,231,1),(10021,235,5),(10022,202,1),(10022,241,1),(10023,207,1),(10024,216,1),(10024,201,1),(10025,206,2),(10025,219,3),(10026,221,1),(10027,217,1),(10028,207,1),(10029,204,1),(10030,233,2),(10032,219,2),(10032,214,1),(10032,233,2),(10033,232,1),(10033,236,5),(10034,227,1),(10034,232,1),(10035,242,2),(10035,222,1),(10035,243,1),(10036,235,2),(10036,236,1),(10036,216,1),(10037,238,1),(10037,245,1),(10038,215,1),(10038,240,5),(10038,243,1),(10039,211,1),(10040,215,1),(10040,234,1),(10042,209,1),(10042,228,1),(10044,208,1),(10046,212,1),(10047,203,1),(10047,215,1),(10048,207,1),(10049,245,1),(10049,202,1),(10050,223,1),(10050,233,2),(10050,204,1),(10054,205,2),(10054,231,1),(10057,204,1),(10058,229,1),(10058,209,1),(10059,221,1),(10045,237,1),(10063,232,1),(10060,233,1),(10061,215,1),(10064,209,2),(10067,206,1),(10067,234,1),(10068,205,2),(10068,242,1),(10069,204,1),(10069,236,2),(10069,238,1),(10043,218,10),(10043,240,2),(10045,245,1),(10045,241,10),(10045,244,1),(10051,241,5),(10051,226,1),(10052,227,1),(10053,223,1),(10055,220,1),(10055,233,1),(10056,219,2),(10063,239,5),(10063,231,1),(10063,213,1),(10065,235,3),(10065,220,1),(10070,238,1),(10070,240,2);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `PRODUCT_ID` int NOT NULL,
  `PRODUCT_DESC` varchar(60) DEFAULT NULL,
  `PRODUCT_CLASS_CODE` int NOT NULL,
  `PRODUCT_PRICE` decimal(12,2) DEFAULT NULL,
  `PRODUCT_QUANTITY_AVAIL` int DEFAULT NULL,
  `LEN` int DEFAULT NULL,
  `WIDTH` int DEFAULT NULL,
  `HEIGHT` int DEFAULT NULL,
  `WEIGHT` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `PRODUCT_CLASS_CODE` (`PRODUCT_CLASS_CODE`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`PRODUCT_CLASS_CODE`) REFERENCES `product_class` (`PRODUCT_CLASS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (201,'Sky LED 102 CM TV',2050,35000.00,30,905,750,700,15.0000),(202,'Sams 192 L4 Single-door Refrigerator',2050,28000.00,15,1802,750,750,25.0000),(203,'Jocky Speaker Music System HT32',2050,8900.00,19,908,300,300,5.0000),(204,'Cricket Set for Boys',2051,4500.00,10,890,300,200,18.0000),(205,'Infant Sleepwear Blue',2052,250.00,50,596,300,100,0.2500),(206,'Barbie Fab Gown Doll',2051,1000.00,20,305,150,75,0.1500),(207,'Remote Control Car',2051,2900.00,12,200,150,50,0.2250),(208,'Doll House',2051,3000.00,12,600,455,375,0.9000),(209,'Blue Jeans 34',2052,800.00,100,450,310,52,1.1000),(210,'Blossoms Lehenga Choli set',2052,3000.00,100,600,315,54,0.2500),(211,'OnePlus 6 Smart Phone',2055,32500.00,25,100,65,15,0.5500),(212,'Samsung Galaxy On6',2055,14000.00,20,120,70,18,0.6500),(213,'Alchemist',2054,150.00,50,200,100,20,0.2350),(214,'Harry Potter',2054,250.00,50,210,100,50,0.3450),(215,'Logtech M244 Optical Mouse',2053,450.00,10,125,85,45,0.1050),(216,'External Hard Disk 500 GB',2053,3500.00,7,275,285,85,0.5250),(217,'Titan Karishma Watch',2057,3497.00,35,220,55,24,0.1030),(218,'Shell Fingertip Ball Pen',2056,25.00,150,170,12,170,0.0500),(219,'Ruf-n-Tuf Black PU Leather Belt',2052,350.00,50,700,45,4,0.1550),(220,'Hello Kitti Lunch Bag',2059,199.00,15,455,300,225,0.5000),(221,'Cybershot DWC-W325 Camera',2050,5300.00,5,100,55,40,0.0500),(222,'KitchAsst Siphon Coffee Maker 500 ml',2060,1790.00,10,150,100,200,1.2000),(223,'Sams 21L Microwave Oven',2060,6880.00,5,500,400,300,8.0000),(224,'Phils HL 7430 Mixer Grinder 750W',2060,2265.00,3,375,400,355,3.0000),(225,'Solmo Non-stick Sandwich Maker 750 W',2060,1625.00,10,150,175,70,0.7500),(226,'Solmo Hand Blender Fibre',2060,1415.00,7,220,100,220,0.5600),(227,'Phils Wah Collection Juicer JM12',2060,2029.00,2,400,450,425,4.0000),(228,'Adidas Analog Watch',2057,2295.00,7,225,60,28,0.1150),(229,'Disney Analog Watch',2057,1600.00,10,225,60,28,0.1150),(230,'Esprit Analog Watch',2057,3495.00,2,225,60,28,0.1150),(231,'HP ODC Laptop Bag 15.5',2059,3390.00,7,550,400,210,0.2550),(232,'Women Hand Bag',2059,1600.00,15,250,220,170,0.1750),(233,'HP ODC School Bag 2.5\'',2059,799.00,14,600,450,275,0.3550),(234,'FLUFF Tote Travel Bag 35LTR',2059,3290.00,4,900,800,600,4.0000),(235,'Cindy HMPOC Pencil Box (Multicolor)',2056,80.00,10,250,50,15,0.4500),(236,'Solo Exam SB-01 Writing Pad',2056,350.00,21,400,300,5,0.5500),(237,'Zamark Color Pencil Art Set',2056,100.00,10,120,90,20,0.3500),(238,'Kasyo DJ-2100 Desktop Calculator',2056,338.00,10,150,120,120,0.5500),(239,'TRANS 2D A4 Size Box File',2056,120.00,6,350,300,100,0.3150),(240,'4M Post It Pad 3.5',2056,35.00,8,80,80,150,0.1200),(241,'PK Copier A4 75 GSM White Paper Ream',2056,285.00,2,297,210,0,0.0000),(242,'GreenWud CT-NO-PR Coffee Table',2058,3500.00,6,1250,550,700,50.0000),(243,'Supreme Fusion Cupboard 02TB',2058,3000.00,3,1200,350,900,60.0000),(244,'Foldable Premium Chair',2058,4000.00,6,75,70,90,20.0000),(245,'GreenWud Nova Pedestal Unit',2058,2500.00,5,400,400,600,25.0000),(246,'Exam Warriors',2054,100.00,50,200,160,15,0.1000),(247,'Small Is Beautiful',2054,140.00,40,180,100,15,0.1000),(248,'To Kill a Mocking Bird',2054,210.00,35,190,150,20,0.1500),(249,'All-in-one Board Game',2051,450.00,20,750,320,90,0.5000),(250,'Huwi Wi-Fi Receiver 500Mbps',2053,287.00,30,100,95,30,0.1000),(99990,'Quanta 4 Port USB Hub',3000,500.00,50,180,125,30,0.0500),(99991,'Dell Targus Synergy 2.0 Backpack',3002,999.00,250,450,250,50,0.5000),(99992,'Tom Clancy\'s Ghost Recon: Future Soldier (PC Game)',3002,999.00,250,150,200,10,0.1000),(99993,'Nokia 1280 (Black)',3002,999.00,250,45,107,15,0.0820),(99994,'HP Deskjet 2050 All-in-One - J510a Printer',3001,3749.00,100,249,427,406,3.6000),(99995,'LG MS-2049UW Solo Microwave',3001,4800.00,100,455,252,320,5.6000),(99996,'Nokia Asha 200 (Graphite)',3001,4070.00,100,61,115,14,0.1050),(99997,'Sony Xperia U (Black White)',3000,16499.00,50,54,112,12,0.1100),(99998,'Nikon Coolpix L810 Bridge',3000,14987.00,50,111,76,83,0.4300),(99999,'Samsung Galaxy Tab 2 P3100',3000,19300.00,50,122,194,10,0.3450);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_class`
--

DROP TABLE IF EXISTS `product_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_class` (
  `PRODUCT_CLASS_CODE` int NOT NULL,
  `PRODUCT_CLASS_DESC` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_CLASS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_class`
--

LOCK TABLES `product_class` WRITE;
/*!40000 ALTER TABLE `product_class` DISABLE KEYS */;
INSERT INTO `product_class` VALUES (2050,'Electronics'),(2051,'Toys'),(2052,'Clothes'),(2053,'Computer'),(2054,'Books'),(2055,'Mobiles'),(2056,'Stationery'),(2057,'Watches'),(2058,'Furnitures'),(2059,'Bags'),(2060,'Kitchen Items'),(3000,'Promotion-High Value'),(3001,'Promotion-Medium Value'),(3002,'Promotion-Low Value');
/*!40000 ALTER TABLE `product_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipper` (
  `SHIPPER_ID` int NOT NULL,
  `SHIPPER_NAME` varchar(15) DEFAULT NULL,
  `SHIPPER_PHONE` bigint DEFAULT NULL,
  `SHIPPER_OWNER_NAME` varchar(30) DEFAULT NULL,
  `SHIPPER_ADDRESS` int DEFAULT NULL,
  PRIMARY KEY (`SHIPPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
INSERT INTO `shipper` VALUES (50001,'DHL',9456756761,'John Pearson',1000),(50002,'Blue Dart',9456756777,'Balfour Manuel',1001),(50003,'DTDC',9845967834,'Subhasish Chakraborty',1002),(50004,'Flipkart',9785985621,'Sachin Bansal',1003),(50005,'Professional',9343978654,'Siju Abraham',1004),(50006,'FedEx',8925349243,'Frederick Smith',1005),(50007,'Amazon',8584838281,'Jeff Bezos',1006);
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-20 13:25:56