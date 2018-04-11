-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: b2bc_app
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `gstin` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) NOT NULL,
  `cat1` varchar(45) NOT NULL,
  `cat2` varchar(45) DEFAULT NULL,
  `cat3` varchar(45) DEFAULT NULL,
  `cat4` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_id_UNIQUE` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (1,'Arvind Auto','C-29 Bawana','info@aa.com','007AACDWIP1ZP0','9874164879','Auto Parts','Machines','Spare Parts','Free'),(5,'Realfire','1243 Redwing Point','kaldrickf@tamu.edu','676744383033152339','614-227-3468','Toyota','autoparts','clothes','Road'),(6,'Aimbo','1 Rowland Pass','estoffersen11@cpanel.net','3588602349999489','783-577-8237','Mercury','electronics','pc','Center'),(7,'Wordtune','83485 Caliangt Street','pnotton1h@hubpages.com','5602214278214034','792-994-3504','Volvo','electronics','clothes','Trail'),(8,'Quire','084 Parkside Lane','aduffil6@theguardian.com','3540917214934768','985-444-4272','Chevrolet','autoparts','robots','Drive'),(9,'Flashpoint','36 Mendota Alley','gbroughr@topsy.com','3560002121869897','635-798-8068','Plymouth','electronics','pc','Court'),(11,'Mudo','028 Bluestem Road','dmunnsq@digg.com','4175006861783932','271-591-9719','Chevrolet','electronics','cable','Circle'),(12,'Skibox','43192 4th Pass','ghauch25@google.ru','4041598818666857','719-340-3007','Buick','autoparts','tv','Street'),(16,'Livefish','5 Clove Lane','ezannutti19@de.vu','4391904976908','336-835-5231','Pontiac','electronics','tv','Point'),(17,'Browsezoom','7 Comanche Street','bamery2@phpbb.com','5429357818835577','651-581-8747','Subaru','autoparts','tv','Parkway'),(18,'Youbridge','548 Morning Trail','lchateb@tmall.com','3560429544752451','523-377-2950','Mazda','electronics','washing machine','Terrace'),(19,'Rhyzio','5710 Golf Avenue','bwinsor1m@e-recht24.de','63041034782516940','434-840-5928','Chevrolet','autoparts','cars','Terrace'),(20,'Vipe','69180 Vidon Road','slevesley9@yellowpages.com','374288243329645','604-703-0080','Chevrolet','electronics','cars','Court'),(23,'Gigashots','7608 Bluestem Park','lfeldstern1o@mit.edu','3547628401984960','997-190-3740','GMC','autoparts','tv','Avenue'),(25,'Kamba','68 Pierstorff Trail','jizac21@indiatimes.com','5010125395062690','660-759-7895','Chevrolet','electronics','washing machine','Terrace'),(27,'Quatz','1 Dapin Road','sboothmanm@prlog.org','502045045447791994','863-531-6132','Hyundai','autoparts','clothes','Pass'),(29,'InnoZ','68 Nelson Pass','jsabati27@carsmail.co.uk','201630443670667','458-754-0984','Ford','autoparts','clothes','Lane'),(32,'Skyba','2744 Maywood Trail','rdaglish1v@intel.com','3559767918352769','377-392-3703','Audi','autoparts','clothes','Park'),(35,'Fiveclub','92785 Buena Vista Terrace','rtink2m@java.com','4903832625389784','409-337-1328','Porsche','electronics','pc','Terrace'),(37,'Trilia','56185 Coolidge Plaza','ukunzel15@icq.com','201528550478892','781-436-4113','Ford','electronics','cable','Circle'),(39,'Wikizz','4 Starling Avenue','mlydall1q@pcworld.com','3568289285568777','937-578-0181','Mercury','autoparts','cable','Plaza'),(40,'Dabfeed','97 Bultman Hill','hfilipic29@carsmail.co.uk','201671594690203','906-412-2037','Mitsubishi','autoparts','tv','Terrace'),(42,'Bubblemix','1 Huxley Hill','kagatev@nytimes.com','5602249424243776','161-849-1803','Hummer','electronics','cable','Way'),(43,'Tagopia','81 Utah Circle','cvicker2f@carsmail.co.uk','5420071611020480','613-416-2264','Saab','autoparts','laptops','Road'),(44,'Avamba','851 Farmco Drive','amcivor1x@mail.ru','5602236182886557','317-250-8097','Toyota','autoparts','tv','Drive'),(45,'Tavu','836 Stuart Crossing','mdockrellk@state.tx.us','3572595586308919','686-739-9063','Lexus','electronics','washing machine','Circle'),(46,'Browsecat','7 Maywood Circle','santonchik16@dyndns.org','4911697876269633','802-203-1483','Volkswagen','electronics','clothes','Pass'),(47,'Tazz','1 Lakeland Pass','leaklee2b@gnu.org','6381597973253249','375-147-3023','Cadillac','autoparts','robots','Lane'),(48,'Dynava','1964 Warner Circle','swhitby8@tumblr.com','3537321861679757','209-322-7727','Mercedes-Benz','electronics','robots','Pass'),(49,'Skipstorm','6 Daystar Hill','eisakssono@cam.ac.uk','56022303232324487','860-429-8006','Eagle','electronics','cars','Pass'),(51,'Eare','3875 Killdeer Park','aknobled@opensource.org','3558641086998821','514-168-5706','Toyota','autoparts','tv','Parkway'),(53,'Fanoodle','3 Spaight Alley','kpedroni5@hatena.ne.jp','3545735590343353','268-869-3079','Acura','electronics','cable','Avenue'),(54,'Voonder','1542 Drewry Park','gbowlej@answers.com','349140063123636','112-599-2791','Subaru','electronics','tv','Way'),(55,'Zoomzone','48 Brown Pass','dstpierre1z@rambler.ru','30229715263264','960-573-7548','Jeep','autoparts','tv','Plaza'),(58,'Buzzshare','118 Nevada Place','ogoves1l@patch.com','6385609555739812','694-272-4270','GMC','electronics','pc','Lane'),(59,'Dabfeed','3515 North Park','mthorndales@myspace.com','5108757435306530','851-754-4859','Mercury','autoparts','washing machine','Street'),(64,'Tagtune','0583 Fremont Pass','dfeedhamp@mit.edu','201425562029013','455-743-1895','Holden','autoparts','robots','Lane'),(65,'Mydo','087 Hudson Plaza','hjepperson1j@go.com','347679673606037','701-255-8040','Toyota','autoparts','clothes','Trail'),(66,'Dabfeed','29377 Doe Crossing Park','jgentery1g@fema.gov','3532221199359780','764-501-0532','Pontiac','autoparts','cable','Circle'),(67,'Flipstorm','74 Lindbergh Point','shusseyn@newsvine.com','3532675356435693','906-516-1968','Audi','electronics','robots','Alley'),(69,'Eimbee','5872 Hazelcrest Junction','isweett1@discovery.com','4911335522840719','855-470-8534','Ford','autoparts','cars','Alley'),(70,'Devshare','0 Onsgard Point','ejepensenc@google.co.uk','676724340667775201','802-393-4146','Honda','electronics','cars','Court'),(72,'Brainbox','08 Moland Drive','aadriania@cargocollective.com','372654216140255','418-619-1013','Toyota','autoparts','cars','Terrace'),(75,'Brightbean','767 Algoma Road','ldyke1r@harvard.edu','3542871718574331','572-717-7872','Saab','autoparts','cable','Way'),(76,'Brightbean','260 Hoepker Parkway','aserotsky4@pinterest.com','5610355604999457','196-865-0483','Pontiac','autoparts','cars','Drive'),(77,'Rhynoodle','41370 Elmside Alley','cskevington1d@nymag.com','3563577414468330','171-400-6735','GMC','autoparts','clothes','Trail'),(78,'Skiptube','705 Katie Road','rmcgrey2j@meetup.com','4175001550482631','877-749-4902','Mitsubishi','autoparts','cars','Way'),(79,'Kaymbo','5758 Melvin Avenue','tmahaddy3@facebook.com','5466400218316113','759-111-6392','Chevrolet','autoparts','clothes','Court'),(80,'Oba','5 Arrowood Trail','ahazelgreave17@go.com','5010127455360410','330-234-0196','Mercury','autoparts','laptops','Lane'),(81,'Buzzdog','7480 Coolidge Road','tmendel2n@booking.com','5610690343814390431','125-102-4022','Jaguar','electronics','tv','Road'),(84,'Quinu','35802 Parkside Park','xbardill1u@webnode.com','3553421169055921','396-198-1092','Chevrolet','autoparts','cars','Drive'),(88,'Yakitri','5 Merchant Center','sbeekmannu@whitehouse.gov','3554606774554024','770-722-9792','BMW','autoparts','cable','Junction'),(89,'Trilia','3204 Haas Hill','olatan24@clickbank.net','3565946969685697','518-577-4535','Chevrolet','electronics','cable','Circle'),(92,'Linklinks','0 Arizona Pass','baggush@hc360.com','3579537735444784','930-403-1787','Volvo','electronics','tv','Drive'),(93,'Reallinks','895 Sundown Plaza','cbarbe2a@sciencedirect.com','6304060121932257323','564-314-6253','Mercury','electronics','cable','Point'),(94,'Tagtune','769 Larry Crossing','jlivetty@vkontakte.ru','560223359306771803','999-865-6046','Lincoln','electronics','washing machine','Way'),(95,'Mynte','31674 Ilene Avenue','ngillhami@ftc.gov','3576224565260126','876-597-4472','Kia','electronics','washing machine','Lane'),(96,'Linktype','19088 Packers Center','ctregona1p@elpais.com','5038782829205226369','213-841-4439','Chevrolet','autoparts','cable','Drive'),(97,'Izio','6 Fairfield Park','spedler0@paypal.com','63044042227108857','560-286-0885','Volkswagen','autoparts','cable','Lane'),(98,'Wordtune','45 Sunbrook Crossing','dcattermullw@xing.com','5359892106231042','151-246-1387','BMW','autoparts','laptops','Hill'),(99,'Centimia','9392 Northland Terrace','kcasewell1k@si.edu','6759200424775784080','113-587-0230','Chrysler','autoparts','cars','Drive'),(101,'Jaxnation','62683 Huxley Center','baizikowitze@usnews.com','3543695224440854','601-852-0863','Hummer','electronics','clothes','Street'),(103,'Brainsphere','555 Fallview Road','mrushworth1e@oakley.com','4913772268939503','412-458-1919','Lexus','electronics','robots','Lane'),(104,'wef','1','sdvsdvds','1','1','1','1','1','1');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_login`
