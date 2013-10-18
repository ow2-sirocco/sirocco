-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sirocco
-- ------------------------------------------------------
-- Server version	5.5.31-0+wheezy1

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
-- Table structure for table `ACCESSEVENTTYPE`
--

DROP TABLE IF EXISTS `ACCESSEVENTTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACCESSEVENTTYPE` (
  `ID` int(11) NOT NULL,
  `INITIATOR` varchar(255) DEFAULT NULL,
  `OPERATION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_ACCESSEVENTTYPE_ID` FOREIGN KEY (`ID`) REFERENCES `EVENTTYPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCESSEVENTTYPE`
--

LOCK TABLES `ACCESSEVENTTYPE` WRITE;
/*!40000 ALTER TABLE `ACCESSEVENTTYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACCESSEVENTTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ADDRESS`
--

DROP TABLE IF EXISTS `ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADDRESS` (
  `ID` int(11) NOT NULL,
  `ALLOCATION` varchar(255) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DEFAULTGATEWAY` varchar(255) DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `HOSTNAME` varchar(255) DEFAULT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `MASK` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `NETWORK_ID` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `RESOURCE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ADDRESS_RESOURCE_ID` (`RESOURCE_ID`),
  KEY `FK_ADDRESS_NETWORK_ID` (`NETWORK_ID`),
  KEY `FK_ADDRESS_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_ADDRESS_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`),
  CONSTRAINT `FK_ADDRESS_NETWORK_ID` FOREIGN KEY (`NETWORK_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_ADDRESS_RESOURCE_ID` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADDRESS`
--

LOCK TABLES `ADDRESS` WRITE;
/*!40000 ALTER TABLE `ADDRESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ADDRESSTEMPLATE`
--

DROP TABLE IF EXISTS `ADDRESSTEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADDRESSTEMPLATE` (
  `ID` int(11) NOT NULL,
  `ALLOCATION` varchar(255) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DEFAULTGATEWAY` varchar(255) DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `HOSTNAME` varchar(255) DEFAULT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `MASK` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `NETWORK_ID` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ADDRESSTEMPLATE_NETWORK_ID` (`NETWORK_ID`),
  KEY `FK_ADDRESSTEMPLATE_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_ADDRESSTEMPLATE_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`),
  CONSTRAINT `FK_ADDRESSTEMPLATE_NETWORK_ID` FOREIGN KEY (`NETWORK_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADDRESSTEMPLATE`
--

LOCK TABLES `ADDRESSTEMPLATE` WRITE;
/*!40000 ALTER TABLE `ADDRESSTEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADDRESSTEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ALARMEVENTTYPE`
--

DROP TABLE IF EXISTS `ALARMEVENTTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALARMEVENTTYPE` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_ALARMEVENTTYPE_ID` FOREIGN KEY (`ID`) REFERENCES `EVENTTYPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALARMEVENTTYPE`
--

LOCK TABLES `ALARMEVENTTYPE` WRITE;
/*!40000 ALTER TABLE `ALARMEVENTTYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ALARMEVENTTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AddressTemplate_DNS`
--

DROP TABLE IF EXISTS `AddressTemplate_DNS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AddressTemplate_DNS` (
  `AddressTemplate_ID` int(11) DEFAULT NULL,
  `DNS` varchar(255) DEFAULT NULL,
  KEY `FK_AddressTemplate_DNS_AddressTemplate_ID` (`AddressTemplate_ID`),
  CONSTRAINT `FK_AddressTemplate_DNS_AddressTemplate_ID` FOREIGN KEY (`AddressTemplate_ID`) REFERENCES `ADDRESSTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AddressTemplate_DNS`
--

LOCK TABLES `AddressTemplate_DNS` WRITE;
/*!40000 ALTER TABLE `AddressTemplate_DNS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AddressTemplate_DNS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AddressTemplate_PROPERTIES`
--

DROP TABLE IF EXISTS `AddressTemplate_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AddressTemplate_PROPERTIES` (
  `AddressTemplate_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_AddressTemplate_PROPERTIES_AddressTemplate_ID` (`AddressTemplate_ID`),
  CONSTRAINT `FK_AddressTemplate_PROPERTIES_AddressTemplate_ID` FOREIGN KEY (`AddressTemplate_ID`) REFERENCES `ADDRESSTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AddressTemplate_PROPERTIES`
--

LOCK TABLES `AddressTemplate_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `AddressTemplate_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `AddressTemplate_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Address_DNS`
--

DROP TABLE IF EXISTS `Address_DNS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address_DNS` (
  `Address_ID` int(11) DEFAULT NULL,
  `DNS` varchar(255) DEFAULT NULL,
  KEY `FK_Address_DNS_Address_ID` (`Address_ID`),
  CONSTRAINT `FK_Address_DNS_Address_ID` FOREIGN KEY (`Address_ID`) REFERENCES `ADDRESS` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address_DNS`
--

LOCK TABLES `Address_DNS` WRITE;
/*!40000 ALTER TABLE `Address_DNS` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address_DNS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Address_PROPERTIES`
--

DROP TABLE IF EXISTS `Address_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address_PROPERTIES` (
  `Address_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_Address_PROPERTIES_Address_ID` (`Address_ID`),
  CONSTRAINT `FK_Address_PROPERTIES_Address_ID` FOREIGN KEY (`Address_ID`) REFERENCES `ADDRESS` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address_PROPERTIES`
--

LOCK TABLES `Address_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `Address_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLOUDCOLLECTIONITEM`
--

DROP TABLE IF EXISTS `CLOUDCOLLECTIONITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOUDCOLLECTIONITEM` (
  `ID` int(11) NOT NULL,
  `DTYPE` varchar(31) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `cloudcoll_ent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CLOUDCOLLECTIONITEM_cloudcoll_ent_id` (`cloudcoll_ent_id`),
  CONSTRAINT `FK_CLOUDCOLLECTIONITEM_cloudcoll_ent_id` FOREIGN KEY (`cloudcoll_ent_id`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOUDCOLLECTIONITEM`
--

LOCK TABLES `CLOUDCOLLECTIONITEM` WRITE;
/*!40000 ALTER TABLE `CLOUDCOLLECTIONITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLOUDCOLLECTIONITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLOUDENTRYPOINT`
--

DROP TABLE IF EXISTS `CLOUDENTRYPOINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOUDENTRYPOINT` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CLOUDENTRYPOINT_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_CLOUDENTRYPOINT_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOUDENTRYPOINT`
--

LOCK TABLES `CLOUDENTRYPOINT` WRITE;
/*!40000 ALTER TABLE `CLOUDENTRYPOINT` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLOUDENTRYPOINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLOUDPROVIDER`
--

DROP TABLE IF EXISTS `CLOUDPROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOUDPROVIDER` (
  `ID` int(11) NOT NULL,
  `CLOUDPROVIDERTYPE` varchar(255) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ENDPOINT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOUDPROVIDER`
--

LOCK TABLES `CLOUDPROVIDER` WRITE;
/*!40000 ALTER TABLE `CLOUDPROVIDER` DISABLE KEYS */;
INSERT INTO `CLOUDPROVIDER` VALUES (7,'amazon','2013-10-17 23:18:41','Amazon EC2 Service','');
/*!40000 ALTER TABLE `CLOUDPROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLOUDPROVIDERACCOUNT`
--

DROP TABLE IF EXISTS `CLOUDPROVIDERACCOUNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOUDPROVIDERACCOUNT` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LOGIN` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `CLOUDPROVIDER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CLOUDPROVIDERACCOUNT_CLOUDPROVIDER_ID` (`CLOUDPROVIDER_ID`),
  CONSTRAINT `FK_CLOUDPROVIDERACCOUNT_CLOUDPROVIDER_ID` FOREIGN KEY (`CLOUDPROVIDER_ID`) REFERENCES `CLOUDPROVIDER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOUDPROVIDERACCOUNT`
--

LOCK TABLES `CLOUDPROVIDERACCOUNT` WRITE;
/*!40000 ALTER TABLE `CLOUDPROVIDERACCOUNT` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLOUDPROVIDERACCOUNT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLOUDPROVIDERACCOUNT_TENANT`
--

DROP TABLE IF EXISTS `CLOUDPROVIDERACCOUNT_TENANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOUDPROVIDERACCOUNT_TENANT` (
  `cloudProviderAccounts_ID` int(11) NOT NULL,
  `tenants_ID` int(11) NOT NULL,
  PRIMARY KEY (`cloudProviderAccounts_ID`,`tenants_ID`),
  KEY `FK_CLOUDPROVIDERACCOUNT_TENANT_tenants_ID` (`tenants_ID`),
  CONSTRAINT `CLOUDPROVIDERACCOUNTTENANTcloudProviderAccounts_ID` FOREIGN KEY (`cloudProviderAccounts_ID`) REFERENCES `CLOUDPROVIDERACCOUNT` (`ID`),
  CONSTRAINT `FK_CLOUDPROVIDERACCOUNT_TENANT_tenants_ID` FOREIGN KEY (`tenants_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOUDPROVIDERACCOUNT_TENANT`
--

LOCK TABLES `CLOUDPROVIDERACCOUNT_TENANT` WRITE;
/*!40000 ALTER TABLE `CLOUDPROVIDERACCOUNT_TENANT` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLOUDPROVIDERACCOUNT_TENANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLOUDPROVIDERLOCATION`
--

DROP TABLE IF EXISTS `CLOUDPROVIDERLOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOUDPROVIDERLOCATION` (
  `ID` int(11) NOT NULL,
  `gps_altitude` double DEFAULT NULL,
  `gps_latitude` double DEFAULT NULL,
  `gps_longitude` double DEFAULT NULL,
  `CITYNAME` varchar(255) DEFAULT NULL,
  `COUNTRYNAME` varchar(255) DEFAULT NULL,
  `iso3166_1` varchar(255) DEFAULT NULL,
  `iso3166_2` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `STATENAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UNQ_CLOUDPROVIDERLOCATION_0` (`iso3166_1`,`iso3166_2`,`postal_code`),
  UNIQUE KEY `UNQ_CLOUDPROVIDERLOCATION_1` (`gps_latitude`,`gps_longitude`,`gps_altitude`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOUDPROVIDERLOCATION`
--

LOCK TABLES `CLOUDPROVIDERLOCATION` WRITE;
/*!40000 ALTER TABLE `CLOUDPROVIDERLOCATION` DISABLE KEYS */;
INSERT INTO `CLOUDPROVIDERLOCATION` VALUES (8,NULL,NULL,NULL,NULL,'USA','US','US-CA',NULL,'California'),(9,NULL,NULL,NULL,NULL,'Ireland','IE',NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,'USA','US','US-VA',NULL,'Virginia'),(11,NULL,NULL,NULL,NULL,'Singapore','SG',NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,'Japan','JP','JP-13',NULL,'Tokyo'),(13,NULL,NULL,NULL,NULL,'Brazil','BR','BR-SP',NULL,'Sao Paulo'),(14,NULL,NULL,NULL,NULL,'Australia','AU','AU-NSW',NULL,'Sydney'),(15,NULL,NULL,NULL,NULL,'USA','US','US-OR',NULL,'Oregon');
/*!40000 ALTER TABLE `CLOUDPROVIDERLOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLOUDPROVIDERLOCATION_CLOUDPROVIDER`
--

DROP TABLE IF EXISTS `CLOUDPROVIDERLOCATION_CLOUDPROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOUDPROVIDERLOCATION_CLOUDPROVIDER` (
  `cloudProviders_ID` int(11) NOT NULL,
  `cloudProviderLocations_ID` int(11) NOT NULL,
  PRIMARY KEY (`cloudProviders_ID`,`cloudProviderLocations_ID`),
  KEY `CLDPRVDERLOCATIONCLOUDPROVIDERcldPrvderLocationsID` (`cloudProviderLocations_ID`),
  CONSTRAINT `CLDPRVDERLOCATIONCLOUDPROVIDERcldPrvderLocationsID` FOREIGN KEY (`cloudProviderLocations_ID`) REFERENCES `CLOUDPROVIDERLOCATION` (`ID`),
  CONSTRAINT `CLOUDPROVIDERLOCATIONCLOUDPROVIDERcloudProvidersID` FOREIGN KEY (`cloudProviders_ID`) REFERENCES `CLOUDPROVIDER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOUDPROVIDERLOCATION_CLOUDPROVIDER`
--

LOCK TABLES `CLOUDPROVIDERLOCATION_CLOUDPROVIDER` WRITE;
/*!40000 ALTER TABLE `CLOUDPROVIDERLOCATION_CLOUDPROVIDER` DISABLE KEYS */;
INSERT INTO `CLOUDPROVIDERLOCATION_CLOUDPROVIDER` VALUES (7,8),(7,9),(7,10),(7,11),(7,12),(7,13),(7,14),(7,15);
/*!40000 ALTER TABLE `CLOUDPROVIDERLOCATION_CLOUDPROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLOUDPROVIDERPROFILE`
--

DROP TABLE IF EXISTS `CLOUDPROVIDERPROFILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOUDPROVIDERPROFILE` (
  `ID` int(11) NOT NULL,
  `CONNECTORCLASS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOUDPROVIDERPROFILE`
--

LOCK TABLES `CLOUDPROVIDERPROFILE` WRITE;
/*!40000 ALTER TABLE `CLOUDPROVIDERPROFILE` DISABLE KEYS */;
INSERT INTO `CLOUDPROVIDERPROFILE` VALUES (3,'org.ow2.sirocco.cloudmanager.connector.mock.MockCloudProviderConnector','Mock provider','mock'),(4,'org.ow2.sirocco.cloudmanager.connector.openstack.OpenStackCloudProviderConnector','OpenStack (Grizzly or higher version required)','openstack'),(5,'org.ow2.sirocco.cloudmanager.connector.vcd.VcdCloudProviderConnector','VMware vCloud Director (version 5.1 or higher required)','vcloud'),(6,'org.ow2.sirocco.cloudmanager.connector.amazon.AmazonCloudProviderConnector','Amazon EC2','amazon');
/*!40000 ALTER TABLE `CLOUDPROVIDERPROFILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLOUDRESOURCE`
--

DROP TABLE IF EXISTS `CLOUDRESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOUDRESOURCE` (
  `ID` int(11) NOT NULL,
  `DTYPE` varchar(31) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CLOUDRESOURCE_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_CLOUDRESOURCE_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOUDRESOURCE`
--

LOCK TABLES `CLOUDRESOURCE` WRITE;
/*!40000 ALTER TABLE `CLOUDRESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLOUDRESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLOUDTEMPLATE`
--

DROP TABLE IF EXISTS `CLOUDTEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOUDTEMPLATE` (
  `ID` int(11) NOT NULL,
  `DTYPE` varchar(31) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ISEMBEDDEDINSYSTEMTEMPLATE` tinyint(1) DEFAULT '0',
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `VISIBILITY` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CLOUDTEMPLATE_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_CLOUDTEMPLATE_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOUDTEMPLATE`
--

LOCK TABLES `CLOUDTEMPLATE` WRITE;
/*!40000 ALTER TABLE `CLOUDTEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLOUDTEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENTDESCRIPTOR`
--

DROP TABLE IF EXISTS `COMPONENTDESCRIPTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPONENTDESCRIPTOR` (
  `ID` int(11) NOT NULL,
  `COMPONENTQUANTITY` int(11) DEFAULT NULL,
  `COMPONENTTYPE` int(11) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `comp_desc_id` int(11) DEFAULT NULL,
  `system_temp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPONENTDESCRIPTOR_TENANT_ID` (`TENANT_ID`),
  KEY `FK_COMPONENTDESCRIPTOR_system_temp_id` (`system_temp_id`),
  KEY `FK_COMPONENTDESCRIPTOR_comp_desc_id` (`comp_desc_id`),
  CONSTRAINT `FK_COMPONENTDESCRIPTOR_comp_desc_id` FOREIGN KEY (`comp_desc_id`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_COMPONENTDESCRIPTOR_system_temp_id` FOREIGN KEY (`system_temp_id`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_COMPONENTDESCRIPTOR_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENTDESCRIPTOR`
--

LOCK TABLES `COMPONENTDESCRIPTOR` WRITE;
/*!40000 ALTER TABLE `COMPONENTDESCRIPTOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `COMPONENTDESCRIPTOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONSTRAINTGROUP`
--

DROP TABLE IF EXISTS `CONSTRAINTGROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CONSTRAINTGROUP` (
  `ID` int(11) NOT NULL,
  `ATTRIBUTE` varchar(255) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `OPERATOR` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONSTRAINTGROUP`
--

LOCK TABLES `CONSTRAINTGROUP` WRITE;
/*!40000 ALTER TABLE `CONSTRAINTGROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `CONSTRAINTGROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIALS`
--

DROP TABLE IF EXISTS `CREDENTIALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CREDENTIALS` (
  `ID` int(11) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PUBLICKEY` longtext,
  `USERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_CREDENTIALS_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDENTIALS`
--

LOCK TABLES `CREDENTIALS` WRITE;
/*!40000 ALTER TABLE `CREDENTIALS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CREDENTIALS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIALSTEMPLATE`
--

DROP TABLE IF EXISTS `CREDENTIALSTEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CREDENTIALSTEMPLATE` (
  `ID` int(11) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PUBLICKEY` longtext,
  `USERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_CREDENTIALSTEMPLATE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDENTIALSTEMPLATE`
--

LOCK TABLES `CREDENTIALSTEMPLATE` WRITE;
/*!40000 ALTER TABLE `CREDENTIALSTEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CREDENTIALSTEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CloudCollectionItem_PROPERTIES`
--

DROP TABLE IF EXISTS `CloudCollectionItem_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CloudCollectionItem_PROPERTIES` (
  `CloudCollectionItem_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `CloudCollectionItemPROPERTIESCloudCollectionItemID` (`CloudCollectionItem_ID`),
  CONSTRAINT `CloudCollectionItemPROPERTIESCloudCollectionItemID` FOREIGN KEY (`CloudCollectionItem_ID`) REFERENCES `CLOUDCOLLECTIONITEM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CloudCollectionItem_PROPERTIES`
--

LOCK TABLES `CloudCollectionItem_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `CloudCollectionItem_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CloudCollectionItem_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CloudEntryPoint_PROPERTIES`
--

DROP TABLE IF EXISTS `CloudEntryPoint_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CloudEntryPoint_PROPERTIES` (
  `CloudEntryPoint_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_CloudEntryPoint_PROPERTIES_CloudEntryPoint_ID` (`CloudEntryPoint_ID`),
  CONSTRAINT `FK_CloudEntryPoint_PROPERTIES_CloudEntryPoint_ID` FOREIGN KEY (`CloudEntryPoint_ID`) REFERENCES `CLOUDENTRYPOINT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CloudEntryPoint_PROPERTIES`
--

LOCK TABLES `CloudEntryPoint_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `CloudEntryPoint_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CloudEntryPoint_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CloudProviderAccount_PROPERTIES`
--

DROP TABLE IF EXISTS `CloudProviderAccount_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CloudProviderAccount_PROPERTIES` (
  `CloudProviderAccount_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `CludProviderAccountPROPERTIESCludProviderAccountID` (`CloudProviderAccount_ID`),
  CONSTRAINT `CludProviderAccountPROPERTIESCludProviderAccountID` FOREIGN KEY (`CloudProviderAccount_ID`) REFERENCES `CLOUDPROVIDERACCOUNT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CloudProviderAccount_PROPERTIES`
--

LOCK TABLES `CloudProviderAccount_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `CloudProviderAccount_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CloudProviderAccount_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CloudProviderProfile_ACCOUNTPARAMETERS`
--

DROP TABLE IF EXISTS `CloudProviderProfile_ACCOUNTPARAMETERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CloudProviderProfile_ACCOUNTPARAMETERS` (
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REQUIRED` tinyint(1) DEFAULT '0',
  `TYPE` varchar(255) DEFAULT NULL,
  `CloudProviderProfile_ID` int(11) DEFAULT NULL,
  KEY `CldPrvdrProfileACCOUNTPARAMETERSCldPrvderProfileID` (`CloudProviderProfile_ID`),
  CONSTRAINT `CldPrvdrProfileACCOUNTPARAMETERSCldPrvderProfileID` FOREIGN KEY (`CloudProviderProfile_ID`) REFERENCES `CLOUDPROVIDERPROFILE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CloudProviderProfile_ACCOUNTPARAMETERS`
--

LOCK TABLES `CloudProviderProfile_ACCOUNTPARAMETERS` WRITE;
/*!40000 ALTER TABLE `CloudProviderProfile_ACCOUNTPARAMETERS` DISABLE KEYS */;
INSERT INTO `CloudProviderProfile_ACCOUNTPARAMETERS` VALUES ('endpoint','Keystone API endpoint','provider.endpoint',1,'String',4),('login','User name','account.username',1,'String',4),('password','Password','account.password',1,'String',4),('','Tenant name','tenantName',1,'String',4),('','Name of public network','publicNetworkName',1,'String',4),('endpoint','vCloud URL','provider.endpoint',1,'String',5),('login','User name','account.username',1,'String',5),('password','Password','account.password',1,'String',5),('','Name of the organization','orgName',1,'String',5),('','Name of a VDC','vdcName',1,'String',5),('','Name of public organization network','publicNetworkName',1,'String',5),('login','AWS Access Key ID','account.username',1,'String',6),('password','AWS Secret Key','account.password',1,'String',6);
/*!40000 ALTER TABLE `CloudProviderProfile_ACCOUNTPARAMETERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CloudProvider_PROPERTIES`
--

DROP TABLE IF EXISTS `CloudProvider_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CloudProvider_PROPERTIES` (
  `CloudProvider_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_CloudProvider_PROPERTIES_CloudProvider_ID` (`CloudProvider_ID`),
  CONSTRAINT `FK_CloudProvider_PROPERTIES_CloudProvider_ID` FOREIGN KEY (`CloudProvider_ID`) REFERENCES `CLOUDPROVIDER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CloudProvider_PROPERTIES`
--

LOCK TABLES `CloudProvider_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `CloudProvider_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CloudProvider_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CloudResource_PROPERTIES`
--

DROP TABLE IF EXISTS `CloudResource_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CloudResource_PROPERTIES` (
  `CloudResource_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_CloudResource_PROPERTIES_CloudResource_ID` (`CloudResource_ID`),
  CONSTRAINT `FK_CloudResource_PROPERTIES_CloudResource_ID` FOREIGN KEY (`CloudResource_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CloudResource_PROPERTIES`
--

LOCK TABLES `CloudResource_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `CloudResource_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CloudResource_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CloudTemplate_PROPERTIES`
--

DROP TABLE IF EXISTS `CloudTemplate_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CloudTemplate_PROPERTIES` (
  `CloudTemplate_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_CloudTemplate_PROPERTIES_CloudTemplate_ID` (`CloudTemplate_ID`),
  CONSTRAINT `FK_CloudTemplate_PROPERTIES_CloudTemplate_ID` FOREIGN KEY (`CloudTemplate_ID`) REFERENCES `CLOUDTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CloudTemplate_PROPERTIES`
--

LOCK TABLES `CloudTemplate_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `CloudTemplate_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CloudTemplate_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComponentDescriptor_PROPERTIES`
--

DROP TABLE IF EXISTS `ComponentDescriptor_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComponentDescriptor_PROPERTIES` (
  `ComponentDescriptor_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `ComponentDescriptorPROPERTIESComponentDescriptorID` (`ComponentDescriptor_ID`),
  CONSTRAINT `ComponentDescriptorPROPERTIESComponentDescriptorID` FOREIGN KEY (`ComponentDescriptor_ID`) REFERENCES `COMPONENTDESCRIPTOR` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentDescriptor_PROPERTIES`
--

LOCK TABLES `ComponentDescriptor_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `ComponentDescriptor_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComponentDescriptor_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConstraintGroup_PROPERTIES`
--

DROP TABLE IF EXISTS `ConstraintGroup_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConstraintGroup_PROPERTIES` (
  `ConstraintGroup_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_ConstraintGroup_PROPERTIES_ConstraintGroup_ID` (`ConstraintGroup_ID`),
  CONSTRAINT `FK_ConstraintGroup_PROPERTIES_ConstraintGroup_ID` FOREIGN KEY (`ConstraintGroup_ID`) REFERENCES `CONSTRAINTGROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConstraintGroup_PROPERTIES`
--

LOCK TABLES `ConstraintGroup_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `ConstraintGroup_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConstraintGroup_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT`
--

DROP TABLE IF EXISTS `EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT` (
  `ID` int(11) NOT NULL,
  `CONTACT` varchar(255) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `OUTCOME` int(11) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `SEVERITY` int(11) DEFAULT NULL,
  `TIMESTAMP` datetime DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `CONTENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_EVENT_CONTENT_ID` (`CONTENT_ID`),
  KEY `FK_EVENT_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_EVENT_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`),
  CONSTRAINT `FK_EVENT_CONTENT_ID` FOREIGN KEY (`CONTENT_ID`) REFERENCES `EVENTTYPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT`
--

LOCK TABLES `EVENT` WRITE;
/*!40000 ALTER TABLE `EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENTLOG`
--

DROP TABLE IF EXISTS `EVENTLOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENTLOG` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PERSISTENCE` int(11) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `CRITICAL` int(11) DEFAULT NULL,
  `HIGH` int(11) DEFAULT NULL,
  `LOW` int(11) DEFAULT NULL,
  `MEDIUM` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `TARGETRESOURCE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_EVENTLOG_TENANT_ID` (`TENANT_ID`),
  KEY `FK_EVENTLOG_TARGETRESOURCE_ID` (`TARGETRESOURCE_ID`),
  CONSTRAINT `FK_EVENTLOG_TARGETRESOURCE_ID` FOREIGN KEY (`TARGETRESOURCE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_EVENTLOG_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENTLOG`
--

LOCK TABLES `EVENTLOG` WRITE;
/*!40000 ALTER TABLE `EVENTLOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENTLOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENTLOGTEMPLATE`
--

DROP TABLE IF EXISTS `EVENTLOGTEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENTLOGTEMPLATE` (
  `ID` int(11) NOT NULL,
  `PERSISTENCE` int(11) DEFAULT NULL,
  `TARGETRESOURCE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_EVENTLOGTEMPLATE_TARGETRESOURCE_ID` (`TARGETRESOURCE_ID`),
  CONSTRAINT `FK_EVENTLOGTEMPLATE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_EVENTLOGTEMPLATE_TARGETRESOURCE_ID` FOREIGN KEY (`TARGETRESOURCE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENTLOGTEMPLATE`
--

LOCK TABLES `EVENTLOGTEMPLATE` WRITE;
/*!40000 ALTER TABLE `EVENTLOGTEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENTLOGTEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENTLOG_EVENT`
--

DROP TABLE IF EXISTS `EVENTLOG_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENTLOG_EVENT` (
  `EventLog_ID` int(11) NOT NULL,
  `events_ID` int(11) NOT NULL,
  PRIMARY KEY (`EventLog_ID`,`events_ID`),
  KEY `FK_EVENTLOG_EVENT_events_ID` (`events_ID`),
  CONSTRAINT `FK_EVENTLOG_EVENT_events_ID` FOREIGN KEY (`events_ID`) REFERENCES `EVENT` (`ID`),
  CONSTRAINT `FK_EVENTLOG_EVENT_EventLog_ID` FOREIGN KEY (`EventLog_ID`) REFERENCES `EVENTLOG` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENTLOG_EVENT`
--

LOCK TABLES `EVENTLOG_EVENT` WRITE;
/*!40000 ALTER TABLE `EVENTLOG_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENTLOG_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENTTYPE`
--

DROP TABLE IF EXISTS `EVENTTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENTTYPE` (
  `ID` int(11) NOT NULL,
  `DTYPE` varchar(31) DEFAULT NULL,
  `DETAIL` varchar(255) DEFAULT NULL,
  `RESNAME` varchar(255) DEFAULT NULL,
  `RESTYPE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_EVENTTYPE_RESOURCE_ID` (`RESOURCE_ID`),
  CONSTRAINT `FK_EVENTTYPE_RESOURCE_ID` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENTTYPE`
--

LOCK TABLES `EVENTTYPE` WRITE;
/*!40000 ALTER TABLE `EVENTTYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENTTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EventLog_PROPERTIES`
--

DROP TABLE IF EXISTS `EventLog_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EventLog_PROPERTIES` (
  `EventLog_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_EventLog_PROPERTIES_EventLog_ID` (`EventLog_ID`),
  CONSTRAINT `FK_EventLog_PROPERTIES_EventLog_ID` FOREIGN KEY (`EventLog_ID`) REFERENCES `EVENTLOG` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventLog_PROPERTIES`
--

LOCK TABLES `EventLog_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `EventLog_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `EventLog_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_PROPERTIES`
--

DROP TABLE IF EXISTS `Event_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_PROPERTIES` (
  `Event_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_Event_PROPERTIES_Event_ID` (`Event_ID`),
  CONSTRAINT `FK_Event_PROPERTIES_Event_ID` FOREIGN KEY (`Event_ID`) REFERENCES `EVENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_PROPERTIES`
--

LOCK TABLES `Event_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `Event_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FORWARDINGGROUP`
--

DROP TABLE IF EXISTS `FORWARDINGGROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FORWARDINGGROUP` (
  `ID` int(11) NOT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CLOUDPROVIDERACCOUNT_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_FORWARDINGGROUP_LOCATION_ID` (`LOCATION_ID`),
  KEY `FK_FORWARDINGGROUP_CLOUDPROVIDERACCOUNT_ID` (`CLOUDPROVIDERACCOUNT_ID`),
  CONSTRAINT `FK_FORWARDINGGROUP_CLOUDPROVIDERACCOUNT_ID` FOREIGN KEY (`CLOUDPROVIDERACCOUNT_ID`) REFERENCES `CLOUDPROVIDERACCOUNT` (`ID`),
  CONSTRAINT `FK_FORWARDINGGROUP_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_FORWARDINGGROUP_LOCATION_ID` FOREIGN KEY (`LOCATION_ID`) REFERENCES `CLOUDPROVIDERLOCATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FORWARDINGGROUP`
--

LOCK TABLES `FORWARDINGGROUP` WRITE;
/*!40000 ALTER TABLE `FORWARDINGGROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `FORWARDINGGROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FORWARDINGGROUPNETWORK`
--

DROP TABLE IF EXISTS `FORWARDINGGROUPNETWORK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FORWARDINGGROUPNETWORK` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `NETWORK_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_FORWARDINGGROUPNETWORK_TENANT_ID` (`TENANT_ID`),
  KEY `FK_FORWARDINGGROUPNETWORK_NETWORK_ID` (`NETWORK_ID`),
  CONSTRAINT `FK_FORWARDINGGROUPNETWORK_NETWORK_ID` FOREIGN KEY (`NETWORK_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_FORWARDINGGROUPNETWORK_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FORWARDINGGROUPNETWORK`
--

LOCK TABLES `FORWARDINGGROUPNETWORK` WRITE;
/*!40000 ALTER TABLE `FORWARDINGGROUPNETWORK` DISABLE KEYS */;
/*!40000 ALTER TABLE `FORWARDINGGROUPNETWORK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FORWARDINGGROUPTEMPLATE`
--

DROP TABLE IF EXISTS `FORWARDINGGROUPTEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FORWARDINGGROUPTEMPLATE` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_FORWARDINGGROUPTEMPLATE_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_FORWARDINGGROUPTEMPLATE_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FORWARDINGGROUPTEMPLATE`
--

LOCK TABLES `FORWARDINGGROUPTEMPLATE` WRITE;
/*!40000 ALTER TABLE `FORWARDINGGROUPTEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FORWARDINGGROUPTEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FORWARDINGGROUPTEMPLATE_NETWORK`
--

DROP TABLE IF EXISTS `FORWARDINGGROUPTEMPLATE_NETWORK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FORWARDINGGROUPTEMPLATE_NETWORK` (
  `ForwardingGroupTemplate_ID` int(11) NOT NULL,
  `networks_ID` int(11) NOT NULL,
  PRIMARY KEY (`ForwardingGroupTemplate_ID`,`networks_ID`),
  KEY `FK_FORWARDINGGROUPTEMPLATE_NETWORK_networks_ID` (`networks_ID`),
  CONSTRAINT `FK_FORWARDINGGROUPTEMPLATE_NETWORK_networks_ID` FOREIGN KEY (`networks_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FRWRDNGGROUPTEMPLATENETWORKFrwrdingGroupTemplateID` FOREIGN KEY (`ForwardingGroupTemplate_ID`) REFERENCES `FORWARDINGGROUPTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FORWARDINGGROUPTEMPLATE_NETWORK`
--

LOCK TABLES `FORWARDINGGROUPTEMPLATE_NETWORK` WRITE;
/*!40000 ALTER TABLE `FORWARDINGGROUPTEMPLATE_NETWORK` DISABLE KEYS */;
/*!40000 ALTER TABLE `FORWARDINGGROUPTEMPLATE_NETWORK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FORWARDINGGROUP_FORWARDINGGROUPNETWORK`
--

DROP TABLE IF EXISTS `FORWARDINGGROUP_FORWARDINGGROUPNETWORK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FORWARDINGGROUP_FORWARDINGGROUPNETWORK` (
  `ForwardingGroup_ID` int(11) NOT NULL,
  `networks_ID` int(11) NOT NULL,
  PRIMARY KEY (`ForwardingGroup_ID`,`networks_ID`),
  KEY `FORWARDINGGROUP_FORWARDINGGROUPNETWORK_networks_ID` (`networks_ID`),
  CONSTRAINT `FRWRDINGGROUPFORWARDINGGROUPNETWORKFrwrdingGroupID` FOREIGN KEY (`ForwardingGroup_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FORWARDINGGROUP_FORWARDINGGROUPNETWORK_networks_ID` FOREIGN KEY (`networks_ID`) REFERENCES `FORWARDINGGROUPNETWORK` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FORWARDINGGROUP_FORWARDINGGROUPNETWORK`
--

LOCK TABLES `FORWARDINGGROUP_FORWARDINGGROUPNETWORK` WRITE;
/*!40000 ALTER TABLE `FORWARDINGGROUP_FORWARDINGGROUPNETWORK` DISABLE KEYS */;
/*!40000 ALTER TABLE `FORWARDINGGROUP_FORWARDINGGROUPNETWORK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ForwardingGroupNetwork_PROPERTIES`
--

DROP TABLE IF EXISTS `ForwardingGroupNetwork_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ForwardingGroupNetwork_PROPERTIES` (
  `ForwardingGroupNetwork_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FrwrdngGroupNetworkPROPERTIESFrwrdngGroupNetworkID` (`ForwardingGroupNetwork_ID`),
  CONSTRAINT `FrwrdngGroupNetworkPROPERTIESFrwrdngGroupNetworkID` FOREIGN KEY (`ForwardingGroupNetwork_ID`) REFERENCES `FORWARDINGGROUPNETWORK` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ForwardingGroupNetwork_PROPERTIES`
--

LOCK TABLES `ForwardingGroupNetwork_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `ForwardingGroupNetwork_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `ForwardingGroupNetwork_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ForwardingGroupTemplate_PROPERTIES`
--

DROP TABLE IF EXISTS `ForwardingGroupTemplate_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ForwardingGroupTemplate_PROPERTIES` (
  `ForwardingGroupTemplate_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FrwrdngGrupTemplatePROPERTIESFrwrdngGrupTemplateID` (`ForwardingGroupTemplate_ID`),
  CONSTRAINT `FrwrdngGrupTemplatePROPERTIESFrwrdngGrupTemplateID` FOREIGN KEY (`ForwardingGroupTemplate_ID`) REFERENCES `FORWARDINGGROUPTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ForwardingGroupTemplate_PROPERTIES`
--

LOCK TABLES `ForwardingGroupTemplate_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `ForwardingGroupTemplate_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `ForwardingGroupTemplate_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JOB`
--

DROP TABLE IF EXISTS `JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JOB` (
  `ID` int(11) NOT NULL,
  `ACTION` varchar(255) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ISCANCELLABLE` tinyint(1) DEFAULT '0',
  `NAME` varchar(255) DEFAULT NULL,
  `PROGRESS` int(11) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `RETURNCODE` int(11) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `STATUSMESSAGE` varchar(255) DEFAULT NULL,
  `TIMEOFSTATUSCHANGE` datetime DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `PARENTJOB_ID` int(11) DEFAULT NULL,
  `TARGETRESOURCE_ID` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_JOB_TENANT_ID` (`TENANT_ID`),
  KEY `FK_JOB_TARGETRESOURCE_ID` (`TARGETRESOURCE_ID`),
  KEY `FK_JOB_PARENTJOB_ID` (`PARENTJOB_ID`),
  KEY `FK_JOB_LOCATION_ID` (`LOCATION_ID`),
  CONSTRAINT `FK_JOB_LOCATION_ID` FOREIGN KEY (`LOCATION_ID`) REFERENCES `CLOUDPROVIDERLOCATION` (`ID`),
  CONSTRAINT `FK_JOB_PARENTJOB_ID` FOREIGN KEY (`PARENTJOB_ID`) REFERENCES `JOB` (`ID`),
  CONSTRAINT `FK_JOB_TARGETRESOURCE_ID` FOREIGN KEY (`TARGETRESOURCE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_JOB_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JOB`
--

LOCK TABLES `JOB` WRITE;
/*!40000 ALTER TABLE `JOB` DISABLE KEYS */;
/*!40000 ALTER TABLE `JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JOB_CLOUDRESOURCE`
--

DROP TABLE IF EXISTS `JOB_CLOUDRESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JOB_CLOUDRESOURCE` (
  `Job_ID` int(11) NOT NULL,
  `affectedResources_ID` int(11) NOT NULL,
  PRIMARY KEY (`Job_ID`,`affectedResources_ID`),
  KEY `FK_JOB_CLOUDRESOURCE_affectedResources_ID` (`affectedResources_ID`),
  CONSTRAINT `FK_JOB_CLOUDRESOURCE_affectedResources_ID` FOREIGN KEY (`affectedResources_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_JOB_CLOUDRESOURCE_Job_ID` FOREIGN KEY (`Job_ID`) REFERENCES `JOB` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JOB_CLOUDRESOURCE`
--

LOCK TABLES `JOB_CLOUDRESOURCE` WRITE;
/*!40000 ALTER TABLE `JOB_CLOUDRESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `JOB_CLOUDRESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Job_PROPERTIES`
--

DROP TABLE IF EXISTS `Job_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Job_PROPERTIES` (
  `Job_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_Job_PROPERTIES_Job_ID` (`Job_ID`),
  CONSTRAINT `FK_Job_PROPERTIES_Job_ID` FOREIGN KEY (`Job_ID`) REFERENCES `JOB` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job_PROPERTIES`
--

LOCK TABLES `Job_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `Job_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `Job_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINE`
--

DROP TABLE IF EXISTS `MACHINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINE` (
  `ID` int(11) NOT NULL,
  `CPU` int(11) DEFAULT NULL,
  `MEMORY` int(11) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CLOUDPROVIDERACCOUNT_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MACHINE_CLOUDPROVIDERACCOUNT_ID` (`CLOUDPROVIDERACCOUNT_ID`),
  KEY `FK_MACHINE_LOCATION_ID` (`LOCATION_ID`),
  CONSTRAINT `FK_MACHINE_LOCATION_ID` FOREIGN KEY (`LOCATION_ID`) REFERENCES `CLOUDPROVIDERLOCATION` (`ID`),
  CONSTRAINT `FK_MACHINE_CLOUDPROVIDERACCOUNT_ID` FOREIGN KEY (`CLOUDPROVIDERACCOUNT_ID`) REFERENCES `CLOUDPROVIDERACCOUNT` (`ID`),
  CONSTRAINT `FK_MACHINE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINE`
--

LOCK TABLES `MACHINE` WRITE;
/*!40000 ALTER TABLE `MACHINE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINECONFIGURATION`
--

DROP TABLE IF EXISTS `MACHINECONFIGURATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINECONFIGURATION` (
  `ID` int(11) NOT NULL,
  `CPU` int(11) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MEMORY` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `VISIBILITY` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MACHINECONFIGURATION_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_MACHINECONFIGURATION_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINECONFIGURATION`
--

LOCK TABLES `MACHINECONFIGURATION` WRITE;
/*!40000 ALTER TABLE `MACHINECONFIGURATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINECONFIGURATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINEDISK`
--

DROP TABLE IF EXISTS `MACHINEDISK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINEDISK` (
  `ID` int(11) NOT NULL,
  `CAPACITY` int(11) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `INITIALLOCATION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MACHINEDISK_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_MACHINEDISK_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINEDISK`
--

LOCK TABLES `MACHINEDISK` WRITE;
/*!40000 ALTER TABLE `MACHINEDISK` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINEDISK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINEIMAGE`
--

DROP TABLE IF EXISTS `MACHINEIMAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINEIMAGE` (
  `ID` int(11) NOT NULL,
  `IMAGELOCATION` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `VISIBILITY` varchar(255) DEFAULT NULL,
  `CLOUDPROVIDERACCOUNT_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `RELATEDIMAGE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MACHINEIMAGE_CLOUDPROVIDERACCOUNT_ID` (`CLOUDPROVIDERACCOUNT_ID`),
  KEY `FK_MACHINEIMAGE_RELATEDIMAGE_ID` (`RELATEDIMAGE_ID`),
  KEY `FK_MACHINEIMAGE_LOCATION_ID` (`LOCATION_ID`),
  CONSTRAINT `FK_MACHINEIMAGE_LOCATION_ID` FOREIGN KEY (`LOCATION_ID`) REFERENCES `CLOUDPROVIDERLOCATION` (`ID`),
  CONSTRAINT `FK_MACHINEIMAGE_CLOUDPROVIDERACCOUNT_ID` FOREIGN KEY (`CLOUDPROVIDERACCOUNT_ID`) REFERENCES `CLOUDPROVIDERACCOUNT` (`ID`),
  CONSTRAINT `FK_MACHINEIMAGE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_MACHINEIMAGE_RELATEDIMAGE_ID` FOREIGN KEY (`RELATEDIMAGE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINEIMAGE`
--

LOCK TABLES `MACHINEIMAGE` WRITE;
/*!40000 ALTER TABLE `MACHINEIMAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINEIMAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINENETWORKINTERFACE`
--

DROP TABLE IF EXISTS `MACHINENETWORKINTERFACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINENETWORKINTERFACE` (
  `ID` int(11) NOT NULL,
  `MACADDRESS` varchar(255) DEFAULT NULL,
  `MTU` int(11) DEFAULT NULL,
  `NETWORKTYPE` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `NETWORK_ID` int(11) DEFAULT NULL,
  `NETWORKPORT_ID` int(11) DEFAULT NULL,
  `machine_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MACHINENETWORKINTERFACE_machine_id` (`machine_id`),
  KEY `FK_MACHINENETWORKINTERFACE_NETWORK_ID` (`NETWORK_ID`),
  KEY `FK_MACHINENETWORKINTERFACE_NETWORKPORT_ID` (`NETWORKPORT_ID`),
  CONSTRAINT `FK_MACHINENETWORKINTERFACE_NETWORKPORT_ID` FOREIGN KEY (`NETWORKPORT_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_MACHINENETWORKINTERFACE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_MACHINENETWORKINTERFACE_machine_id` FOREIGN KEY (`machine_id`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_MACHINENETWORKINTERFACE_NETWORK_ID` FOREIGN KEY (`NETWORK_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINENETWORKINTERFACE`
--

LOCK TABLES `MACHINENETWORKINTERFACE` WRITE;
/*!40000 ALTER TABLE `MACHINENETWORKINTERFACE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINENETWORKINTERFACE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINENETWORKINTERFACEADDRESS`
--

DROP TABLE IF EXISTS `MACHINENETWORKINTERFACEADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINENETWORKINTERFACEADDRESS` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `ADDRESS_ID` int(11) DEFAULT NULL,
  `machinenetworkinterface_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `MCHNNETWORKINTERFACEADDRESSmchnenetworkinterfaceid` (`machinenetworkinterface_id`),
  KEY `FK_MACHINENETWORKINTERFACEADDRESS_ADDRESS_ID` (`ADDRESS_ID`),
  KEY `FK_MACHINENETWORKINTERFACEADDRESS_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_MACHINENETWORKINTERFACEADDRESS_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`),
  CONSTRAINT `FK_MACHINENETWORKINTERFACEADDRESS_ADDRESS_ID` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `ADDRESS` (`ID`),
  CONSTRAINT `MCHNNETWORKINTERFACEADDRESSmchnenetworkinterfaceid` FOREIGN KEY (`machinenetworkinterface_id`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINENETWORKINTERFACEADDRESS`
--

LOCK TABLES `MACHINENETWORKINTERFACEADDRESS` WRITE;
/*!40000 ALTER TABLE `MACHINENETWORKINTERFACEADDRESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINENETWORKINTERFACEADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINETEMPLATE`
--

DROP TABLE IF EXISTS `MACHINETEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINETEMPLATE` (
  `ID` int(11) NOT NULL,
  `INITIALSTATE` int(11) DEFAULT NULL,
  `SYSTEMCREDENTIALNAME` varchar(255) DEFAULT NULL,
  `USERDATA` longtext,
  `CREDENTIAL_ID` int(11) DEFAULT NULL,
  `MACHINECONFIG_ID` int(11) DEFAULT NULL,
  `MACHINEIMAGE_ID` int(11) DEFAULT NULL,
  `EVENTLOGTEMPLATE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MACHINETEMPLATE_EVENTLOGTEMPLATE_ID` (`EVENTLOGTEMPLATE_ID`),
  KEY `FK_MACHINETEMPLATE_CREDENTIAL_ID` (`CREDENTIAL_ID`),
  KEY `FK_MACHINETEMPLATE_MACHINECONFIG_ID` (`MACHINECONFIG_ID`),
  KEY `FK_MACHINETEMPLATE_MACHINEIMAGE_ID` (`MACHINEIMAGE_ID`),
  CONSTRAINT `FK_MACHINETEMPLATE_MACHINEIMAGE_ID` FOREIGN KEY (`MACHINEIMAGE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_MACHINETEMPLATE_CREDENTIAL_ID` FOREIGN KEY (`CREDENTIAL_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_MACHINETEMPLATE_EVENTLOGTEMPLATE_ID` FOREIGN KEY (`EVENTLOGTEMPLATE_ID`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_MACHINETEMPLATE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_MACHINETEMPLATE_MACHINECONFIG_ID` FOREIGN KEY (`MACHINECONFIG_ID`) REFERENCES `MACHINECONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINETEMPLATE`
--

LOCK TABLES `MACHINETEMPLATE` WRITE;
/*!40000 ALTER TABLE `MACHINETEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINETEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINETEMPLATENETWORKINTERFACE`
--

DROP TABLE IF EXISTS `MACHINETEMPLATENETWORKINTERFACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINETEMPLATENETWORKINTERFACE` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MTU` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NETWORKTYPE` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `SYSTEMNETWORKNAME` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `NETWORK_ID` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `NETWORKPORT_ID` int(11) DEFAULT NULL,
  `machinetemplate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MACHINETEMPLATENETWORKINTERFACE_TENANT_ID` (`TENANT_ID`),
  KEY `FK_MACHINETEMPLATENETWORKINTERFACE_NETWORKPORT_ID` (`NETWORKPORT_ID`),
  KEY `MACHINETEMPLATENETWORKINTERFACE_machinetemplate_id` (`machinetemplate_id`),
  KEY `FK_MACHINETEMPLATENETWORKINTERFACE_NETWORK_ID` (`NETWORK_ID`),
  CONSTRAINT `FK_MACHINETEMPLATENETWORKINTERFACE_NETWORK_ID` FOREIGN KEY (`NETWORK_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_MACHINETEMPLATENETWORKINTERFACE_NETWORKPORT_ID` FOREIGN KEY (`NETWORKPORT_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_MACHINETEMPLATENETWORKINTERFACE_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`),
  CONSTRAINT `MACHINETEMPLATENETWORKINTERFACE_machinetemplate_id` FOREIGN KEY (`machinetemplate_id`) REFERENCES `CLOUDTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINETEMPLATENETWORKINTERFACE`
--

LOCK TABLES `MACHINETEMPLATENETWORKINTERFACE` WRITE;
/*!40000 ALTER TABLE `MACHINETEMPLATENETWORKINTERFACE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINETEMPLATENETWORKINTERFACE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINETEMPLATENETWORKINTERFACE_ADDRESS`
--

DROP TABLE IF EXISTS `MACHINETEMPLATENETWORKINTERFACE_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINETEMPLATENETWORKINTERFACE_ADDRESS` (
  `MachineTemplateNetworkInterface_ID` int(11) NOT NULL,
  `addresses_ID` int(11) NOT NULL,
  PRIMARY KEY (`MachineTemplateNetworkInterface_ID`,`addresses_ID`),
  KEY `MACHINETEMPLATENETWORKINTERFACEADDRESSaddresses_ID` (`addresses_ID`),
  CONSTRAINT `MACHINETEMPLATENETWORKINTERFACEADDRESSaddresses_ID` FOREIGN KEY (`addresses_ID`) REFERENCES `ADDRESS` (`ID`),
  CONSTRAINT `MCHNTMPLTNTWRKNTRFCEADDRESSMchnTmpltNtwrkntrfaceID` FOREIGN KEY (`MachineTemplateNetworkInterface_ID`) REFERENCES `MACHINETEMPLATENETWORKINTERFACE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINETEMPLATENETWORKINTERFACE_ADDRESS`
--

LOCK TABLES `MACHINETEMPLATENETWORKINTERFACE_ADDRESS` WRITE;
/*!40000 ALTER TABLE `MACHINETEMPLATENETWORKINTERFACE_ADDRESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINETEMPLATENETWORKINTERFACE_ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINETEMPLATE_MACHINEVOLUME`
--

DROP TABLE IF EXISTS `MACHINETEMPLATE_MACHINEVOLUME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINETEMPLATE_MACHINEVOLUME` (
  `MachineTemplate_ID` int(11) NOT NULL,
  `volumes_ID` int(11) NOT NULL,
  PRIMARY KEY (`MachineTemplate_ID`,`volumes_ID`),
  KEY `FK_MACHINETEMPLATE_MACHINEVOLUME_volumes_ID` (`volumes_ID`),
  CONSTRAINT `FK_MACHINETEMPLATE_MACHINEVOLUME_volumes_ID` FOREIGN KEY (`volumes_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `MACHINETEMPLATE_MACHINEVOLUME_MachineTemplate_ID` FOREIGN KEY (`MachineTemplate_ID`) REFERENCES `CLOUDTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINETEMPLATE_MACHINEVOLUME`
--

LOCK TABLES `MACHINETEMPLATE_MACHINEVOLUME` WRITE;
/*!40000 ALTER TABLE `MACHINETEMPLATE_MACHINEVOLUME` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINETEMPLATE_MACHINEVOLUME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINETEMPLATE_MACHINEVOLUMETEMPLATE`
--

DROP TABLE IF EXISTS `MACHINETEMPLATE_MACHINEVOLUMETEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINETEMPLATE_MACHINEVOLUMETEMPLATE` (
  `MachineTemplate_ID` int(11) NOT NULL,
  `volumeTemplates_ID` int(11) NOT NULL,
  PRIMARY KEY (`MachineTemplate_ID`,`volumeTemplates_ID`),
  KEY `MCHINETEMPLATEMACHINEVOLUMETEMPLATEvlmeTemplatesID` (`volumeTemplates_ID`),
  CONSTRAINT `MCHINETEMPLATEMACHINEVOLUMETEMPLATEvlmeTemplatesID` FOREIGN KEY (`volumeTemplates_ID`) REFERENCES `MACHINEVOLUMETEMPLATE` (`ID`),
  CONSTRAINT `MCHNETEMPLATEMACHINEVOLUMETEMPLATEMchineTemplateID` FOREIGN KEY (`MachineTemplate_ID`) REFERENCES `CLOUDTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINETEMPLATE_MACHINEVOLUMETEMPLATE`
--

LOCK TABLES `MACHINETEMPLATE_MACHINEVOLUMETEMPLATE` WRITE;
/*!40000 ALTER TABLE `MACHINETEMPLATE_MACHINEVOLUMETEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINETEMPLATE_MACHINEVOLUMETEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINEVOLUME`
--

DROP TABLE IF EXISTS `MACHINEVOLUME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINEVOLUME` (
  `ID` int(11) NOT NULL,
  `INITIALLOCATION` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `SYSTEMVOLUMENAME` varchar(255) DEFAULT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `VOLUME_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MACHINEVOLUME_OWNER_ID` (`OWNER_ID`),
  KEY `FK_MACHINEVOLUME_VOLUME_ID` (`VOLUME_ID`),
  CONSTRAINT `FK_MACHINEVOLUME_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_MACHINEVOLUME_OWNER_ID` FOREIGN KEY (`OWNER_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_MACHINEVOLUME_VOLUME_ID` FOREIGN KEY (`VOLUME_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINEVOLUME`
--

LOCK TABLES `MACHINEVOLUME` WRITE;
/*!40000 ALTER TABLE `MACHINEVOLUME` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINEVOLUME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINEVOLUMETEMPLATE`
--

DROP TABLE IF EXISTS `MACHINEVOLUMETEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINEVOLUMETEMPLATE` (
  `ID` int(11) NOT NULL,
  `INITIALLOCATION` varchar(255) DEFAULT NULL,
  `VOLUMETEMPLATE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MACHINEVOLUMETEMPLATE_VOLUMETEMPLATE_ID` (`VOLUMETEMPLATE_ID`),
  CONSTRAINT `FK_MACHINEVOLUMETEMPLATE_VOLUMETEMPLATE_ID` FOREIGN KEY (`VOLUMETEMPLATE_ID`) REFERENCES `CLOUDTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINEVOLUMETEMPLATE`
--

LOCK TABLES `MACHINEVOLUMETEMPLATE` WRITE;
/*!40000 ALTER TABLE `MACHINEVOLUMETEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINEVOLUMETEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MACHINE_MACHINEDISK`
--

DROP TABLE IF EXISTS `MACHINE_MACHINEDISK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MACHINE_MACHINEDISK` (
  `Machine_ID` int(11) NOT NULL,
  `disks_ID` int(11) NOT NULL,
  PRIMARY KEY (`Machine_ID`,`disks_ID`),
  KEY `FK_MACHINE_MACHINEDISK_disks_ID` (`disks_ID`),
  CONSTRAINT `FK_MACHINE_MACHINEDISK_disks_ID` FOREIGN KEY (`disks_ID`) REFERENCES `MACHINEDISK` (`ID`),
  CONSTRAINT `FK_MACHINE_MACHINEDISK_Machine_ID` FOREIGN KEY (`Machine_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MACHINE_MACHINEDISK`
--

LOCK TABLES `MACHINE_MACHINEDISK` WRITE;
/*!40000 ALTER TABLE `MACHINE_MACHINEDISK` DISABLE KEYS */;
/*!40000 ALTER TABLE `MACHINE_MACHINEDISK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `METER`
--

DROP TABLE IF EXISTS `METER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `METER` (
  `ID` int(11) NOT NULL,
  `CONTINUOUS` tinyint(1) DEFAULT '0',
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXPIRESTIME` datetime DEFAULT NULL,
  `INTERVALDURATION` varchar(255) DEFAULT NULL,
  `maxValueMeter` varchar(255) DEFAULT NULL,
  `minValueMeter` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `SAMPLEINTERVAL` int(11) DEFAULT NULL,
  `STOPTIME` datetime DEFAULT NULL,
  `TIMESCOPE` varchar(255) DEFAULT NULL,
  `UNITS` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TARGETRESOURCE_ID` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_METER_TARGETRESOURCE_ID` (`TARGETRESOURCE_ID`),
  KEY `FK_METER_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_METER_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`),
  CONSTRAINT `FK_METER_TARGETRESOURCE_ID` FOREIGN KEY (`TARGETRESOURCE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `METER`
--

LOCK TABLES `METER` WRITE;
/*!40000 ALTER TABLE `METER` DISABLE KEYS */;
/*!40000 ALTER TABLE `METER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `METERCONFIGURATION`
--

DROP TABLE IF EXISTS `METERCONFIGURATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `METERCONFIGURATION` (
  `ID` int(11) NOT NULL,
  `ASPECT` varchar(255) DEFAULT NULL,
  `CONTINUOUS` tinyint(1) DEFAULT '0',
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `INTERVALDURATION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `SAMPLEINTERVAL` int(11) DEFAULT NULL,
  `TIMESCOPE` varchar(255) DEFAULT NULL,
  `UNITS` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_METERCONFIGURATION_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_METERCONFIGURATION_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `METERCONFIGURATION`
--

LOCK TABLES `METERCONFIGURATION` WRITE;
/*!40000 ALTER TABLE `METERCONFIGURATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `METERCONFIGURATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `METERSAMPLE`
--

DROP TABLE IF EXISTS `METERSAMPLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `METERSAMPLE` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `TIMESTAMP` datetime DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_METERSAMPLE_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_METERSAMPLE_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `METERSAMPLE`
--

LOCK TABLES `METERSAMPLE` WRITE;
/*!40000 ALTER TABLE `METERSAMPLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `METERSAMPLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `METERTEMPLATE`
--

DROP TABLE IF EXISTS `METERTEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `METERTEMPLATE` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `METERCONFIGURATION_ID` int(11) DEFAULT NULL,
  `TARGETRESOURCE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_METERTEMPLATE_METERCONFIGURATION_ID` (`METERCONFIGURATION_ID`),
  KEY `FK_METERTEMPLATE_TENANT_ID` (`TENANT_ID`),
  KEY `FK_METERTEMPLATE_TARGETRESOURCE_ID` (`TARGETRESOURCE_ID`),
  CONSTRAINT `FK_METERTEMPLATE_TARGETRESOURCE_ID` FOREIGN KEY (`TARGETRESOURCE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_METERTEMPLATE_METERCONFIGURATION_ID` FOREIGN KEY (`METERCONFIGURATION_ID`) REFERENCES `METERCONFIGURATION` (`ID`),
  CONSTRAINT `FK_METERTEMPLATE_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `METERTEMPLATE`
--

LOCK TABLES `METERTEMPLATE` WRITE;
/*!40000 ALTER TABLE `METERTEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `METERTEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `METER_METERSAMPLE`
--

DROP TABLE IF EXISTS `METER_METERSAMPLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `METER_METERSAMPLE` (
  `Meter_ID` int(11) NOT NULL,
  `samples_ID` int(11) NOT NULL,
  PRIMARY KEY (`Meter_ID`,`samples_ID`),
  KEY `FK_METER_METERSAMPLE_samples_ID` (`samples_ID`),
  CONSTRAINT `FK_METER_METERSAMPLE_Meter_ID` FOREIGN KEY (`Meter_ID`) REFERENCES `METER` (`ID`),
  CONSTRAINT `FK_METER_METERSAMPLE_samples_ID` FOREIGN KEY (`samples_ID`) REFERENCES `METERSAMPLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `METER_METERSAMPLE`
--

LOCK TABLES `METER_METERSAMPLE` WRITE;
/*!40000 ALTER TABLE `METER_METERSAMPLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `METER_METERSAMPLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MODELEVENTTYPE`
--

DROP TABLE IF EXISTS `MODELEVENTTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MODELEVENTTYPE` (
  `ID` int(11) NOT NULL,
  `MODELCHANGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_MODELEVENTTYPE_ID` FOREIGN KEY (`ID`) REFERENCES `EVENTTYPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MODELEVENTTYPE`
--

LOCK TABLES `MODELEVENTTYPE` WRITE;
/*!40000 ALTER TABLE `MODELEVENTTYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MODELEVENTTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MachineConfiguration_DISKS`
--

DROP TABLE IF EXISTS `MachineConfiguration_DISKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MachineConfiguration_DISKS` (
  `CAPACITY` int(11) DEFAULT NULL,
  `FORMAT` varchar(255) DEFAULT NULL,
  `INITIALLOCATION` varchar(255) DEFAULT NULL,
  `MachineConfiguration_ID` int(11) DEFAULT NULL,
  KEY `MachineConfiguration_DISKS_MachineConfiguration_ID` (`MachineConfiguration_ID`),
  CONSTRAINT `MachineConfiguration_DISKS_MachineConfiguration_ID` FOREIGN KEY (`MachineConfiguration_ID`) REFERENCES `MACHINECONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MachineConfiguration_DISKS`
--

LOCK TABLES `MachineConfiguration_DISKS` WRITE;
/*!40000 ALTER TABLE `MachineConfiguration_DISKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `MachineConfiguration_DISKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MachineConfiguration_PROPERTIES`
--

DROP TABLE IF EXISTS `MachineConfiguration_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MachineConfiguration_PROPERTIES` (
  `MachineConfiguration_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `MchineConfigurationPROPERTIESMchineConfigurationID` (`MachineConfiguration_ID`),
  CONSTRAINT `MchineConfigurationPROPERTIESMchineConfigurationID` FOREIGN KEY (`MachineConfiguration_ID`) REFERENCES `MACHINECONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MachineConfiguration_PROPERTIES`
--

LOCK TABLES `MachineConfiguration_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `MachineConfiguration_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `MachineConfiguration_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MachineConfiguration_PROVIDERMAPPINGS`
--

DROP TABLE IF EXISTS `MachineConfiguration_PROVIDERMAPPINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MachineConfiguration_PROVIDERMAPPINGS` (
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `PROVIDERACCOUNT_ID` int(11) DEFAULT NULL,
  `PROVIDERLOCATION_ID` int(11) DEFAULT NULL,
  `MachineConfiguration_ID` int(11) DEFAULT NULL,
  KEY `MchnCnfigurationPROVIDERMAPPINGSMchnCnfigurationID` (`MachineConfiguration_ID`),
  CONSTRAINT `MchnCnfigurationPROVIDERMAPPINGSMchnCnfigurationID` FOREIGN KEY (`MachineConfiguration_ID`) REFERENCES `MACHINECONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MachineConfiguration_PROVIDERMAPPINGS`
--

LOCK TABLES `MachineConfiguration_PROVIDERMAPPINGS` WRITE;
/*!40000 ALTER TABLE `MachineConfiguration_PROVIDERMAPPINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `MachineConfiguration_PROVIDERMAPPINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MachineDisk_PROPERTIES`
--

DROP TABLE IF EXISTS `MachineDisk_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MachineDisk_PROPERTIES` (
  `MachineDisk_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_MachineDisk_PROPERTIES_MachineDisk_ID` (`MachineDisk_ID`),
  CONSTRAINT `FK_MachineDisk_PROPERTIES_MachineDisk_ID` FOREIGN KEY (`MachineDisk_ID`) REFERENCES `MACHINEDISK` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MachineDisk_PROPERTIES`
--

LOCK TABLES `MachineDisk_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `MachineDisk_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `MachineDisk_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MachineImage_PROVIDERMAPPINGS`
--

DROP TABLE IF EXISTS `MachineImage_PROVIDERMAPPINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MachineImage_PROVIDERMAPPINGS` (
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `PROVIDERACCOUNT_ID` int(11) DEFAULT NULL,
  `PROVIDERLOCATION_ID` int(11) DEFAULT NULL,
  `MachineImage_ID` int(11) DEFAULT NULL,
  KEY `FK_MachineImage_PROVIDERMAPPINGS_MachineImage_ID` (`MachineImage_ID`),
  CONSTRAINT `FK_MachineImage_PROVIDERMAPPINGS_MachineImage_ID` FOREIGN KEY (`MachineImage_ID`) REFERENCES `MACHINEIMAGE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MachineImage_PROVIDERMAPPINGS`
--

LOCK TABLES `MachineImage_PROVIDERMAPPINGS` WRITE;
/*!40000 ALTER TABLE `MachineImage_PROVIDERMAPPINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `MachineImage_PROVIDERMAPPINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MachineNetworkInterfaceAddress_PROPERTIES`
--

DROP TABLE IF EXISTS `MachineNetworkInterfaceAddress_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MachineNetworkInterfaceAddress_PROPERTIES` (
  `MachineNetworkInterfaceAddress_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `MchnNtwrkntrfcddrssPROPERTIESMchnNtwrkntrfcddrssID` (`MachineNetworkInterfaceAddress_ID`),
  CONSTRAINT `MchnNtwrkntrfcddrssPROPERTIESMchnNtwrkntrfcddrssID` FOREIGN KEY (`MachineNetworkInterfaceAddress_ID`) REFERENCES `MACHINENETWORKINTERFACEADDRESS` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MachineNetworkInterfaceAddress_PROPERTIES`
--

LOCK TABLES `MachineNetworkInterfaceAddress_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `MachineNetworkInterfaceAddress_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `MachineNetworkInterfaceAddress_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MachineTemplateNetworkInterface_PROPERTIES`
--

DROP TABLE IF EXISTS `MachineTemplateNetworkInterface_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MachineTemplateNetworkInterface_PROPERTIES` (
  `MachineTemplateNetworkInterface_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `MchnTmpltNtwrkntrfcPROPERTIESMchnTmpltNtwrkntrfcID` (`MachineTemplateNetworkInterface_ID`),
  CONSTRAINT `MchnTmpltNtwrkntrfcPROPERTIESMchnTmpltNtwrkntrfcID` FOREIGN KEY (`MachineTemplateNetworkInterface_ID`) REFERENCES `MACHINETEMPLATENETWORKINTERFACE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MachineTemplateNetworkInterface_PROPERTIES`
--

LOCK TABLES `MachineTemplateNetworkInterface_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `MachineTemplateNetworkInterface_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `MachineTemplateNetworkInterface_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MeterConfiguration_ASSOCIATEDTO`
--

DROP TABLE IF EXISTS `MeterConfiguration_ASSOCIATEDTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MeterConfiguration_ASSOCIATEDTO` (
  `MeterConfiguration_ID` int(11) DEFAULT NULL,
  `ASSOCIATEDTO` varchar(255) DEFAULT NULL,
  KEY `MeterConfigurationASSOCIATEDTOMeterConfigurationID` (`MeterConfiguration_ID`),
  CONSTRAINT `MeterConfigurationASSOCIATEDTOMeterConfigurationID` FOREIGN KEY (`MeterConfiguration_ID`) REFERENCES `METERCONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MeterConfiguration_ASSOCIATEDTO`
--

LOCK TABLES `MeterConfiguration_ASSOCIATEDTO` WRITE;
/*!40000 ALTER TABLE `MeterConfiguration_ASSOCIATEDTO` DISABLE KEYS */;
/*!40000 ALTER TABLE `MeterConfiguration_ASSOCIATEDTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MeterConfiguration_PROPERTIES`
--

DROP TABLE IF EXISTS `MeterConfiguration_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MeterConfiguration_PROPERTIES` (
  `MeterConfiguration_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `MeterConfiguration_PROPERTIESMeterConfiguration_ID` (`MeterConfiguration_ID`),
  CONSTRAINT `MeterConfiguration_PROPERTIESMeterConfiguration_ID` FOREIGN KEY (`MeterConfiguration_ID`) REFERENCES `METERCONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MeterConfiguration_PROPERTIES`
--

LOCK TABLES `MeterConfiguration_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `MeterConfiguration_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `MeterConfiguration_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MeterSample_PROPERTIES`
--

DROP TABLE IF EXISTS `MeterSample_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MeterSample_PROPERTIES` (
  `MeterSample_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_MeterSample_PROPERTIES_MeterSample_ID` (`MeterSample_ID`),
  CONSTRAINT `FK_MeterSample_PROPERTIES_MeterSample_ID` FOREIGN KEY (`MeterSample_ID`) REFERENCES `METERSAMPLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MeterSample_PROPERTIES`
--

LOCK TABLES `MeterSample_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `MeterSample_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `MeterSample_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MeterTemplate_PROPERTIES`
--

DROP TABLE IF EXISTS `MeterTemplate_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MeterTemplate_PROPERTIES` (
  `MeterTemplate_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_MeterTemplate_PROPERTIES_MeterTemplate_ID` (`MeterTemplate_ID`),
  CONSTRAINT `FK_MeterTemplate_PROPERTIES_MeterTemplate_ID` FOREIGN KEY (`MeterTemplate_ID`) REFERENCES `METERTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MeterTemplate_PROPERTIES`
--

LOCK TABLES `MeterTemplate_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `MeterTemplate_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `MeterTemplate_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Meter_PROPERTIES`
--

DROP TABLE IF EXISTS `Meter_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Meter_PROPERTIES` (
  `Meter_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_Meter_PROPERTIES_Meter_ID` (`Meter_ID`),
  CONSTRAINT `FK_Meter_PROPERTIES_Meter_ID` FOREIGN KEY (`Meter_ID`) REFERENCES `METER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Meter_PROPERTIES`
--

LOCK TABLES `Meter_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `Meter_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `Meter_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NETWORK`
--

DROP TABLE IF EXISTS `NETWORK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NETWORK` (
  `ID` int(11) NOT NULL,
  `CLASSOFSERVICE` varchar(255) DEFAULT NULL,
  `MTU` int(11) DEFAULT NULL,
  `NETWORKTYPE` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CLOUDPROVIDERACCOUNT_ID` int(11) DEFAULT NULL,
  `FORWARDINGGROUP_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_NETWORK_FORWARDINGGROUP_ID` (`FORWARDINGGROUP_ID`),
  KEY `FK_NETWORK_CLOUDPROVIDERACCOUNT_ID` (`CLOUDPROVIDERACCOUNT_ID`),
  KEY `FK_NETWORK_LOCATION_ID` (`LOCATION_ID`),
  CONSTRAINT `FK_NETWORK_LOCATION_ID` FOREIGN KEY (`LOCATION_ID`) REFERENCES `CLOUDPROVIDERLOCATION` (`ID`),
  CONSTRAINT `FK_NETWORK_CLOUDPROVIDERACCOUNT_ID` FOREIGN KEY (`CLOUDPROVIDERACCOUNT_ID`) REFERENCES `CLOUDPROVIDERACCOUNT` (`ID`),
  CONSTRAINT `FK_NETWORK_FORWARDINGGROUP_ID` FOREIGN KEY (`FORWARDINGGROUP_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_NETWORK_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NETWORK`
--

LOCK TABLES `NETWORK` WRITE;
/*!40000 ALTER TABLE `NETWORK` DISABLE KEYS */;
/*!40000 ALTER TABLE `NETWORK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NETWORKCONFIGURATION`
--

DROP TABLE IF EXISTS `NETWORKCONFIGURATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NETWORKCONFIGURATION` (
  `ID` int(11) NOT NULL,
  `CLASSOFSERVICE` varchar(255) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `MTU` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NETWORKTYPE` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `VISIBILITY` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_NETWORKCONFIGURATION_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_NETWORKCONFIGURATION_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NETWORKCONFIGURATION`
--

LOCK TABLES `NETWORKCONFIGURATION` WRITE;
/*!40000 ALTER TABLE `NETWORKCONFIGURATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `NETWORKCONFIGURATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NETWORKNETWORKPORT`
--

DROP TABLE IF EXISTS `NETWORKNETWORKPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NETWORKNETWORKPORT` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `NETWORKPORT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_NETWORKNETWORKPORT_TENANT_ID` (`TENANT_ID`),
  KEY `FK_NETWORKNETWORKPORT_NETWORKPORT_ID` (`NETWORKPORT_ID`),
  CONSTRAINT `FK_NETWORKNETWORKPORT_NETWORKPORT_ID` FOREIGN KEY (`NETWORKPORT_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_NETWORKNETWORKPORT_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NETWORKNETWORKPORT`
--

LOCK TABLES `NETWORKNETWORKPORT` WRITE;
/*!40000 ALTER TABLE `NETWORKNETWORKPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `NETWORKNETWORKPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NETWORKPORT`
--

DROP TABLE IF EXISTS `NETWORKPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NETWORKPORT` (
  `ID` int(11) NOT NULL,
  `CLASSOFSERVICE` varchar(255) DEFAULT NULL,
  `PORTTYPE` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CLOUDPROVIDERACCOUNT_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `NETWORK_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_NETWORKPORT_LOCATION_ID` (`LOCATION_ID`),
  KEY `FK_NETWORKPORT_CLOUDPROVIDERACCOUNT_ID` (`CLOUDPROVIDERACCOUNT_ID`),
  KEY `FK_NETWORKPORT_NETWORK_ID` (`NETWORK_ID`),
  CONSTRAINT `FK_NETWORKPORT_NETWORK_ID` FOREIGN KEY (`NETWORK_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_NETWORKPORT_CLOUDPROVIDERACCOUNT_ID` FOREIGN KEY (`CLOUDPROVIDERACCOUNT_ID`) REFERENCES `CLOUDPROVIDERACCOUNT` (`ID`),
  CONSTRAINT `FK_NETWORKPORT_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_NETWORKPORT_LOCATION_ID` FOREIGN KEY (`LOCATION_ID`) REFERENCES `CLOUDPROVIDERLOCATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NETWORKPORT`
--

LOCK TABLES `NETWORKPORT` WRITE;
/*!40000 ALTER TABLE `NETWORKPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `NETWORKPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NETWORKPORTCONFIGURATION`
--

DROP TABLE IF EXISTS `NETWORKPORTCONFIGURATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NETWORKPORTCONFIGURATION` (
  `ID` int(11) NOT NULL,
  `CLASSOFSERVICE` varchar(255) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PORTTYPE` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_NETWORKPORTCONFIGURATION_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_NETWORKPORTCONFIGURATION_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NETWORKPORTCONFIGURATION`
--

LOCK TABLES `NETWORKPORTCONFIGURATION` WRITE;
/*!40000 ALTER TABLE `NETWORKPORTCONFIGURATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `NETWORKPORTCONFIGURATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NETWORKPORTTEMPLATE`
--

DROP TABLE IF EXISTS `NETWORKPORTTEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NETWORKPORTTEMPLATE` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `NETWORK_ID` int(11) DEFAULT NULL,
  `NETWORKPORTCONFIG_ID` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `EVENTLOGTEMPLATE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_NETWORKPORTTEMPLATE_EVENTLOGTEMPLATE_ID` (`EVENTLOGTEMPLATE_ID`),
  KEY `FK_NETWORKPORTTEMPLATE_TENANT_ID` (`TENANT_ID`),
  KEY `FK_NETWORKPORTTEMPLATE_NETWORKPORTCONFIG_ID` (`NETWORKPORTCONFIG_ID`),
  KEY `FK_NETWORKPORTTEMPLATE_NETWORK_ID` (`NETWORK_ID`),
  CONSTRAINT `FK_NETWORKPORTTEMPLATE_NETWORK_ID` FOREIGN KEY (`NETWORK_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_NETWORKPORTTEMPLATE_EVENTLOGTEMPLATE_ID` FOREIGN KEY (`EVENTLOGTEMPLATE_ID`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_NETWORKPORTTEMPLATE_NETWORKPORTCONFIG_ID` FOREIGN KEY (`NETWORKPORTCONFIG_ID`) REFERENCES `NETWORKPORTCONFIGURATION` (`ID`),
  CONSTRAINT `FK_NETWORKPORTTEMPLATE_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NETWORKPORTTEMPLATE`
--

LOCK TABLES `NETWORKPORTTEMPLATE` WRITE;
/*!40000 ALTER TABLE `NETWORKPORTTEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `NETWORKPORTTEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NETWORKTEMPLATE`
--

DROP TABLE IF EXISTS `NETWORKTEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NETWORKTEMPLATE` (
  `ID` int(11) NOT NULL,
  `FORWARDINGGROUP_ID` int(11) DEFAULT NULL,
  `NETWORKCONFIG_ID` int(11) DEFAULT NULL,
  `EVENTLOGTEMPLATE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_NETWORKTEMPLATE_FORWARDINGGROUP_ID` (`FORWARDINGGROUP_ID`),
  KEY `FK_NETWORKTEMPLATE_NETWORKCONFIG_ID` (`NETWORKCONFIG_ID`),
  KEY `FK_NETWORKTEMPLATE_EVENTLOGTEMPLATE_ID` (`EVENTLOGTEMPLATE_ID`),
  CONSTRAINT `FK_NETWORKTEMPLATE_EVENTLOGTEMPLATE_ID` FOREIGN KEY (`EVENTLOGTEMPLATE_ID`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_NETWORKTEMPLATE_FORWARDINGGROUP_ID` FOREIGN KEY (`FORWARDINGGROUP_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_NETWORKTEMPLATE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_NETWORKTEMPLATE_NETWORKCONFIG_ID` FOREIGN KEY (`NETWORKCONFIG_ID`) REFERENCES `NETWORKCONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NETWORKTEMPLATE`
--

LOCK TABLES `NETWORKTEMPLATE` WRITE;
/*!40000 ALTER TABLE `NETWORKTEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `NETWORKTEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NETWORK_NETWORKNETWORKPORT`
--

DROP TABLE IF EXISTS `NETWORK_NETWORKNETWORKPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NETWORK_NETWORKNETWORKPORT` (
  `Network_ID` int(11) NOT NULL,
  `networkPorts_ID` int(11) NOT NULL,
  PRIMARY KEY (`Network_ID`,`networkPorts_ID`),
  KEY `FK_NETWORK_NETWORKNETWORKPORT_networkPorts_ID` (`networkPorts_ID`),
  CONSTRAINT `FK_NETWORK_NETWORKNETWORKPORT_Network_ID` FOREIGN KEY (`Network_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_NETWORK_NETWORKNETWORKPORT_networkPorts_ID` FOREIGN KEY (`networkPorts_ID`) REFERENCES `NETWORKNETWORKPORT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NETWORK_NETWORKNETWORKPORT`
--

LOCK TABLES `NETWORK_NETWORKNETWORKPORT` WRITE;
/*!40000 ALTER TABLE `NETWORK_NETWORKNETWORKPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `NETWORK_NETWORKNETWORKPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NetworkConfiguration_PROPERTIES`
--

DROP TABLE IF EXISTS `NetworkConfiguration_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NetworkConfiguration_PROPERTIES` (
  `NetworkConfiguration_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `NtworkConfigurationPROPERTIESNtworkConfigurationID` (`NetworkConfiguration_ID`),
  CONSTRAINT `NtworkConfigurationPROPERTIESNtworkConfigurationID` FOREIGN KEY (`NetworkConfiguration_ID`) REFERENCES `NETWORKCONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NetworkConfiguration_PROPERTIES`
--

LOCK TABLES `NetworkConfiguration_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `NetworkConfiguration_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `NetworkConfiguration_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NetworkConfiguration_SUBNETS`
--

DROP TABLE IF EXISTS `NetworkConfiguration_SUBNETS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NetworkConfiguration_SUBNETS` (
  `CIDR` varchar(255) DEFAULT NULL,
  `ENABLEDHCP` tinyint(1) DEFAULT '0',
  `NAME` varchar(255) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `NetworkConfiguration_ID` int(11) DEFAULT NULL,
  KEY `NetworkConfigurationSUBNETSNetworkConfiguration_ID` (`NetworkConfiguration_ID`),
  CONSTRAINT `NetworkConfigurationSUBNETSNetworkConfiguration_ID` FOREIGN KEY (`NetworkConfiguration_ID`) REFERENCES `NETWORKCONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NetworkConfiguration_SUBNETS`
--

LOCK TABLES `NetworkConfiguration_SUBNETS` WRITE;
/*!40000 ALTER TABLE `NetworkConfiguration_SUBNETS` DISABLE KEYS */;
/*!40000 ALTER TABLE `NetworkConfiguration_SUBNETS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NetworkNetworkPort_PROPERTIES`
--

DROP TABLE IF EXISTS `NetworkNetworkPort_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NetworkNetworkPort_PROPERTIES` (
  `NetworkNetworkPort_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `NetworkNetworkPort_PROPERTIESNetworkNetworkPort_ID` (`NetworkNetworkPort_ID`),
  CONSTRAINT `NetworkNetworkPort_PROPERTIESNetworkNetworkPort_ID` FOREIGN KEY (`NetworkNetworkPort_ID`) REFERENCES `NETWORKNETWORKPORT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NetworkNetworkPort_PROPERTIES`
--

LOCK TABLES `NetworkNetworkPort_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `NetworkNetworkPort_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `NetworkNetworkPort_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NetworkPortConfiguration_PROPERTIES`
--

DROP TABLE IF EXISTS `NetworkPortConfiguration_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NetworkPortConfiguration_PROPERTIES` (
  `NetworkPortConfiguration_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `NtwrkPrtCnfgurationPROPERTIESNtwrkPrtCnfgurationID` (`NetworkPortConfiguration_ID`),
  CONSTRAINT `NtwrkPrtCnfgurationPROPERTIESNtwrkPrtCnfgurationID` FOREIGN KEY (`NetworkPortConfiguration_ID`) REFERENCES `NETWORKPORTCONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NetworkPortConfiguration_PROPERTIES`
--

LOCK TABLES `NetworkPortConfiguration_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `NetworkPortConfiguration_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `NetworkPortConfiguration_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NetworkPortTemplate_PROPERTIES`
--

DROP TABLE IF EXISTS `NetworkPortTemplate_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NetworkPortTemplate_PROPERTIES` (
  `NetworkPortTemplate_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `NetworkPortTemplatePROPERTIESNetworkPortTemplateID` (`NetworkPortTemplate_ID`),
  CONSTRAINT `NetworkPortTemplatePROPERTIESNetworkPortTemplateID` FOREIGN KEY (`NetworkPortTemplate_ID`) REFERENCES `NETWORKPORTTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NetworkPortTemplate_PROPERTIES`
--

LOCK TABLES `NetworkPortTemplate_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `NetworkPortTemplate_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `NetworkPortTemplate_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Network_SUBNETS`
--

DROP TABLE IF EXISTS `Network_SUBNETS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Network_SUBNETS` (
  `CIDR` varchar(255) DEFAULT NULL,
  `ENABLEDHCP` tinyint(1) DEFAULT '0',
  `NAME` varchar(255) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `Network_ID` int(11) DEFAULT NULL,
  KEY `FK_Network_SUBNETS_Network_ID` (`Network_ID`),
  CONSTRAINT `FK_Network_SUBNETS_Network_ID` FOREIGN KEY (`Network_ID`) REFERENCES `NETWORK` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Network_SUBNETS`
--

LOCK TABLES `Network_SUBNETS` WRITE;
/*!40000 ALTER TABLE `Network_SUBNETS` DISABLE KEYS */;
/*!40000 ALTER TABLE `Network_SUBNETS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEQUENCE`
--

DROP TABLE IF EXISTS `SEQUENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE`
--

LOCK TABLES `SEQUENCE` WRITE;
/*!40000 ALTER TABLE `SEQUENCE` DISABLE KEYS */;
INSERT INTO `SEQUENCE` VALUES ('SEQ_GEN',50);
/*!40000 ALTER TABLE `SEQUENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SIROCCOCONFIGURATION`
--

DROP TABLE IF EXISTS `SIROCCOCONFIGURATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SIROCCOCONFIGURATION` (
  `ID` int(11) NOT NULL,
  `MOCKCONNECTORIMPLEMENTSSYSTEM` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SIROCCOCONFIGURATION`
--

LOCK TABLES `SIROCCOCONFIGURATION` WRITE;
/*!40000 ALTER TABLE `SIROCCOCONFIGURATION` DISABLE KEYS */;
INSERT INTO `SIROCCOCONFIGURATION` VALUES (1,1);
/*!40000 ALTER TABLE `SIROCCOCONFIGURATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STATEEVENTTYPE`
--

DROP TABLE IF EXISTS `STATEEVENTTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STATEEVENTTYPE` (
  `ID` int(11) NOT NULL,
  `PREVIOUSSTATE` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_STATEEVENTTYPE_ID` FOREIGN KEY (`ID`) REFERENCES `EVENTTYPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STATEEVENTTYPE`
--

LOCK TABLES `STATEEVENTTYPE` WRITE;
/*!40000 ALTER TABLE `STATEEVENTTYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `STATEEVENTTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEMCREDENTIALS`
--

DROP TABLE IF EXISTS `SYSTEMCREDENTIALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEMCREDENTIALS` (
  `ID` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SYSTEMCREDENTIALS_system_id` (`system_id`),
  CONSTRAINT `FK_SYSTEMCREDENTIALS_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDCOLLECTIONITEM` (`ID`),
  CONSTRAINT `FK_SYSTEMCREDENTIALS_system_id` FOREIGN KEY (`system_id`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEMCREDENTIALS`
--

LOCK TABLES `SYSTEMCREDENTIALS` WRITE;
/*!40000 ALTER TABLE `SYSTEMCREDENTIALS` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEMCREDENTIALS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEMFORWARDINGGROUP`
--

DROP TABLE IF EXISTS `SYSTEMFORWARDINGGROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEMFORWARDINGGROUP` (
  `ID` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SYSTEMFORWARDINGGROUP_system_id` (`system_id`),
  CONSTRAINT `FK_SYSTEMFORWARDINGGROUP_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDCOLLECTIONITEM` (`ID`),
  CONSTRAINT `FK_SYSTEMFORWARDINGGROUP_system_id` FOREIGN KEY (`system_id`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEMFORWARDINGGROUP`
--

LOCK TABLES `SYSTEMFORWARDINGGROUP` WRITE;
/*!40000 ALTER TABLE `SYSTEMFORWARDINGGROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEMFORWARDINGGROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEMINSTANCE`
--

DROP TABLE IF EXISTS `SYSTEMINSTANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEMINSTANCE` (
  `ID` int(11) NOT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CLOUDPROVIDERACCOUNT_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SYSTEMINSTANCE_LOCATION_ID` (`LOCATION_ID`),
  KEY `FK_SYSTEMINSTANCE_CLOUDPROVIDERACCOUNT_ID` (`CLOUDPROVIDERACCOUNT_ID`),
  CONSTRAINT `FK_SYSTEMINSTANCE_CLOUDPROVIDERACCOUNT_ID` FOREIGN KEY (`CLOUDPROVIDERACCOUNT_ID`) REFERENCES `CLOUDPROVIDERACCOUNT` (`ID`),
  CONSTRAINT `FK_SYSTEMINSTANCE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_SYSTEMINSTANCE_LOCATION_ID` FOREIGN KEY (`LOCATION_ID`) REFERENCES `CLOUDPROVIDERLOCATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEMINSTANCE`
--

LOCK TABLES `SYSTEMINSTANCE` WRITE;
/*!40000 ALTER TABLE `SYSTEMINSTANCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEMINSTANCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEMMACHINE`
--

DROP TABLE IF EXISTS `SYSTEMMACHINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEMMACHINE` (
  `ID` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SYSTEMMACHINE_system_id` (`system_id`),
  CONSTRAINT `FK_SYSTEMMACHINE_system_id` FOREIGN KEY (`system_id`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_SYSTEMMACHINE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDCOLLECTIONITEM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEMMACHINE`
--

LOCK TABLES `SYSTEMMACHINE` WRITE;
/*!40000 ALTER TABLE `SYSTEMMACHINE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEMMACHINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEMNETWORK`
--

DROP TABLE IF EXISTS `SYSTEMNETWORK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEMNETWORK` (
  `ID` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SYSTEMNETWORK_system_id` (`system_id`),
  CONSTRAINT `FK_SYSTEMNETWORK_system_id` FOREIGN KEY (`system_id`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_SYSTEMNETWORK_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDCOLLECTIONITEM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEMNETWORK`
--

LOCK TABLES `SYSTEMNETWORK` WRITE;
/*!40000 ALTER TABLE `SYSTEMNETWORK` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEMNETWORK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEMNETWORKPORT`
--

DROP TABLE IF EXISTS `SYSTEMNETWORKPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEMNETWORKPORT` (
  `ID` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SYSTEMNETWORKPORT_system_id` (`system_id`),
  CONSTRAINT `FK_SYSTEMNETWORKPORT_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDCOLLECTIONITEM` (`ID`),
  CONSTRAINT `FK_SYSTEMNETWORKPORT_system_id` FOREIGN KEY (`system_id`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEMNETWORKPORT`
--

LOCK TABLES `SYSTEMNETWORKPORT` WRITE;
/*!40000 ALTER TABLE `SYSTEMNETWORKPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEMNETWORKPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEMSYSTEM`
--

DROP TABLE IF EXISTS `SYSTEMSYSTEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEMSYSTEM` (
  `ID` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SYSTEMSYSTEM_system_id` (`system_id`),
  CONSTRAINT `FK_SYSTEMSYSTEM_system_id` FOREIGN KEY (`system_id`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_SYSTEMSYSTEM_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDCOLLECTIONITEM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEMSYSTEM`
--

LOCK TABLES `SYSTEMSYSTEM` WRITE;
/*!40000 ALTER TABLE `SYSTEMSYSTEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEMSYSTEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEMTEMPLATE`
--

DROP TABLE IF EXISTS `SYSTEMTEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEMTEMPLATE` (
  `ID` int(11) NOT NULL,
  `EVENTLOGTEMPLATE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SYSTEMTEMPLATE_EVENTLOGTEMPLATE_ID` (`EVENTLOGTEMPLATE_ID`),
  CONSTRAINT `FK_SYSTEMTEMPLATE_EVENTLOGTEMPLATE_ID` FOREIGN KEY (`EVENTLOGTEMPLATE_ID`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_SYSTEMTEMPLATE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDTEMPLATE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEMTEMPLATE`
--

LOCK TABLES `SYSTEMTEMPLATE` WRITE;
/*!40000 ALTER TABLE `SYSTEMTEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEMTEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEMVOLUME`
--

DROP TABLE IF EXISTS `SYSTEMVOLUME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEMVOLUME` (
  `ID` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SYSTEMVOLUME_system_id` (`system_id`),
  CONSTRAINT `FK_SYSTEMVOLUME_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDCOLLECTIONITEM` (`ID`),
  CONSTRAINT `FK_SYSTEMVOLUME_system_id` FOREIGN KEY (`system_id`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEMVOLUME`
--

LOCK TABLES `SYSTEMVOLUME` WRITE;
/*!40000 ALTER TABLE `SYSTEMVOLUME` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEMVOLUME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TENANT`
--

DROP TABLE IF EXISTS `TENANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TENANT` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TENANT`
--

LOCK TABLES `TENANT` WRITE;
/*!40000 ALTER TABLE `TENANT` DISABLE KEYS */;
INSERT INTO `TENANT` VALUES (1,NULL,NULL,'trial',NULL);
/*!40000 ALTER TABLE `TENANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tenant_PROPERTIES`
--

DROP TABLE IF EXISTS `Tenant_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tenant_PROPERTIES` (
  `Tenant_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `FK_Tenant_PROPERTIES_Tenant_ID` (`Tenant_ID`),
  CONSTRAINT `FK_Tenant_PROPERTIES_Tenant_ID` FOREIGN KEY (`Tenant_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tenant_PROPERTIES`
--

LOCK TABLES `Tenant_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `Tenant_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tenant_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `ROLE` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (0,NULL,NULL,NULL,NULL,'21232f297a57a5a743894a0e4a801fc3','sirocco-admin','admin'),(2,NULL,NULL,NULL,NULL,'084e0343a0486ff05530df6c705c8bb4','sirocco-user','guest');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_TENANT`
--

DROP TABLE IF EXISTS `Users_TENANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_TENANT` (
  `tenants_ID` int(11) NOT NULL,
  `users_ID` int(11) NOT NULL,
  PRIMARY KEY (`tenants_ID`,`users_ID`),
  KEY `FK_Users_TENANT_users_ID` (`users_ID`),
  CONSTRAINT `FK_Users_TENANT_tenants_ID` FOREIGN KEY (`tenants_ID`) REFERENCES `TENANT` (`ID`),
  CONSTRAINT `FK_Users_TENANT_users_ID` FOREIGN KEY (`users_ID`) REFERENCES `Users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_TENANT`
--

LOCK TABLES `Users_TENANT` WRITE;
/*!40000 ALTER TABLE `Users_TENANT` DISABLE KEYS */;
INSERT INTO `Users_TENANT` VALUES (1,2);
/*!40000 ALTER TABLE `Users_TENANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOLUME`
--

DROP TABLE IF EXISTS `VOLUME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOLUME` (
  `ID` int(11) NOT NULL,
  `BOOTABLE` tinyint(1) DEFAULT '0',
  `CAPACITY` int(11) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `CLOUDPROVIDERACCOUNT_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_VOLUME_LOCATION_ID` (`LOCATION_ID`),
  KEY `FK_VOLUME_CLOUDPROVIDERACCOUNT_ID` (`CLOUDPROVIDERACCOUNT_ID`),
  CONSTRAINT `FK_VOLUME_CLOUDPROVIDERACCOUNT_ID` FOREIGN KEY (`CLOUDPROVIDERACCOUNT_ID`) REFERENCES `CLOUDPROVIDERACCOUNT` (`ID`),
  CONSTRAINT `FK_VOLUME_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_VOLUME_LOCATION_ID` FOREIGN KEY (`LOCATION_ID`) REFERENCES `CLOUDPROVIDERLOCATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOLUME`
--

LOCK TABLES `VOLUME` WRITE;
/*!40000 ALTER TABLE `VOLUME` DISABLE KEYS */;
/*!40000 ALTER TABLE `VOLUME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOLUMECONFIGURATION`
--

DROP TABLE IF EXISTS `VOLUMECONFIGURATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOLUMECONFIGURATION` (
  `ID` int(11) NOT NULL,
  `CAPACITY` int(11) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `FORMAT` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `VISIBILITY` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_VOLUMECONFIGURATION_TENANT_ID` (`TENANT_ID`),
  CONSTRAINT `FK_VOLUMECONFIGURATION_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOLUMECONFIGURATION`
--

LOCK TABLES `VOLUMECONFIGURATION` WRITE;
/*!40000 ALTER TABLE `VOLUMECONFIGURATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `VOLUMECONFIGURATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOLUMEIMAGE`
--

DROP TABLE IF EXISTS `VOLUMEIMAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOLUMEIMAGE` (
  `ID` int(11) NOT NULL,
  `BOOTABLE` tinyint(1) DEFAULT '0',
  `IMAGELOCATION` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CLOUDPROVIDERACCOUNT_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_VOLUMEIMAGE_LOCATION_ID` (`LOCATION_ID`),
  KEY `FK_VOLUMEIMAGE_CLOUDPROVIDERACCOUNT_ID` (`CLOUDPROVIDERACCOUNT_ID`),
  CONSTRAINT `FK_VOLUMEIMAGE_CLOUDPROVIDERACCOUNT_ID` FOREIGN KEY (`CLOUDPROVIDERACCOUNT_ID`) REFERENCES `CLOUDPROVIDERACCOUNT` (`ID`),
  CONSTRAINT `FK_VOLUMEIMAGE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_VOLUMEIMAGE_LOCATION_ID` FOREIGN KEY (`LOCATION_ID`) REFERENCES `CLOUDPROVIDERLOCATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOLUMEIMAGE`
--

LOCK TABLES `VOLUMEIMAGE` WRITE;
/*!40000 ALTER TABLE `VOLUMEIMAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `VOLUMEIMAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOLUMETEMPLATE`
--

DROP TABLE IF EXISTS `VOLUMETEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOLUMETEMPLATE` (
  `ID` int(11) NOT NULL,
  `VOLUMECONFIG_ID` int(11) DEFAULT NULL,
  `VOLUMEIMAGE_ID` int(11) DEFAULT NULL,
  `EVENTLOGTEMPLATE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_VOLUMETEMPLATE_VOLUMEIMAGE_ID` (`VOLUMEIMAGE_ID`),
  KEY `FK_VOLUMETEMPLATE_EVENTLOGTEMPLATE_ID` (`EVENTLOGTEMPLATE_ID`),
  KEY `FK_VOLUMETEMPLATE_VOLUMECONFIG_ID` (`VOLUMECONFIG_ID`),
  CONSTRAINT `FK_VOLUMETEMPLATE_VOLUMECONFIG_ID` FOREIGN KEY (`VOLUMECONFIG_ID`) REFERENCES `VOLUMECONFIGURATION` (`ID`),
  CONSTRAINT `FK_VOLUMETEMPLATE_EVENTLOGTEMPLATE_ID` FOREIGN KEY (`EVENTLOGTEMPLATE_ID`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_VOLUMETEMPLATE_ID` FOREIGN KEY (`ID`) REFERENCES `CLOUDTEMPLATE` (`ID`),
  CONSTRAINT `FK_VOLUMETEMPLATE_VOLUMEIMAGE_ID` FOREIGN KEY (`VOLUMEIMAGE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOLUMETEMPLATE`
--

LOCK TABLES `VOLUMETEMPLATE` WRITE;
/*!40000 ALTER TABLE `VOLUMETEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `VOLUMETEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOLUMEVOLUMEIMAGE`
--

DROP TABLE IF EXISTS `VOLUMEVOLUMEIMAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOLUMEVOLUMEIMAGE` (
  `ID` int(11) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `DELETED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROVIDERASSIGNEDID` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `VOLUMEIMAGE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_VOLUMEVOLUMEIMAGE_TENANT_ID` (`TENANT_ID`),
  KEY `FK_VOLUMEVOLUMEIMAGE_VOLUMEIMAGE_ID` (`VOLUMEIMAGE_ID`),
  CONSTRAINT `FK_VOLUMEVOLUMEIMAGE_VOLUMEIMAGE_ID` FOREIGN KEY (`VOLUMEIMAGE_ID`) REFERENCES `CLOUDRESOURCE` (`ID`),
  CONSTRAINT `FK_VOLUMEVOLUMEIMAGE_TENANT_ID` FOREIGN KEY (`TENANT_ID`) REFERENCES `TENANT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOLUMEVOLUMEIMAGE`
--

LOCK TABLES `VOLUMEVOLUMEIMAGE` WRITE;
/*!40000 ALTER TABLE `VOLUMEVOLUMEIMAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `VOLUMEVOLUMEIMAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOLUME_VOLUMEVOLUMEIMAGE`
--

DROP TABLE IF EXISTS `VOLUME_VOLUMEVOLUMEIMAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOLUME_VOLUMEVOLUMEIMAGE` (
  `Volume_ID` int(11) NOT NULL,
  `images_ID` int(11) NOT NULL,
  PRIMARY KEY (`Volume_ID`,`images_ID`),
  KEY `FK_VOLUME_VOLUMEVOLUMEIMAGE_images_ID` (`images_ID`),
  CONSTRAINT `FK_VOLUME_VOLUMEVOLUMEIMAGE_images_ID` FOREIGN KEY (`images_ID`) REFERENCES `VOLUMEVOLUMEIMAGE` (`ID`),
  CONSTRAINT `FK_VOLUME_VOLUMEVOLUMEIMAGE_Volume_ID` FOREIGN KEY (`Volume_ID`) REFERENCES `CLOUDRESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOLUME_VOLUMEVOLUMEIMAGE`
--

LOCK TABLES `VOLUME_VOLUMEVOLUMEIMAGE` WRITE;
/*!40000 ALTER TABLE `VOLUME_VOLUMEVOLUMEIMAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `VOLUME_VOLUMEVOLUMEIMAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VolumeConfiguration_PROPERTIES`
--

DROP TABLE IF EXISTS `VolumeConfiguration_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VolumeConfiguration_PROPERTIES` (
  `VolumeConfiguration_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `VolumeConfigurationPROPERTIESVolumeConfigurationID` (`VolumeConfiguration_ID`),
  CONSTRAINT `VolumeConfigurationPROPERTIESVolumeConfigurationID` FOREIGN KEY (`VolumeConfiguration_ID`) REFERENCES `VOLUMECONFIGURATION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VolumeConfiguration_PROPERTIES`
--

LOCK TABLES `VolumeConfiguration_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `VolumeConfiguration_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `VolumeConfiguration_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VolumeVolumeImage_PROPERTIES`
--

DROP TABLE IF EXISTS `VolumeVolumeImage_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VolumeVolumeImage_PROPERTIES` (
  `VolumeVolumeImage_ID` int(11) DEFAULT NULL,
  `PROPERTIES` varchar(255) DEFAULT NULL,
  `PROPERTIES_KEY` varchar(255) DEFAULT NULL,
  KEY `VolumeVolumeImage_PROPERTIES_VolumeVolumeImage_ID` (`VolumeVolumeImage_ID`),
  CONSTRAINT `VolumeVolumeImage_PROPERTIES_VolumeVolumeImage_ID` FOREIGN KEY (`VolumeVolumeImage_ID`) REFERENCES `VOLUMEVOLUMEIMAGE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VolumeVolumeImage_PROPERTIES`
--

LOCK TABLES `VolumeVolumeImage_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `VolumeVolumeImage_PROPERTIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `VolumeVolumeImage_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-17 23:24:52
