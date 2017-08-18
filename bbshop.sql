-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: bbshop
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `isActive` int(11) DEFAULT '1',
  `GroupCategoriesId` int(11) DEFAULT NULL,
  PRIMARY KEY (`CategoryId`),
  KEY `a_x_idx` (`GroupCategoriesId`),
  CONSTRAINT `FKkes544gf3qvixx80lf7ve0jb` FOREIGN KEY (`GroupCategoriesId`) REFERENCES `groupcategories` (`GroupCategoriesId`),
  CONSTRAINT `a_x` FOREIGN KEY (`GroupCategoriesId`) REFERENCES `groupcategories` (`GroupCategoriesId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Giày Cao Gót',1,1),(2,'Giày Xăng Đan',1,1),(3,'Giày Sneaker',1,1),(4,'Giày Bot',1,1),(5,'Giày Vải',1,1),(6,'Giày Thể Thao',1,1),(7,'Dép',1,1),(8,'Guốc',1,1),(9,'Giày Cansual',1,1),(10,'Giày Tây',1,1),(11,'Giày Cổ Cao',1,1),(12,'Giày Công Sở',1,1),(13,'Dây Nịt',1,2),(14,'Nón',1,2),(15,'Khăn Choàng',1,2),(16,'Khăn Tay',1,2),(17,'Găng Tay',1,2),(18,'Túi Xách',1,3),(19,'Ví Tiền',1,3),(20,'Ba Lô',1,3),(21,'Túi Du Lịch',1,3),(22,'Vali',1,3),(23,'Bóng Đá',1,4),(24,'Bóng Chuyền',1,4),(25,'Bơi Lội',1,4),(26,'Bóng Rổ',1,4),(27,'Áo Thun',1,5),(28,'Áo Sơ Mi',1,5),(29,'Quần Tây',1,5),(30,'Quần Jean',1,5),(31,'Áo Khoát',1,5),(32,'Áo Len',1,5),(33,'Đầm',1,5),(34,'Váy Công Sở',1,5),(35,'Đồ Ngủ',1,5),(36,'Thời Trang Bầu',1,5),(37,'Áo Dài',1,5),(38,'Kính Thời Trang',1,6),(39,'Kính Đi Đêm',1,6),(40,'Kính Chống Chói',1,6),(41,'Kính Mát',1,6),(42,'Vòng Tay',1,7),(43,'Nhẫn',1,7),(44,'Bông Tai',1,7),(46,'Danh mục mới',1,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color` (
  `ColorId` int(11) NOT NULL AUTO_INCREMENT,
  `ColorName` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ColorId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Đỏ'),(2,'Xanh'),(3,'Xanh da trời'),(4,'Tím'),(5,'Hồng');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `FeedbackId` int(11) NOT NULL AUTO_INCREMENT,
  `StatusFeedbackId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Content` text COLLATE utf8_swedish_ci,
  `Title` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`FeedbackId`),
  KEY `FKjd6qjkj0l2adlq2y949ry8p74` (`StatusFeedbackId`),
  KEY `FKpxk1rhbli5jw3vfqb4ym9ya21` (`UserId`),
  CONSTRAINT `FKjd6qjkj0l2adlq2y949ry8p74` FOREIGN KEY (`StatusFeedbackId`) REFERENCES `statusfeedback` (`StatusFeedbackId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKpxk1rhbli5jw3vfqb4ym9ya21` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (7,2,1,'test feed back 2','test feed back 2','2017-02-28 20:21:45');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupcategories`
--

DROP TABLE IF EXISTS `groupcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupcategories` (
  `GroupCategoriesId` int(11) NOT NULL AUTO_INCREMENT,
  `GroupCategoriesName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GroupCategoriesId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupcategories`
--

LOCK TABLES `groupcategories` WRITE;
/*!40000 ALTER TABLE `groupcategories` DISABLE KEYS */;
INSERT INTO `groupcategories` VALUES (1,'Giày',NULL),(2,'Phụ Kiện',NULL),(3,'Túi Xách',NULL),(4,'Thể Thao',NULL),(5,'Trang Phục',NULL),(6,'Mắt Kính',NULL),(7,'Trang Sức',NULL);
/*!40000 ALTER TABLE `groupcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetail` (
  `OrderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `OrderId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `TotalUnitPrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderDetailId`),
  KEY `FKf3cq6tub2466d9bpsrjgcwrvl` (`ProductId`),
  KEY `FKlhiiojgbo5r2n0vha18w5l2p3` (`OrderId`),
  CONSTRAINT `FKf3cq6tub2466d9bpsrjgcwrvl` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKlhiiojgbo5r2n0vha18w5l2p3` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,1,21,1,34),(2,1,20,2,462),(3,2,17,2,92),(6,4,21,2,68),(7,4,20,3,693),(8,4,19,1,97),(9,5,12,3,138),(10,5,11,2,110),(11,6,5,1,54),(12,6,6,1,34),(13,6,4,1,65),(14,7,6,1,34),(15,8,12,2,92),(16,8,11,3,165),(17,8,8,2,86),(18,9,8,2,86),(19,9,9,3,1308),(20,10,7,1,46),(21,10,4,1,65),(22,11,6,1,34),(23,11,3,1,54),(24,12,17,1,46),(25,12,16,1,65),(26,13,21,3,102),(27,13,20,2,462),(28,14,21,2,68),(29,14,20,1,231),(30,15,20,3,693),(31,16,21,3,102),(32,16,20,3,693);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `OrderId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `ReceiverId` int(11) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `StatusOrderId` int(11) DEFAULT NULL,
  `TotalPrice` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `FKd0f9817gfeu0o3tfwpd479kjl` (`ReceiverId`),
  KEY `FKfxb9ma9rg3un5nid64gpgwyq7` (`StatusOrderId`),
  KEY `FKm81xxtw4p6hih854jdgy6qpkn` (`UserId`),
  CONSTRAINT `FKd0f9817gfeu0o3tfwpd479kjl` FOREIGN KEY (`ReceiverId`) REFERENCES `receiver` (`ReceiverId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKfxb9ma9rg3un5nid64gpgwyq7` FOREIGN KEY (`StatusOrderId`) REFERENCES `statusorder` (`StatusOrderId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKm81xxtw4p6hih854jdgy6qpkn` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,NULL,'2017-02-22 15:47:47',4,496),(2,1,2,NULL,'2017-02-21 15:47:47',4,92),(4,1,4,NULL,'2017-02-24 16:04:22',4,858),(5,1,5,'2017-02-09 00:00:00','2017-01-22 17:02:55',2,248),(6,1,6,'2017-02-05 00:00:00','2017-01-11 17:06:10',2,153),(7,1,7,'2017-02-12 00:00:00','2017-01-21 20:03:08',2,34),(8,2,8,NULL,'2017-02-20 20:28:53',4,343),(9,2,9,'2017-02-01 00:00:00','2017-01-02 20:30:49',2,1394),(10,2,10,NULL,'2017-02-03 20:31:24',4,111),(11,2,11,'2017-03-01 00:00:00','2017-02-21 20:31:58',3,88),(12,1,12,NULL,'2017-03-01 08:26:31',4,111),(13,1,13,NULL,'2017-03-01 09:11:02',4,564),(14,1,14,'2017-03-02 00:00:00','2017-03-01 09:16:50',2,299),(15,1,15,NULL,'2017-03-01 19:28:19',4,693),(16,1,16,NULL,'2017-03-17 08:29:48',4,795);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producimage`
--

DROP TABLE IF EXISTS `producimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producimage` (
  `ProducImageId` int(11) NOT NULL AUTO_INCREMENT,
  `ProducDetailtId` int(11) DEFAULT NULL,
  `Url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `IsActive` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProducImageId`),
  KEY `FK7w9nnc4tpj5tftvuuhqe3wsw7` (`ProducDetailtId`),
  CONSTRAINT `FK7w9nnc4tpj5tftvuuhqe3wsw7` FOREIGN KEY (`ProducDetailtId`) REFERENCES `productdetail` (`ProductdetailId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producimage`
--

LOCK TABLES `producimage` WRITE;
/*!40000 ALTER TABLE `producimage` DISABLE KEYS */;
INSERT INTO `producimage` VALUES (1,1,'macaron-8110-451386-1.jpg',1),(2,2,'the-blues-6119-513676-1.jpg',1),(3,3,'macaron-4881-793306-1.jpg',1),(4,4,'macaron-6117-747606-1.jpg',1),(5,5,'zilandi-5099-206876-1.jpg',1),(6,6,'lithe-s-8007-654286-1.jpg',1),(7,7,'zilandi-4823-939226-1.jpg',1),(8,8,'celeb-6626-120486-1.jpg',1),(9,9,'macaron-2386-568536-1.jpg',1),(10,10,'zalora-4546-485184-1.jpg',1),(11,11,'geox-0780-900846-1.jpg',1),(12,12,'joven-6570-823336-1.jpg',1),(13,13,'inner-circle-6514-747216-1.jpg',1),(14,14,'bambo-9153-460064-2.jpg',1),(15,15,'inner-circle-1237-832746-1.jpg',1),(16,16,'inner-circle-2193-894516-1.jpg',1),(17,17,'zalora-7089-080765-4.jpg',1),(18,18,'furla-5263-427076-1.jpg',1),(19,19,'zalora-6229-788665-1.jpg',1),(20,20,'furla-5935-717076-1.jpg',1),(21,21,'nike-7272-786556-1.jpg',1);
/*!40000 ALTER TABLE `producimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ProductId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) DEFAULT NULL,
  `ProductName` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Description` text COLLATE utf8_swedish_ci,
  `IsDiscounted` int(11) DEFAULT '1',
  `UnitPrice` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `IsActive` int(11) DEFAULT '1',
  `DateCreated` datetime DEFAULT NULL,
  `TotalVote` int(11) DEFAULT '1',
  `ShopId` int(11) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProductId`),
  KEY `FKs8d5pxcn62kg6fq10btgfeo7m` (`CategoryId`),
  KEY `FKl1idn4i6a82vn4nfp8f53ecvd` (`ShopId`),
  CONSTRAINT `FKl1idn4i6a82vn4nfp8f53ecvd` FOREIGN KEY (`ShopId`) REFERENCES `shop` (`ShopId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKs8d5pxcn62kg6fq10btgfeo7m` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,27,'Macaron Áo Thun Cổ Tròn Nam Có Nút Xám Nhạt','Áo thun Cổ tròn nam chất liệu cotton lạnh, thoáng mát, phù hợp với tiết trời mùa hè.\r\nÁo thích hợp kết hợp với quần short, quần jean, Tạo nên phong cách trẻ trung năng động.\r\nThiết kế form chuẩn, điểm nhấn là hàng nút ở cổ áo tạo nên sự trẻ trung vá thời trang.',0,45,555,1,'2017-02-28 14:54:24',1,1,555),(2,27,'The Blues Áo Polo Nam Sọc Tay Ngắn','Cuối tuần đầy thoải mái với áo polo thiết kế bởi thương hiệu The Blues. Áo có kiểu dáng đơn giản, chất liệu thấm hút tốt khiến quý ông thấy dễ chịu cả ngày dài.',0,65,545,1,'2017-02-28 15:01:17',1,1,545),(3,27,'Macaron Áo Thun Polo Nam','- Sản phẩm áo thun Polo vải Cá Sấu là một item không thể thiếu trong tủ áo của bạn. Bạn dễ dàng kết hợp với quần Jean, Short để tạo nên những phong cách thời trang đa dạng từ cổ điển đến năng động thích hợp với nhiều thời điểm hoàn cảnh khác nhau. \r\n- Sản phẩm Vải thun Cá Sấu Cao Cấp nên rất thoáng mát và thấm hút tốt, sau khi giặt sản phẩm ít bị biến dang dẫn đến việc bảo quản sản phẩm dễ dàng hơn. Chất liệu vải thích hợp với thời tiết nóng bức tại Việt Nam',0,54,444,1,'2017-02-28 15:03:38',1,1,444),(4,27,'Macaron Áo Thun Polo Nam Cung Cấp Mới Macaron','Sản phẩm áo thun Polo vải Cá Sấu là một item không thể thiếu trong tủ áo của bạn. Bạn dễ dàng kết hợp với quần Jean, Short để tạo nên những phong cách thời trang đa dạng từ cổ điển đến năng động thích hợp với nhiều thời điểm hoàn cảnh khác nhau. ',0,65,234,1,'2017-02-28 15:09:07',2,1,233),(5,1,'ZILANDI by ZALORA Giày Cao Gót Nữ','Sang trọng và quyến rũ hơn với giày cao gót thiết kế bởi thương hiệu ZILANDI by ZALORA. Giày được làm từ chất liệu da cao cấp, kiểu dáng đơn giản dễ dàng phối cùng trang phục.',0,54,554,1,'2017-02-28 15:11:16',2,1,553),(6,1,'Lithe.S Giày Xăng Đan Cao Gót Lithe.S Cột Nơ','Thanh mảnh và gọn gàng, kiêu sa và quyến rũ, thanh lịch và tinh tế là những từ miêu tả hoàn hảo cho kiểu giầy xăng đan cao gót Lithe.S cột nơ.\r\n\r\nĐôi giày này là một sự lựa chọn hoàn hảo khi bạn muốn khoe vóc dáng yêu kiều của mình, làm tôn thêm vẻ sang trọng, quý phái. Bạn sẽ trở nên quyến rũ và tự tin hơn khi bước đi với mẫu giày này.\r\n\r\nKiểu dáng cực thời trang và thanh thoát, cùng với chất liệu da da tổng hợp mềm mại và họa tiết cột nơ ôm lấy cổ chân giúp bạn trông thật sang chảnh và kiêu sa.\r\n\r\nGót giày thiết kế nhỏ nhắn và tinh tế nhưng cũng vô cùng vững chắc để giúp chị em di chuyển thoải mái và nhẹ nhàng.',0,34,434,1,'2017-02-28 15:12:50',3,1,432),(7,1,'ZILANDI by ZALORA Giày Cao Gót Nữ','Giày cao gót của thương hiệu ZILANDI by ZALORA có thiết kế phối vải lưới độc đáo cùng màu sắc hiện đại, khẳng định cá tính sành điệu của quý cô. ',0,46,435,1,'2017-02-28 15:14:09',1,1,435),(8,29,'CELEB Quần Tây','Quần tây tôn lên dáng vẻ lịch lãm và làm cho bạn thêm phần phong độ\r\n-Chất liệu: Kaki có thun\r\n-Có độ co giãn\r\n-Quần Skinny',0,43,435,1,'2017-02-28 15:16:32',1,1,433),(9,29,'Macaron Quần Kaki Slim Fit Nam','Quần Kaki Nam Chất liệu Kaki , Form Slim fit , không giãn. Chất vải đẹp, dài dặn.\r\nForm Chuẩn , tông lên dáng người mặc.\r\nNhiều kích cỡ để lựa chon từ 50 đến 75kg',0,436,555,1,'2017-02-28 15:18:52',1,1,552),(10,2,'ZALORA Giày Sandals Quai Đôi','Giày sandals của thương hiệu ZALORA bật lên phong cách trẻ trung và năng động cho bạn. Thiết kế quai đôi, may khóa gài kim loại tạo điểm nhấn nổi bật.\r\n',0,46,435,1,'2017-02-28 15:22:26',1,1,435),(11,2,'Geox Giày Sandal U S.Strada WF C','Gợi ý thú vị đến từ Geox cho cuối tuần của bạn với giày sandal U S.strada WF C với thiết kế cổ điển. Giày có mặt lót chân êm, phối lỗ thoáng khí mang đến cảm giác thoải mái cả ngày dài.',0,55,354,1,'2017-02-28 15:24:50',2,1,348),(12,28,'JOVEN Áo Sơ Mi Cổ Sen Tay Dài','Áo sơ mi cổ sen đến từ thương hiệu thời trang Joven sẽ cho bạn vẻ ngoài dịu dàng, phù hợp với môi trường công sở hay học tập. Với chiếc áo này, bạn có thể phối hợp cùng các kiểu quần hay chân váy một cách linh động để làm cho vẻ ngoài của mình mỗi ngày thêm mới lạ, ',0,46,454,1,'2017-02-28 15:26:45',1,1,446),(13,28,'INNER CIRCLE by ZALORA Sơ Mi Nữ','Với thiết kế tối giản bật lên sự thanh lịch, áo sơ mi từ thương hiệu INNER CIRCLE by ZALORA khẳng định đẳng cấp quý cô công sở. \r\n\r\n- Chất liệu cotton pha\r\n- Cổ lật',0,46,345,1,'2017-02-28 15:28:34',1,2,345),(14,28,'BAMBO Áo Sơ Mi Dài Tay','- Chất liệu cotton\r\n- Cổ lật\r\n- Tay dài, gấu tay phối nút cài\r\n- Hàng nút cài chạy dọc thân trước\r\n- Dáng suông\r\n- Vạt bầu',0,45,456,1,'2017-02-28 15:30:42',1,2,456),(15,34,'INNER CIRCLE by ZALORA Đầm Tay Cánh Dơi','Trở thành cô nàng búp bê cổ điển và xinh đẹp với đầm xòe ngắn tay thiết kế bởi INNER CIRCLE BY ZALORA. Đầm có màu sắc trơn nhã nhặn, thiết kế dáng xòe mang đến cho quý cô sự nữ tính, bí ẩn và đầy thu hút.',0,45,466,1,'2017-02-28 15:32:25',1,2,466),(16,1,'INNER CIRCLE by ZALORA Đầm Suông Tay Bèo','Trở thành quý cô thanh lịch với đầm dáng suông tay bèo thiết kế bởi thương hiệu INNER CIRCLE by ZALORA. Đầm có kiểu dáng suông mềm mại, màu sắc đơn giản phù hợp để mặc đến công sở hoặc dạo phố.',0,65,435,1,'2017-02-28 15:33:32',1,2,435),(17,37,'ZALORA Đầm Maxi Cổ Cao Basics','Thể hiện sự tự tin duyên dáng nhưng vẫn cảm thấy thoải mái cùng chiếc đầm maxi từ thương hiệu ZALORA. Đầm còn mang lại nét bí ẩn và quyến rũ cho phái đẹp.\r\n',0,46,354,1,'2017-02-28 15:35:51',2,2,354),(18,18,' FURLA Túi Xách Candy','Sản phẩm giảm giá từ 40% trở lên chỉ chấp nhận đổi trả trong vòng 7 ngày với một số trường hợp cụ thể (Thiếu phụ kiện, sản phẩm khác hình website, oxi hóa)\r\n\r\nChiếc túi xách Candy đến từ Italy thiết kế bởi thương hiệu Furla sẽ là gợi ý không thể hoàn hảo hơn cho các quý cô yêu thích phong cách hiện đại và năng động. Với kiểu dáng ngăn to thoáng, màu sắc nhã nhặn cùng kiểu dáng đẹp mắt sang trọng, chiếc túi này hứa hẹn sẽ mang đến cho bạn sự yêu thích ngay từ cái nhìn đầu tiên.\r\n',0,98,234,1,'2017-02-28 15:39:09',1,3,234),(19,18,'ZALORA Ví Cầm Tay Tua Rua','Tự tin thể hiện vẻ ngoài sang trọng và thanh lịch cùng ví cầm tay từ thương hiệu ZALORA. Thiết kế phối tua rua làm điểm nhấn độc đáo. ',0,97,467,1,'2017-02-28 15:40:15',1,3,467),(20,18,'FURLA Túi Xách Candy','Sản phẩm giảm giá từ 40% trở lên chỉ chấp nhận đổi trả trong vòng 7 ngày với một số trường hợp cụ thể (Thiếu phụ kiện, sản phẩm khác hình website, oxi hóa)\r\n\r\nTràn ngập sắc màu khi dạo phố mùa Xuân này với túi xách Candy đến từ thương hiệu Furla. Túi có chất liệu trong suốt đáng yêu để bạn khéo léo khoe các vật dụng cá nhân yêu thích.',0,231,456,1,'2017-02-28 15:41:37',1,3,455),(21,14,'Nike Nón Thể Thao NIKE FC TRUE','Thêm phần cá tính với nón thể thao NIKE FC TRUE thiết kế bởi thương hiệu Nike. Nón có màu sắc trơn, kiểu dáng đơn giản đẹp mắt là món phụ kiện thú vị để mix và match cùng quần ',0,34,434,1,'2017-02-28 15:44:49',2,3,432);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcomment`
--

DROP TABLE IF EXISTS `productcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcomment` (
  `ProductCommentId` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `DateCreated` datetime DEFAULT NULL,
  `StatusCommentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProductCommentId`),
  KEY `FK9808b85eagr4uwtakhritgbbr` (`UserId`),
  KEY `FKc5ibfw34nrwy82aqhjm2d874t` (`ProductId`),
  KEY `status_idx` (`StatusCommentId`),
  CONSTRAINT `FK9808b85eagr4uwtakhritgbbr` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKc5ibfw34nrwy82aqhjm2d874t` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKsmi84qy58dtswxobacwjxs7r` FOREIGN KEY (`StatusCommentId`) REFERENCES `statuscomment` (`statuscommentid`),
  CONSTRAINT `status` FOREIGN KEY (`StatusCommentId`) REFERENCES `statuscomment` (`statuscommentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcomment`
--

LOCK TABLES `productcomment` WRITE;
/*!40000 ALTER TABLE `productcomment` DISABLE KEYS */;
INSERT INTO `productcomment` VALUES (1,21,1,'sản phẩm tốt','2017-02-28 16:38:06',2),(2,21,2,'chất lượng tốt','2017-02-28 16:38:58',2),(3,21,1,'','2017-02-28 18:15:14',3);
/*!40000 ALTER TABLE `productcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productdetail`
--

DROP TABLE IF EXISTS `productdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productdetail` (
  `ProductdetailId` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) DEFAULT NULL,
  `SizeId` int(11) DEFAULT NULL,
  `ColorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProductdetailId`),
  UNIQUE KEY `ProductId_UNIQUE` (`ProductId`),
  KEY `FK2pp62i7x7seip2e2o3objt9ln` (`SizeId`),
  KEY `FKi49hpoe9jfw702mryd20u0xf1` (`ColorId`),
  CONSTRAINT `FK2pp62i7x7seip2e2o3objt9ln` FOREIGN KEY (`SizeId`) REFERENCES `sizes` (`SizeId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKemkomj90fn5a6b9oaf2a4xm32` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKi49hpoe9jfw702mryd20u0xf1` FOREIGN KEY (`ColorId`) REFERENCES `color` (`ColorId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productdetail`
--

LOCK TABLES `productdetail` WRITE;
/*!40000 ALTER TABLE `productdetail` DISABLE KEYS */;
INSERT INTO `productdetail` VALUES (1,1,1,1),(2,2,1,1),(3,3,1,1),(4,4,1,1),(5,5,1,1),(6,6,1,1),(7,7,1,1),(8,8,1,1),(9,9,1,1),(10,10,1,1),(11,11,1,1),(12,12,1,1),(13,13,1,1),(14,14,1,1),(15,15,1,1),(16,16,1,1),(17,17,1,1),(18,18,1,1),(19,19,1,1),(20,20,1,1),(21,21,1,1);
/*!40000 ALTER TABLE `productdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productvoting`
--

DROP TABLE IF EXISTS `productvoting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productvoting` (
  `ProductVotingId` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Mark` int(11) DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  PRIMARY KEY (`ProductVotingId`),
  KEY `FK456aifod4qfyalgjyvn78o9ay` (`ProductId`),
  KEY `FKhg57kfvdj4m1e86igf92l7yrn` (`UserId`),
  CONSTRAINT `FK456aifod4qfyalgjyvn78o9ay` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKhg57kfvdj4m1e86igf92l7yrn` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productvoting`
--

LOCK TABLES `productvoting` WRITE;
/*!40000 ALTER TABLE `productvoting` DISABLE KEYS */;
INSERT INTO `productvoting` VALUES (1,5,1,3,'2017-02-28 20:01:09'),(2,6,1,3,'2017-02-28 20:01:21'),(3,4,1,4,'2017-02-28 20:01:27'),(4,6,1,4,'2017-02-28 20:05:26'),(5,21,1,3,'2017-03-01 09:19:41');
/*!40000 ALTER TABLE `productvoting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiver`
--

DROP TABLE IF EXISTS `receiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiver` (
  `ReceiverId` int(11) NOT NULL AUTO_INCREMENT,
  `ReceiverName` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `ReceiverAddress` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `ReceiverPhone` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ReceiverId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiver`
--

LOCK TABLES `receiver` WRITE;
/*!40000 ALTER TABLE `receiver` DISABLE KEYS */;
INSERT INTO `receiver` VALUES (1,'Nguyễn Văn A','12/2 Nguyễn Huệ','1235465'),(2,'Nguyễn Văn A','12/2 Nguyễn Huệ','1235465'),(4,'Nguyễn Văn C','12/2 Lý Thái Tổ','4454756'),(5,'Nguyễn Văn C','12/2 Nguyễn Văn Trỗi','12343543'),(6,'Nguyễn Văn C','12/2 Lý Thái Tổ','23423544'),(7,'Nguyễn Văn C','12/2 Nguyễn Huệ','234323'),(8,'Nguyễn Văn C','12/2 Nguyễn Văn Trỗi','234323'),(9,'Nguyễn Văn C','12/2 Lý Thái Tổ','12343'),(10,'Nguyễn Văn CD','12/2 Nguyễn Văn Trỗi','34435'),(11,'Nguyễn Văn CS','12/2 Nguyễn Văn Trỗi','123435'),(12,'Nguyễn Văn C','12/2 Nguyễn Văn Trỗi','23423'),(13,'Nguyễn Văn C','12/2 Lý Thái Tổ','123434'),(14,'Nguyễn Văn C','12/2 Nguyễn Văn Trỗi','234345'),(15,'Nguyễn Văn C','12/2 Nguyễn Văn Trỗi','12345'),(16,'Nguyễn Văn C','12/2 Lý Thái Tổ','12345');
/*!40000 ALTER TABLE `receiver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `RoleId` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_SHOP'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `RoleId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`RoleId`,`UserId`),
  KEY `FK42hv35mtq08f94h5k9s02a4j1` (`UserId`),
  CONSTRAINT `FK42hv35mtq08f94h5k9s02a4j1` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKn6i11y7o04s62lcirw7bqflaw` FOREIGN KEY (`RoleId`) REFERENCES `role` (`RoleId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (2,1),(2,2),(2,3),(1,7),(1,8),(1,9),(1,10),(1,11);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `ShopId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `ShopName` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `ShopLogo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShopPhone` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  PRIMARY KEY (`ShopId`),
  UNIQUE KEY `UserId_UNIQUE` (`UserId`),
  UNIQUE KEY `ShopName_UNIQUE` (`ShopName`),
  KEY `shop_user_idx` (`UserId`),
  CONSTRAINT `FKf23kopfdmdkw63i3tl3ubvmus` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`) ON UPDATE CASCADE,
  CONSTRAINT `shop_user` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,7,'Lazada1',NULL,'5675665','2017-02-28 14:37:43'),(2,8,'Fptshop1',NULL,'345346542','2017-02-28 14:39:09'),(3,9,'Lazada2',NULL,'3453465434','2017-02-28 14:41:14'),(4,10,'Fptshop2',NULL,'43435342','2017-02-28 14:43:08'),(5,11,'fptshop3',NULL,'5675665','2017-03-01 09:22:03');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_address`
--

DROP TABLE IF EXISTS `shop_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_address` (
  `ShopAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `ShopId` int(11) DEFAULT NULL,
  `Address` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `City` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ShopAddressId`),
  KEY `FK6t13csvshi55j1exkgb8uol9s` (`ShopId`),
  CONSTRAINT `FK6t13csvshi55j1exkgb8uol9s` FOREIGN KEY (`ShopId`) REFERENCES `shop` (`ShopId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_address`
--

LOCK TABLES `shop_address` WRITE;
/*!40000 ALTER TABLE `shop_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_category` (
  `ShopId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  PRIMARY KEY (`ShopId`,`CategoryId`),
  KEY `FK60udufmlj0lyt3fj6fy9ojdib` (`CategoryId`),
  CONSTRAINT `FK60udufmlj0lyt3fj6fy9ojdib` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKrkmr2em65mo528ofp8b37lknf` FOREIGN KEY (`ShopId`) REFERENCES `shop` (`ShopId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES (1,1),(2,1),(3,1),(1,2),(1,3),(4,3),(2,4),(3,5),(2,6),(3,6),(4,6),(3,7),(5,8),(3,10),(4,10),(3,13),(3,14),(4,15),(2,18),(3,18),(1,20),(1,27),(4,27),(1,28),(2,28),(4,28),(1,29),(3,29),(4,29),(2,34),(1,37),(2,37),(5,46);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopdaily`
--

DROP TABLE IF EXISTS `shopdaily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopdaily` (
  `ShopDailyId` int(11) NOT NULL AUTO_INCREMENT,
  `ShopId` int(11) DEFAULT NULL,
  `Action` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Target` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TargetId` int(11) DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  PRIMARY KEY (`ShopDailyId`),
  KEY `shop_d_idx` (`ShopId`),
  CONSTRAINT `FK43jecx0u620nsm71o1v9cksj0` FOREIGN KEY (`ShopId`) REFERENCES `shop` (`ShopId`),
  CONSTRAINT `shop_d` FOREIGN KEY (`ShopId`) REFERENCES `shop` (`ShopId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopdaily`
--

LOCK TABLES `shopdaily` WRITE;
/*!40000 ALTER TABLE `shopdaily` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopdaily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `SizeId` int(11) NOT NULL AUTO_INCREMENT,
  `Size` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`SizeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'m'),(2,'x'),(3,'l');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuscomment`
--

DROP TABLE IF EXISTS `statuscomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuscomment` (
  `statuscommentid` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`statuscommentid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuscomment`
--

LOCK TABLES `statuscomment` WRITE;
/*!40000 ALTER TABLE `statuscomment` DISABLE KEYS */;
INSERT INTO `statuscomment` VALUES (1,'Khóa'),(2,'Mở'),(3,'Đợi xử lý');
/*!40000 ALTER TABLE `statuscomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusfeedback`
--

DROP TABLE IF EXISTS `statusfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusfeedback` (
  `StatusFeedbackId` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`StatusFeedbackId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusfeedback`
--

LOCK TABLES `statusfeedback` WRITE;
/*!40000 ALTER TABLE `statusfeedback` DISABLE KEYS */;
INSERT INTO `statusfeedback` VALUES (1,'Đã xem'),(2,'Chưa xem');
/*!40000 ALTER TABLE `statusfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusorder`
--

DROP TABLE IF EXISTS `statusorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusorder` (
  `StatusOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StatusOrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusorder`
--

LOCK TABLES `statusorder` WRITE;
/*!40000 ALTER TABLE `statusorder` DISABLE KEYS */;
INSERT INTO `statusorder` VALUES (1,'Đang giao hàng'),(2,'Đã giao'),(3,'Bị khóa'),(4,'Đợi xử lý');
/*!40000 ALTER TABLE `statusorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `SupplierId` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(45) DEFAULT NULL,
  `CompanyAddress` varchar(255) DEFAULT NULL,
  `CompanyPhone` varchar(45) CHARACTER SET ucs2 DEFAULT NULL,
  `CompanyLogo` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `UserName` varchar(255) DEFAULT NULL,
  `PassWord` varchar(255) DEFAULT NULL,
  `Role` varchar(45) DEFAULT NULL,
  `enabled` int(11) DEFAULT '1',
  PRIMARY KEY (`SupplierId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'TMDT','Da Nang','01239645',NULL,'t1','1','ROLE_SUPPLIER',1);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierId` int(11) DEFAULT NULL,
  `UserName` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `PassWord` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Genders` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Phone` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `IdFacebook` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `NameFacebook` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `IdFacebook_UNIQUE` (`IdFacebook`),
  KEY `FKkrdrsuoy7a0wjdstrq6mmjyq9` (`SupplierId`),
  CONSTRAINT `FKkrdrsuoy7a0wjdstrq6mmjyq9` FOREIGN KEY (`SupplierId`) REFERENCES `supplier` (`SupplierId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'u1','1','u1@yahoo.com',NULL,NULL,NULL,NULL,NULL,'2017-02-28 14:31:32',1),(2,NULL,'u2','1','u2@yahoo.com',NULL,NULL,NULL,NULL,NULL,'2017-02-28 14:32:17',1),(3,NULL,'u3','1','u3@yahoo.com',NULL,NULL,NULL,NULL,NULL,'2017-02-28 14:32:33',1),(7,1,'s1','1','lbcong15@gmail.com','12/3 Quang Trung',NULL,'123345',NULL,NULL,'2017-02-28 14:37:43',1),(8,1,'s2','1','starwar@gmail.com','12/4 Nguyễn Huệ',NULL,'1233452',NULL,NULL,'2017-02-28 14:39:09',1),(9,1,'s3','1','Sunface@yahoo.com','12/6 Trường Chinh',NULL,'6557864',NULL,NULL,'2017-02-28 14:41:14',1),(10,1,'s4','1','vutrancntt@gmail.com','12/4 Lê Lợi',NULL,'12323434',NULL,NULL,'2017-02-28 14:43:08',1),(11,1,'s10','6867','vutrancntt@gmail.com1','abc',NULL,'34545',NULL,NULL,'2017-03-01 09:22:03',1);
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

-- Dump completed on 2017-04-22 15:49:04