--

DROP TABLE IF EXISTS `business_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_login` (
  `idbusiness_login` int(11) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`idbusiness_login`,`email_id`,`password`),
  KEY `email_id_idx` (`email_id`),
  CONSTRAINT `email_id` FOREIGN KEY (`email_id`) REFERENCES `business` (`email_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idbusiness_login` FOREIGN KEY (`idbusiness_login`) REFERENCES `business` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_login`
--

LOCK TABLES `business_login` WRITE;
/*!40000 ALTER TABLE `business_login` DISABLE KEYS */;
INSERT INTO `business_login` VALUES (98,'dcattermullw@xing.com','dcattermullw'),(70,'ejepensenc@google.co.uk','ejepensenc'),(6,'estoffersen11@cpanel.net','estoffersen11'),(1,'info@aa.com','1234'),(5,'kaldrickf@tamu.edu','kaldrickf'),(99,'kcasewell1k@si.edu','kcasewell1k'),(47,'leaklee2b@gnu.org','leaklee2b'),(103,'mrushworth1e@oakley.com','mrushworth1e'),(7,'pnotton1h@hubpages.com','pnotton1h'),(78,'rmcgrey2j@meetup.com','rmcgrey2j');
/*!40000 ALTER TABLE `business_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `lead_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat1` varchar(45) NOT NULL,
  `cat2` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `city` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`lead_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `idqueries` int(11) NOT NULL AUTO_INCREMENT,
  `id_bus` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `require` varchar(85) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`idqueries`),
  UNIQUE KEY `idqueries_UNIQUE` (`idqueries`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
INSERT INTO `queries` VALUES (1,1,'Rashmi','rashmi@idi.com','9874565478','Mobile Charger','500 PCS',200),(2,1,'Shumona','shum@gmail.com','198273648','Electric Scooters','100 PCS ',15000),(3,70,'Ritik Patel','ritik@1234@gmail.com','923822145','Pillow Covers','10',20);
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `img_url` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`,`email_id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ritik Patel','9715489554','ritik_patl159@gmail.com','Delhi','NULL');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `iduser_login` int(11) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`iduser_login`),
  UNIQUE KEY `iduser_login_UNIQUE` (`iduser_login`),
  KEY `email_id_idx` (`email_id`),
  CONSTRAINT `iduser_login` FOREIGN KEY (`iduser_login`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-11 21:23:20
