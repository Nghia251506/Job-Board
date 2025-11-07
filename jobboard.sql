-- MySQL dump 10.13  Distrib 8.0.44, for macos15 (x86_64)
--
-- Host: localhost    Database: jobboard
-- ------------------------------------------------------
-- Server version	8.4.7

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delete_status` enum('Active','Deleted') COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Trọng Nghĩa Software','Hà Nội','https://tncom.xyz','ntn8530@gmail.com','2025-11-07 15:24:04','2025-11-07 15:24:04','2025-11-07 15:24:04','Active'),(2,'Saigon Digital Labs','TP.HCM','https://sgdigitallabs.com','hello@sgdigitallabs.com','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(3,'Da Nang CloudWorks','Đà Nẵng','https://cloudworks.vn','hi@cloudworks.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(4,'Hanoi Data Platform','Hà Nội','https://hanoidata.vn','info@hanoidata.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(5,'Mekong Fintech','Cần Thơ','https://mekongfintech.com','team@mekongfintech.com','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(6,'Hue Creative Studio','Huế','https://huecreative.vn','contact@huecreative.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(7,'Saigon AI Research','TP.HCM','https://saigonai.vn','hr@saigonai.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(8,'HaLong Marine Tech','Quảng Ninh','https://halongmarine.vn','support@halongmarine.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(9,'Highlands Commerce','Đà Lạt','https://highlandscommerce.vn','contact@highlandscommerce.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(10,'Nha Trang TravelTech','Khánh Hòa','https://traveltechnt.com','hello@traveltechnt.com','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(11,'Thai Nguyen Robotics','Thái Nguyên','https://tnrobotics.vn','info@tnrobotics.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(12,'Bac Ninh Manufacturing IT','Bắc Ninh','https://bnmfgit.vn','it@bnmfgit.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(13,'Quang Trung Software Park Co.','TP.HCM','https://qtsp.vn','contact@qtsp.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(14,'Ben Tre AgriTech','Bến Tre','https://bentreagri.vn','hello@bentreagri.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(15,'Hai Phong Logistics Tech','Hải Phòng','https://hplogtech.vn','ops@hplogtech.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(16,'Nam Dinh EduTech','Nam Định','https://ndedutech.vn','hi@ndedutech.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(17,'Vinh Cyber Security','Nghệ An','https://vinhcyber.vn','contact@vinhcyber.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(18,'Phu Quoc Hospitality Systems','Kiên Giang','https://pqhospitality.vn','support@pqhospitality.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(19,'Binh Duong Smart Factory','Bình Dương','https://bdsmartfactory.vn','info@bdsmartfactory.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(20,'Lang Son Cross-border Tech','Lạng Sơn','https://langsontech.vn','hello@langsontech.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active'),(21,'VietTech Solutions','Hà Nội','https://viettech.vn','contact@viettech.vn','2025-11-07 16:11:21','2025-11-07 16:11:21','2025-11-07 16:11:21','Active');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_status` enum('Active','Deleted') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'579 Hồng Hà','Active','ntn8530@gmail.com','Trọng Nghĩa Software','https://tncom.xyz');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_post`
--

DROP TABLE IF EXISTS `job_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` tinyint DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKyg71tmq8ufg5uglukumbpn5t` (`company_id`),
  CONSTRAINT `FKyg71tmq8ufg5uglukumbpn5t` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post`
--

LOCK TABLES `job_post` WRITE;
/*!40000 ALTER TABLE `job_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobposts`
--

DROP TABLE IF EXISTS `jobposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobposts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobType` enum('FULL_TIME','PART_TIME','REMOTE','INTERNSHIP') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `delete_status` enum('Active','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` enum('FULL_TIME','INTERNSHIP','PART_TIME','REMOTE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FKfatetx5gqlyohv1bbc75dgfxo` (`company_id`),
  CONSTRAINT `fk_company_jobpost` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKfatetx5gqlyohv1bbc75dgfxo` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobposts`
--

LOCK TABLES `jobposts` WRITE;
/*!40000 ALTER TABLE `jobposts` DISABLE KEYS */;
INSERT INTO `jobposts` VALUES (1,1,'FullStack WebApplication','Phát triển API Dotnet, tối ưu truy vấn MySQL, viết test.','Hà Nội','20-35 triệu/tháng',NULL,'2025-11-07 15:56:28',NULL,NULL,'Active','FULL_TIME',NULL),(2,21,'Backend Java Developer','Phát triển API Spring Boot, tối ưu truy vấn MySQL, viết test.','Hà Nội (Hybrid)','20-35 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(3,2,'Frontend React Engineer','Xây UI bằng React/TypeScript, Tailwind, tối ưu performance.','TP.HCM (Onsite)','18-30 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(4,3,'DevOps Engineer','CI/CD GitHub Actions, Docker, monitoring, autoscaling.','Đà Nẵng (Remote)','30-45 triệu','REMOTE','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(5,4,'Data Engineer','Xây pipeline dữ liệu, ETL, tối ưu kho dữ liệu.','Hà Nội (Onsite)','28-40 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(6,5,'QA/QC Manual Tester','Viết test case, test thủ công web/app, báo cáo bug.','Cần Thơ (Hybrid)','12-18 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(7,6,'UI/UX Designer','Thiết kế wireframe, prototype, làm việc với FE/BE.','Huế (Onsite)','15-25 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(8,7,'ML Engineer (NLP)','Huấn luyện mô hình, tối ưu inference, MLOps cơ bản.','TP.HCM (Hybrid)','35-55 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(9,8,'System Administrator','Quản trị hệ thống Linux, backup, bảo mật cơ bản.','Quảng Ninh (Onsite)','18-28 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(10,9,'E-commerce Operator','Vận hành sàn TMĐT, tối ưu chuyển đổi, campaign.','Đà Lạt (Onsite)','12-20 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(11,10,'Travel App Support','Hỗ trợ khách hàng, hướng dẫn sử dụng app du lịch.','Nha Trang (Onsite)','10-15 triệu','PART_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(12,11,'Embedded Developer (C/C++)','Lập trình nhúng, giao tiếp cảm biến, tối ưu bộ nhớ.','Thái Nguyên (Onsite)','25-40 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(13,12,'ERP Consultant (Intern)','Tham gia triển khai ERP, nhập liệu, viết tài liệu.','Bắc Ninh (Onsite)','Trợ cấp 3-5 triệu','INTERNSHIP','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(14,13,'Fullstack Developer (Spring/React)','Xây tính năng end-to-end, code review, viết test.','TP.HCM (Hybrid)','25-45 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(15,14,'Agri IoT Technician','Lắp đặt, bảo trì thiết bị IoT nông nghiệp, báo cáo.','Bến Tre (Onsite)','12-18 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(16,15,'Logistics Coordinator','Điều phối vận tải, tối ưu tuyến, làm việc với đối tác.','Hải Phòng (Onsite)','15-22 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(17,16,'Education Content Creator','Soạn nội dung học liệu số, quay/biên tập video.','Nam Định (Remote)','8-15 triệu','REMOTE','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(18,17,'Security Analyst (SOC)','Giám sát sự kiện, phân tích cảnh báo, báo cáo sự cố.','Vinh (Hybrid)','30-50 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(19,18,'Hotel PMS Support','Hỗ trợ triển khai/đào tạo hệ thống PMS cho khách sạn.','Phú Quốc (Onsite)','14-22 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(20,19,'Smart Factory Integrator','Kết nối MES/SCADA, tích hợp API, viết tài liệu kỹ thuật.','Bình Dương (Onsite)','28-45 triệu','FULL_TIME','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL),(21,20,'Cross-border Ops Intern','Hỗ trợ vận hành nền tảng xuyên biên giới, nhập liệu.','Lạng Sơn (Onsite)','Trợ cấp 3-5 triệu','INTERNSHIP','2025-11-07 16:11:56','2025-11-07 16:11:56','2025-11-07 16:11:56','Active','FULL_TIME',NULL);
/*!40000 ALTER TABLE `jobposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'jobboard'
--

--
-- Dumping routines for database 'jobboard'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-07 17:25:38
