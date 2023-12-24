CREATE DATABASE  IF NOT EXISTS hospital /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE hospital;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS appointments;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE appointments (
  id int NOT NULL AUTO_INCREMENT,
  patient_id int NOT NULL,
  doctor_id int NOT NULL,
  appointment_date date NOT NULL,
  PRIMARY KEY (id),
  KEY patient_id (patient_id),
  KEY doctor_id (doctor_id),
  CONSTRAINT appointments_ibfk_1 FOREIGN KEY (patient_id) REFERENCES patients (id),
  CONSTRAINT appointments_ibfk_2 FOREIGN KEY (doctor_id) REFERENCES doctors (id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE appointments DISABLE KEYS */;
INSERT INTO appointments VALUES (1,1,2,'2023-09-29'),(2,1,1,'2023-05-23'),(3,2,2,'2023-09-30'),(4,1,2,'2023-12-20');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table doctors
--

DROP TABLE IF EXISTS doctors;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  specialization varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE doctors DISABLE KEYS */;
INSERT INTO doctors VALUES (1,'ABUBEKER SALIH','Physician'),(2,'AHMAD ENDRIS','NeuroSurgeon');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_doctors`
--

DROP TABLE IF EXISTS new_doctors;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_doctors` (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  specialization varchar(255) NOT NULL,
  enrollment_date date NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_doctors`
--

LOCK TABLES `new_doctors` WRITE;
/*!40000 ALTER TABLE `new_doctors` DISABLE KEYS */;
INSERT INTO new_doctors VALUES (1,'h','bo','2000-09-07'),(2,'Muhammed','Internist','2016-12-03'),(3,'hamza','bone','2001-09-25'),(4,'mustafa','brain','2023-07-23');
/*!40000 ALTER TABLE `new_doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table patients
--

DROP TABLE IF EXISTS patients;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE patients (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  age int NOT NULL,
  gender varchar(10) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE patients DISABLE KEYS */;
INSERT INTO patients VALUES (1,'abubkerer',65,'m'),(2,'abubeker',9,'m'),(3,'a',56,'m'),(4,'Ahmad',22,'M'),(5,'abubeker',56,'m'),(6,'abubeker',23,'m'),(7,'hussen',21,'m'),(8,'abubeker',6,'m'),(9,'hassen',56,'m'),(10,'umer',34,'m'),(11,'hana',34,'f');
/*!40000 ALTER TABLE patients ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-23 23:51:54
